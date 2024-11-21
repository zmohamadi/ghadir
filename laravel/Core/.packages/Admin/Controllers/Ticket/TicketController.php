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
    protected $files = ["photo"];
    protected $needles = ['Base\Status',"Ticket\TicketSubject"];

    public function init()
    {
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
        $this->indexQuery = function ($query) {
            if(request()->promoter)
            {
                $query->where('promoter_id', $this->user_id);
            };
        };
    }
}
