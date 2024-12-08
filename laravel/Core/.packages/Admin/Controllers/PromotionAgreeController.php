<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Admin\Controllers\Public\BaseAbstract;
use Models\Course;
use Models\Tribune;
use Models\RitualReport;
use Models\Person\Promoter;

class PromotionAgreeController extends BaseAbstract
{
    protected $model = 'Models\PromotionAgree';
    // protected $request = 'Publics\Requests\PromotionAgreeRequest';
    protected $with = ["promotion", "promoter"];
    protected $showWith = ["promotion", "promoter"];
    protected $needles = ["Person\Promoter", "Promotion"];

    public function init()
    {
        $this->indexQuery = function ($query) {
            $query->when(request('promotion') != null, function ($q) {
                $q->where('promotion_id', request('promotion'));
            });

            $query->when(request('promoter') != null, function ($q) {
                $q->where('promoter_id', request('promoter'));
            });

            $query->whereHas('promotion')->whereHas('promoter');
        };

        $this->storeQuery = function ($query) {
            $request = request();

            $promotionId = $request->input('promotion_id');
            $promoterId = $this->user_id;

            // حذف رکوردهای قبلی مرتبط
            $this->model::where([
                "promotion_id" => $promotionId,
                "promoter_id" => $promoterId,
            ])->forceDelete();

            // تنظیم مقادیر جدید و ذخیره آن‌ها
            $query->fill([
                'has_course' => $request->input('agree_has_course'),
                'has_tribune' => $request->input('agree_has_tribune'),
                'promotion_id' => $promotionId,
                'promoter_id' => $promoterId,
            ])->save();

            // مدیریت آرایه `agree_ritual`
            $rituals = $request->input('agree_ritual', []);
            $rituals = is_string($rituals) ? json_decode($rituals, true) : $rituals;
            $rituals = is_array($rituals) ? $rituals : [];

            // حذف رکوردهای قبلی مرتبط با `promotion_agree_item`
            \DB::table('promotion_agree_item')->where([
                "promotion_id" => $promotionId,
                "promoter_id" => $promoterId,
            ])->delete();

            // درج داده‌های جدید برای `promotion_agree_item`
            $items = array_map(function ($value) use ($promotionId, $promoterId, $query) {
                return [
                    'promotion_id' => $promotionId,
                    'promoter_id' => $promoterId,
                    'ritual_id' => $value,
                    'agree_id' => $query->id,
                ];
            }, $rituals);

            if (!empty($items)) {
                \DB::table('promotion_agree_item')->insert($items);
            }

            // به‌روزرسانی تعداد کاربران مرتبط با `promotion`
            $promotionCount = $this->model::where('promotion_id', $promotionId)->count();
            \Models\Promotion::where('id', $promotionId)->update(['user_count' => $promotionCount]);

            // به‌روزرسانی تعداد توافق‌های مرتبط با `promoter`
            $promoterCount = $this->model::where('promoter_id', $promoterId)->count();
            Promoter::where('id', $promoterId)->update(['agree_count' => $promoterCount]);
        };
    }
}
