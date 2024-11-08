<?php
namespace Admin\Controllers\Person;

use Admin\Controllers\Public\BaseAbstract;
use Models\Person\CulturalUser;

class PromoterController extends BaseAbstract
{
   
    protected $model = 'Models\Person\Promoter';
    protected $request = "Publics\Requests\PromoterRequest";
    protected $with = ["role","gender", "activeStatus","cityUser",'level',"education"];
    protected $showWith = ["role", "gender", "activeStatus","cityUser",'level',"education","culturalUsers"];
    protected $needles = ["Base\City","Base\Province","Base\Gender","Level","Education",'Base\Status'];
    protected $searchFilter = ["firstname", "lastname", "mobile", "codemeli"];
    protected $files = ["photo"];

    public function init()
    {
        $this->storeQuery = function ($query) {
            $query = $this->setOperator($query);
            
            $culturalUsers = [];
            $cusers = $this->getRepeatValues(['c_name', 'c_family', 'c_phone', 'c_gender_id', 'c_comments', 'c_job_position']);
            
            
            // پر کردن آرایه culturalUsers با داده‌های جدید
            foreach ($cusers as $value) {
                $culturalUsers[] = [
                    'name' => $value['c_name'] ?? null,
                    'family' => $value['c_family'] ?? null,
                    'phone' => $value['c_phone'] ?? null,
                    'job_position' => $value['c_job_position'] ?? null,
                    'gender_id' => $value['c_gender_id'] ?? null,
                    'comments' => $value['c_comments'] ?? null,
                    'promoter_id' => $query->id,
                ];
            }
        
            // اضافه کردن کاربران فرهنگی جدید
            if (!empty($culturalUsers)) {
                // ابتدا کاربران فرهنگی قدیمی مرتبط با این پروموتر را حذف می‌کنیم
                CulturalUser::where('promoter_id', $query->id)->forceDelete();
        
                CulturalUser::insert($culturalUsers);
            }
        };
        
        
        // $this->indexQuery = function ($query) {
            
        //     $query = $query->where('role_id',2);
        // };
    }
}