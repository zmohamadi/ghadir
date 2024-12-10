<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;
use Morilog\Jalali\Jalalian;

class Promotion extends Model
{
    use HasFactory, Base;

    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];

    public static function boot()
    {
        parent::boot();

        static::deleting(function ($promotion) {
            \DB::transaction(function () use ($promotion) {
                // حذف گزارش‌ها و اجرای boot مدل PromotionReport
                $promotion->reports->each(function ($report) {
                    $report->delete();
                });

                // حذف موافقت‌ها (Agrees)
                $promotion->agrees->each(function ($agree) {
                    $agree->delete();
                });

                // حذف آیین‌ها (Rituals)
                $promotion->rituals()->detach();
            });
        });
    }


    public function activeRegister()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'register_status', 'code')->where('group_id', 11);
    }

    public function activeReport()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'report_status', 'code')->where('group_id', 8);
    }

    public function supports()
    {
        return $this->hasMany(Support::class, 'promotion_id');
    }

    public function reports()
    {
        return $this->hasMany(PromotionReport::class, 'promotion_id');
    }

    public function agrees()
    {
        return $this->hasMany(PromotionAgree::class, 'promotion_id');
    }

    public function agreePromoters()
    {
        return $this->belongsToMany(\Models\Person\Promoter::class, 'promotion_agree', 'promotion_id', 'promoter_id')
            ->select(['users.id']) // فقط ستون id از مدل Promoter انتخاب شود
            ->withPivot(['has_course', 'has_tribune']); // انتخاب فیلدهای جدول میانی
    }

    public function rituals()
    {
        return $this->belongsToMany(Ritual::class, 'promotion_ritual', 'promotion_id', 'ritual_id');
    }

    public function getCreatedAtAttribute($date)
    {
        return $date ? Jalalian::fromCarbon(new \Carbon\Carbon($date))->format('Y/m/d') : null;
    }
}
