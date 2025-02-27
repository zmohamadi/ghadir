<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;
use Morilog\Jalali\Jalalian;

class Course extends Model
{
    use HasFactory,Base;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    public function audienceType()
    {
        return $this->belongsTo(AudienceType::class, 'audiencetype_id');
    }
    public function promotion()
    {
        return $this->belongsTo(Promotion::class,"promotion_id");
    }
    public function promoter()
    {
        return $this->belongsTo(\Models\Person\Promoter::class,"promoter_id");
    }
    public function province()
    {
        return $this->belongsTo(\Models\Base\Province::class,"province_id");
    }
    public function citySh()
    {
        return $this->belongsTo(\Models\Base\City::class,"city_id");
    }
    public function getCreatedAtAttribute($date)
    {
        return $date ? Jalalian::fromCarbon(new \Carbon\Carbon($date))->format('Y/m/d') : null;
    }
}
