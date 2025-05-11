<?php

namespace Admin\Controllers\Ticket;

use Illuminate\Support\Facades\Validator;
use Admin\Controllers\Public\BaseAbstract;
use Admin\Controllers\Public\PublicController;
use Models\Ticket\TicketSubject;
use Models\Ticket\TicketItem;
use Models\Base\Status;
use Models\User;
use Admin\Events\CounterMenu\CounterTicket;

class TicketController extends BaseAbstract
{
     protected $model = 'Models\Ticket\Ticket';
    protected $request = 'Publics\Requests\Ticket\TicketRequest';
    protected $with = ["subject","replyStatus","priorityStatus","user"];
    protected $showWith = ["subject","replyStatus","priorityStatus"];
    protected $searchFilter = ['title'];

    public function init()
    {
        $this->indexQuery = function ($query) {
            $scop = request()->filter;
            $priority_status = request()->priorityStatus;
            $reply_status = request()->replyStatus;
            $subject = request()->subject;
            $userInfo = request()->userInfo;

            $query->$scop($this->user_id);
            if($priority_status) $query->where('priority_status_id', $priority_status);
            if($reply_status) $query->where('reply_status_id', $reply_status);
            if($subject) $query->where('subject_id', $subject);
            if($userInfo)
            {
                $query->whereHas('user',function($q) use($userInfo)
                {
                    $q->where("firstname", 'like', "%$userInfo%")->orWhere("lastname", 'like', "%$userInfo%");
                });
            }
        };
        $this->storeQuery = function ($query) {
            $query->user_id = $this->user_id;
            $query->reply_status_id = 0;
            $query->save();
            $items = [
                "user_id" => $this->user_id,
                "ticket_id" => $query->id,
                "text" => request()->text,
                "media" => request()->media,
            ];
            $query->ticketItems()->create($items);
            $updateCount = new PublicController();
            $updateCount->updateCountTicket();
            $updateCount->updateCountTicketAwaiting();
            // CounterTicket By EVENT
            event(new CounterTicket());
        };
    }
    /**
     * get Info of Ticket For View && get Data For Select
     */
    public function details($id)
    {
        $ticket = $this->model::with($this->showWith)->find($id);
        $user = User::with("gender")->select("id","gender_id","firstname","lastname","photo","mobile")->find($ticket->user_id);
        $ticketItems = TicketItem::with("user")->where("ticket_id", $id)->get();
        $replyStatus = Status::SelectInReply(request()->filter)->active()->get();
        $data = [
            "ticket" => $ticket,
            "user" => $user,
            "ticketItems" => $ticketItems,
            'replyStatus' => $replyStatus,
        ];
        return response()->json($data);
    }
    /**
     * get Data For List Items Of a Ticket By Send $id
     */
    public function listItems()
    {
        $items = TicketItem::where("ticket_id",request()->id)->with("user")->orderBy("id", "ASC");
        return $this->grid($items, "");
    }
    /**
     * post Info For Save Item Of Ticket
     */
    public function saveItem($id)
    {
		\DB::beginTransaction();
		try{
            $updateCount = new PublicController();
            $ticket_info = $this->model::find($id);
            $reply_status_id = request()->reply_status_id;
            $text = request()->text;
            $media = request()->media;
            if(request()->reply_status_id == null)
            {
                $validator = Validator::make(request()->all(), [
                    'text' => 'required_without:media',
                    'media' => 'required_without:text',
                ]);
                if ($validator->fails()) return response()->json(['errors'=>$validator->errors()], 422);
                
                $reply_status_id = 0;
                $updateCount->updateCountTicketAwaiting();
                if($this->role_id==1)
                {
                    $ticket_user = User::find($ticket_info["user_id"]);
                    $reply_status_id = 2;
                    $this->sendMessage($ticket_info["user_id"], "در سامانه غدیریه برای شما تیکت ارسال شده است.");
                    $updateCount->updateCountTicketAnswered();
                }
            }
            else
            {
                $updateCount->updateCountTicketChecking();
                $updateCount->updateCountTicketClosed();
            }
            if($text || $media)
            {
                $item = [
                    "user_id" => $this->user_id,
                    "ticket_id" => $id,
                    "text" => $text,
                    "media" => $media,
                ];
                TicketItem::create($item);
            }
            $ticket_info->update(["reply_status_id"=>$reply_status_id]);

            $updateCount = new PublicController();
            $updateCount->updateCountTicket();
            // CounterTicket By EVENT
            event(new CounterTicket());

            \DB::commit();
		}
		catch (\Exception $e) {
			\DB::rollBack();
			return response()->json($e->getMessage(), '501');
		}
    }
    /**
     * get Data For Select
     */
    public function getData()
    {
        $subject = TicketSubject::active()->get();
        $statuses = Status::FilterGroup([19,24])->active()->get();
        $data = [
            'subject' => $subject,
            'statuses' => $statuses,
        ];
        return \response()->json($data);
    }
    /**
     * put Data For Save Evaluate
     */
    public function saveEvaluate($id)
    {
		\DB::beginTransaction();
		try{
            $this->model::find($id)->update(["score" => request()->score]);

            \DB::commit();
		}
		catch (\Exception $e) {
			\DB::rollBack();
			return response()->json($e->getMessage(), '501');
		}
    }
}
