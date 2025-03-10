<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;

class SupportTypeController extends BaseAbstract
{
     protected $model = 'Models\ SupportType';
    protected $request = 'Publics\Requests\ SupportTypeRequest';
    protected $searchFilter = ['title'];
    protected $with = ["activeStatus","creator","editor"];
    protected $files = ["photo"];

    public function init()
    {
        $this->storeQuery = function ($query) {
            $query = $this->setOperator($query);
        };
    }
}
