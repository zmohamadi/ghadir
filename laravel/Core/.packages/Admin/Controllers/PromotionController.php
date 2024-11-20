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
    protected $showWith = ["activeStatus","creator","editor","activeRegister","activeReport",
    "supports.type","rituals"];
    protected $needles = ['Base\Status',"Ritual"];
    protected $files = ["photo"];

    public function init()
    {
        $this->showQuery = function ($query,$before) {
            // dd($before);
            if ($before==false) { 
                dd($query->id);
                $promotion_id = $query->id;
            }
            $user = $this->user_id;
            $role = $this->role_id;
            
            if($role==1){
                $query->with(['agrees.promoter','agrees.rituals']);
            }else{

                // بارگذاری agrees و rituals با استفاده از فیلترها
                $query->with(['agrees' => function ($q) use ($user,$promotion_id) {
                    $q->where('promoter_id', $user)
                      ->where('promotion_id', $promoter_id);
                    
                    // بارگذاری rituals برای هر agree
                    $q->with(['rituals' => function ($q) use ($user,$promotion_id) {
                        $q->where('promoter_id', $user)
                          ->where('promotion_id', $promotion_id);
                    }]);
                }]);
            }
            if($role==1){
                $query->with(['reports.promoter']);
            }else{

                $query->with(['reports' => function ($q) use ($user,$promotion_id) {
                    $q->where('promoter_id', $user)
                      ->where('promotion_id', $promotion_id);
                }]);
            }
        };
        
        $this->indexQuery = function ($query) {
            if(request()->register_status)
            {
                $register_status = request()->register_status;

                $query->where('register_status', $register_status);
            };
            if(request()->promoter)
            {
                // dd(request()->promoter);

                $promoter = request()->promoter;

                $query->whereHas('agreePromoters', function ($q) use ($promoter) {
                   $q->where('promoter_id', $promoter);
                });
            };
        };
        $this->storeQuery = function ($query) {
            $query = $this->setOperator($query);
        
            // دریافت مقادیر rituals از درخواست
            $rituals = request()->ritual;
        
            // اطمینان از اینکه rituals به درستی به آرایه تبدیل می‌شود
            if (is_string($rituals)) {
                // تبدیل رشته JSON مانند "[1,2]" به آرایه
                $rituals = json_decode($rituals, true);
            }
        
            // بررسی صحت داده‌ها
            if (is_array($rituals)) {
                // ثبت داده‌ها در رابطه
                $query->rituals()->sync($rituals);
            }
        };
        
        
    }
}
