<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Models\Traits\Base;

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
        'deleted_at' => 'timestamp',
    ];

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
}
