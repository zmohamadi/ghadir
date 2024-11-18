<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;

class PromotionController extends BaseAbstract
{
    protected $model = 'Models\Promotion';
    protected $request = 'Publics\Requests\PromotionRequest';
    protected $searchFilter = ['title'];
    protected $with = ["activeStatus","creator","editor","activeRegister","activeReport"];
    protected $showWith = ["activeStatus","creator","editor","activeRegister","activeReport","agrees","supports.type","reports","rituals"];
    protected $needles = ['Base\Status',"Ritual"];
    protected $files = ["photo"];

    public function init()
    {
        $this->indexQuery = function ($query) {
            if(request()->register_status)
            {
                $register_status = request()->register_status;

                $query->where('register_status', $register_status);
            };
            if(request()->promoter)
            {
                $promoter = request()->promoter;

                $query->whereHas('promoters', function ($q) use ($promoter) {
                   $q->where('promoter_id', $promoter);
                });
            };
        };
        $this->storeQuery = function ($query) {
            $query = $this->setOperator($query);
        };
    }
}
