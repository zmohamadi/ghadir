<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;

class NotifController extends BaseAbstract
{
    protected $model = 'Models\Notif';
    // protected $request = 'Publics\Requests\NotifRequest';
    protected $searchFilter = ['title'];
    protected $with = ["activeStatus","creator","editor"];

    public function init()
    {
        $this->storeQuery = function ($query) {
            $query = $this->setOperator($query);
        };
        $this->indexQuery = function ($query) {
            $promoter = request()->promoter;
            // dd($promoter);
            $query->where('promoter_id',$promoter);
        };
    }
}
