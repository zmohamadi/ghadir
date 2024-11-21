<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;
use Models\Course;
use Models\Tribune;
use Models\RitualReport;

class PromotionAgreeController extends BaseAbstract
{
    protected $model = 'Models\PromotionAgree';
    // protected $request = 'Publics\Requests\PromotionReportRequest';
    // protected $searchFilter = ['title'];
    // protected $with = ["promotion"];
    // protected $showWith = ["promotion","tribunes","courses","ritualReports"];
    // protected $files = ["photo"];
    // protected $needles = ['Base\Status',"Ritual","Base\City", "Base\Province","Promotion","AudienceType"];


    public function init()
    {
        // $this->indexQuery = function ($query) {
        //     $query->where('promoter_id', $this->user_id);
        // };

        $this->storeQuery = function ($query) {
            $promotion_id = request()->promotion_id;

            // حذف رکوردهای قبلی مرتبط با promotion_id و promoter_id
            $this->model::where([
                "promotion_id" => $promotion_id,
                "promoter_id" => $this->user_id
            ])->forceDelete();
        
            // تنظیم مقادیر جدید و ذخیره آن‌ها
            $query->fill([
                'has_course'   => request()->agree_has_course,
                'has_tribune'  => request()->agree_has_tribune,
                'promotion_id' => $promotion_id,
                'promoter_id'  => $this->user_id,
            ])->save();
        
            // دریافت مقادیر rituals از درخواست
            $rituals = request()->agree_ritual;

            // اگر داده‌ها به صورت رشته JSON باشند، آن‌ها را به آرایه تبدیل کن
            $rituals = is_string($rituals) ? json_decode($rituals, true) : $rituals;

            // اطمینان از آرایه بودن rituals
            if (!is_array($rituals)) {
                $rituals = [];
            }

            // حذف رکوردهای قبلی مرتبط با promotion_id و promoter_id
            \DB::table('promotion_agree_item')->where([
                "promotion_id" => $promotion_id,
                "promoter_id" => $this->user_id,
            ])->delete();

            // آماده‌سازی داده‌های جدید برای درج
            $items = [];
            foreach ($rituals as $value) {
                $items[] = [
                    'promotion_id' => $promotion_id,
                    'promoter_id'  => $this->user_id,
                    'ritual_id'    => $value,
                    'agree_id'     => $query->id,
                ];
            }

            // درج داده‌های جدید
            if (!empty($items)) {
                \DB::table('promotion_agree_item')->insert($items);
            }
            $promotionCount = $this->model::where('promotion_id', $promotion_id)->count();
            $update = \Models\Promotion::where('id', $promotion_id)->update(['user_count' => $promotionCount]);

        };
        
    }
}
