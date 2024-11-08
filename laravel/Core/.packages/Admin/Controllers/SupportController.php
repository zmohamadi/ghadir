<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;

class SupportController extends BaseAbstract
{
    protected $model = 'Models\Support';
    protected $request = 'Publics\Requests\SupportRequest';
    protected $searchFilter = ['title'];
    protected $with = ["activeStatus","creator","editor",'type',"promotion"];
    protected $showWith = ["activeStatus","creator","editor",'type',"promoters","promotion"];
    // protected $files = ["photo"];
    protected $needles = ["Base\Status","Promotion","SupportType","Person\Promoter"];

    public function init()
    {
        $this->storeQuery = function ($query) {
            $query = $this->setOperator($query);
            
            $promoters = request()->promoters;
            // dd($promoters);

            $data = $this->model::find($query->id);

            if (!empty($promoters)) {
                $data->promoters()->detach();
                $data->promoters()->sync($promoters);
            }
        };
    }
}
