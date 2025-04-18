<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;

class Ritual extends Model
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

    public function promotions()
    {
        return $this->belongsToMany(Promotion::class, 'promotion_ritual','ritual_id', 'promotion_id');
    }
    public function reports()
    {
        return $this->hasMany(RitualReport::class,"ritual_id");
    }
}
