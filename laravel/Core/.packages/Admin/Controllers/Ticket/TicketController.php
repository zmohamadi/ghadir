<?php

namespace Admin\Controllers\Ticket;

use Admin\Controllers\Public\BaseAbstract;
use Models\Ticket\TicketSubject;
use Models\Ticket\TicketItem;
use Models\Base\Status;

class TicketController extends BaseAbstract
{
     protected $model = 'Models\Ticket\Ticket';
    protected $request = 'Publics\Requests\Ticket\TicketRequest';
    protected $with = ["subject","replyStatus","priorityStatus","user"];
    protected $searchFilter = ['title'];

    public function init()
    {
        $this->indexQuery = function ($query) {
            $scop = request()->filter;
            $query->$scop($this->user_id);
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
        };
    }
    /**
     * get Info of Ticket For View && get Data For Select
     */
    public function details($id)
    {
        $ticket = $this->model::with($this->with)->find($id);
        $ticketItems = TicketItem::with("user")->where("ticket_id", $id)->get();
        $replyStatus = Status::SelectInReply(request()->filter)->active()->get();
        $data = [
            "ticket" => $ticket,
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
        $items = TicketItem::where("ticket_id",request()->id)->with("user");
        return $this->grid($items, "");
    }
    /**
     * post Info For Save Item Of Ticket
     */
    public function saveItem($id)
    {
		\DB::beginTransaction();
		try{
            $reply_status_id = request()->reply_status_id;
            $text = request()->text;
            $media = request()->media;
            if(request()->reply_status_id == null)
            {
                request()->validate([
                    'text' => 'required_without:media',
                    'media' => 'required_without:text',
                ]);
                $reply_status_id = 2;
            }
            if($text || $media)
            {
                $item = [
                    "user_id" => $this->user_id,
                    "ticket_id" => $id,
                    "reply_status_id" => $reply_status_id,
                    "text" => $text,
                    "media" => $media,
                ];
                TicketItem::create($item);
            }
            $this->model::find($id)->update(["reply_status_id"=>$reply_status_id]);

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
        $priorityStatus = Status::FilterGroup(24)->active()->get();
        $data = [
            'subject' => $subject,
            'priorityStatus' => $priorityStatus,
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
