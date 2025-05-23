<?php

namespace Models;

use Illuminate\Database\Eloquent\Model;
use Morilog\Jalali\Jalalian;

class PromotionAgree extends Model
{
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $table = "promotion_agree";
    protected $casts = [
        'deleted_at' => 'timestamp','created_at' => 'datetime',

    ];
    public static function boot()
    {
        parent::boot();
        static::deleting(function ($record) {
            $record->rituals()->detach();
        });
    }
    public function rituals()
    {
        return $this->belongsToMany(\Models\Ritual::class,"promotion_agree_item",'agree_id',"ritual_id");
    }
    public function promotion()
    {
        return $this->belongsTo(Promotion::class, 'promotion_id');
    }
    public function promoter()
    {
        return $this->belongsTo(\Models\Person\Promoter::class, 'promoter_id');
    }
    public function getCreatedAtAttribute($date)
    {
        return $date ? Jalalian::fromCarbon(new \Carbon\Carbon($date))->format('Y/m/d') : null;
    }

   
}
