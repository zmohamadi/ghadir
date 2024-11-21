<?php

namespace Admin\Controllers\Ticket;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;

class TicketSubjectController extends BaseAbstract
{
     protected $model = 'Models\Ticket\TicketSubject';
    protected $request = 'Publics\Requests\Ticket\TicketSubjectRequest';
    protected $searchFilter = ['title'];
    protected $with = ["activeStatus","creator","editor"];
    protected $files = ["photo"];

    public function init()
    {
        $this->storeQuery = function ($query) {
           
        };
    }
}
