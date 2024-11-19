<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;
use Morilog\Jalali\Jalalian;
class Promotion extends Model
{
    use HasFactory,Base;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'deleted_at' => 'timestamp','created_at' => 'datetime','updated_at' => 'datetime',
    ];

    public function activeRegister()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'status_id', 'code')
            ->where('group_id', 11);
    }
    public function activeReport()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'status_id', 'code')->where('group_id', 8);
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
            ->withPivot(['has_course', 'has_tribune']) // انتخاب فیلدهای جدول میانی
            ;
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
