<?php

namespace Admin\Controllers\Ticket;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;

class TicketSubjectController extends BaseAbstract
{
     protected $model = 'Models\Ticket\TicketSubject';
    protected $request = 'Publics\Requests\Ticket\TicketSubjectRequest';
    protected $with = ["activeStatus","creator","editor"];
    protected $showWith = ["activeStatus","creator","editor"];
    protected $searchFilter = ['title_fa'];

    public function init()
    {
        $this->storeQuery = function ($query)
        {
            $query = $this->setOperator($query);
            $query->save();
        };
    }
}
