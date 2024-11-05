<?php
namespace Admin\Controllers\Person;

use Admin\Controllers\Public\BaseAbstract;

class PromoterController extends BaseAbstract
{
   
    protected $model = 'Models\Person\Promoter';
    protected $request = "Publics\Requests\PromoterRequest";
    protected $with = ["role","gender", "activeStatus","cityUser",'level',"education"];
    protected $showWith = ["role", "gender", "activeStatus","cityUser",'level',"education"];
    protected $needles = ["Base\City","Base\Province","Base\Gender","Level","Education",'Base\Status'];
    protected $searchFilter = ["firstname", "lastname", "mobile", "codemeli"];
    protected $files = ["photo"];

    public function init()
    {
        $this->storeQuery = function ($query) {
            $query = $this->setOperator($query);
        };
        // $this->indexQuery = function ($query) {
            
        //     $query = $query->where('role_id',2);
        // };
    }
}