<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;

class SupportController extends BaseAbstract
{
    protected $model = 'Models\Support';
    protected $request = 'Publics\Requests\SupportRequest';
    protected $searchFilter = ['title'];
    protected $with = ["activeStatus","creator","editor",'type'];
    // protected $files = ["photo"];
    protected $needles = ["Base\Status","Promotion","SupportType"];

    public function init()
    {
        $this->storeQuery = function ($query) {
            $query = $this->setOperator($query);
        };
    }
}
