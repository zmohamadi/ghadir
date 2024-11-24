<?php

namespace Admin\Controllers\Ticket;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;

class TicketController extends BaseAbstract
{
     protected $model = 'Models\Ticket\Ticket';
    protected $request = 'Publics\Requests\Ticket\TicketRequest';
    protected $searchFilter = ['title'];
    protected $with = ["subject","replyStatus","ticketStatus","promoter"];
    protected $files = ["files"];
    // protected $needles = ['Base\Status',"Ticket\TicketSubject"];

    public function init()
    {
        $this->indexQuery = function ($query) {
            // dd(request()->promoter);
            $query->ParentTicket();
            if(request()->promoter)
            {
                $query->where('user_id', $this->user_id);
            };
        };
        $this->storeQuery = function ($query) {
            // dd(request()->panel);
            if(request()->panel=="promoter"){

                $query->promoter_id = $this->user_id;
            }
            if(request()->reply){

                $query->reply_creator = $this->user_id;
            }
            $query->save();
        };
    }
    public function getData()
    {
        $subject = \Models\Ticket\TicketSubject::active()->get();
        $replyStatus = \Models\Base\Status::FilterGroup(18)->active()->get();
        $priorityStatus = \Models\Base\Status::FilterGroup(23)->active()->get();
        $data = [
            'subject' => $subject,
            'replyStatus' => $replyStatus,
            'priorityStatus' => $priorityStatus,
        ];
        return \response()->json($data);
    }
}
