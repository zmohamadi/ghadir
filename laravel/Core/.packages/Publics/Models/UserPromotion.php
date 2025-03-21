<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;

class UserPromotion extends Model
{
    use HasFactory,Base;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'deleted_at' => 'timestamp',
    ];

    public function position()
    {
        return $this->blongsTo(\Models\PromotionPosition::class);
    }
    public function city()
    {
        return $this->belongsTo(\Models\Base\City::class, 'city_id');
    }
}
