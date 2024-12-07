<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;
use Models\Course;
use Models\Tribune;
use Models\RitualReport;
use Models\Person\Promoter;

class PromotionAgreeController extends BaseAbstract
{
    protected $model = 'Models\PromotionAgree';
    protected $with = ["promotion","promoter"];
    protected $showWith = ["promotion","promoter"];
    protected $needles = ["Person\Promoter","Promotion"];


    public function init()
    {
        $this->indexQuery = function ($query) {
            // $query->when(request()->province != null, function ($q) {
            //     $q->where('province_id', request()->province);
            // });
            // $query->when(request()->city != null, function ($q) {
            //     $q->where('city_id', request()->city);
            // });
            $query->when(request()->promotion != null, function ($q) {
                $q->where('promotion_id', request()->promotion);
            });
            // $query->when(request()->promoter != null, function ($q) {
            //     $promoter = request()->promoter;
            //     $q->whereHas('promoter',function($q) use($promoter)
            //     {
            //         $q->where("firstname", 'like', "%$promoter%")->orWhere("lastname", 'like', "%$promoter%");
            //     });
            // });
            $query->when(request()->promoter != null, function ($q) {
                $q->where('promoter_id', request()->promoter);
            });
            $query->whereHas('promotion')->whereHas('promoter');
        };

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

            $promoterCount = $this->model::where('promoter_id', $this->user_id)->count();
            Promoter::where('id', $this->user_id)->update(['agree_count' => $promoterCount]);

        };
        
    }
}
