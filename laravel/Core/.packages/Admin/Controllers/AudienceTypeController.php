<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;

class AudienceTypeController extends BaseAbstract
{
     protected $model = 'Models\AudienceType';
    protected $request = 'Publics\Requests\AudienceTypeRequest';
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