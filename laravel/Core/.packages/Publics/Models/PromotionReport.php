<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Models\Traits\Base;
use Morilog\Jalali\Jalalian;

class PromotionReport extends Model
{
    use HasFactory, SoftDeletes;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'deleted_at' => 'timestamp','created_at' => 'datetime',

    ];
    public static function boot()
    {
        parent::boot();

        static::deleting(function ($record) {
            $record->ritualReports()->delete();
            $record->tribunes()->delete();
            $record->courses()->delete();
        });
    }

    /**
     * Relationships
     */

    public function ritualReports()
    {
        return $this->hasMany(RitualReport::class);
    }

    public function tribunes()
    {
        return $this->hasMany(Tribune::class);
    }

    public function courses()
    {
        return $this->hasMany(Course::class);
    }

    public function promotion()
    {
        return $this->belongsTo(Promotion::class);
    }
    public function promoter()
    {
        return $this->belongsTo(\Models\User::class);
    }
    public function confirmRepo()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'confirm_id', 'code')->where('group_id', 28);
    }
    public function level()
    {
        return $this->belongsTo(Level::class);
    }
    public function getCreatedAtAttribute($date)
    {
        return $date ? Jalalian::fromCarbon(new \Carbon\Carbon($date))->format('Y/m/d') : null;
    }
}
