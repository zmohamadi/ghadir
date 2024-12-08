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
        $this->showQuery = function ($query) {
            $promotion_id = $this->getIdFromUrl();
            $user = $this->user_id;
            $role = $this->role_id;
            
            if($role==1){
                $query->with(['agrees.promoter','agrees.rituals']);
            }else{

                // بارگذاری agrees و rituals با استفاده از فیلترها
                $query->with(['agrees' => function ($q) use ($user,$promotion_id) {
                    $q->where('promoter_id', $user)
                      ->where('promotion_id', $promotion_id);
                    
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
            $query->when(request()->register_status != null, function ($q) {
                $q->where('register_status', request()->register_status);
            });
        
            $query->when(request()->report_status != null, function ($q) {
                $q->where('report_status', request()->report_status);
            });
            // $query->when(request()->promoter != null, function ($q) {
            //     $promoter = request()->promoter;
            //     $q->whereHas('agreePromoters',function($q) use($promoter)
            //     {
            //         $q->where("firstname", 'like', "%$promoter%")->orWhere("lastname", 'like', "%$promoter%");
            //     });
            // });
            // $query->when(request()->promoter, function ($q) {
            //     $q->whereHas('agreePromoters', function ($subQuery) {
            //         $subQuery->where('promoter_id', request()->promoter);
            //     });
            // });
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
