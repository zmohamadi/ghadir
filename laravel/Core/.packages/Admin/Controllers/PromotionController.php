<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;

class PromotionController extends BaseAbstract
{
     protected $model = 'Models\Promotion';
    protected $request = 'Publics\Requests\PromotionRequest';
    protected $searchFilter = ['title'];
    protected $with = ["activeStatus","creator","editor","registerStatus","reportStatus"];
    protected $needles = ['Base\Status',"Ritual"];
    protected $files = ["photo"];

    public function init()
    {
        $this->storeQuery = function ($query) {
            $query = $this->setOperator($query);
        };
    }
}
