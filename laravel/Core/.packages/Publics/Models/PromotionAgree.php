<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Models\Traits\Base;

class PromotionAgree extends Model
{
    use HasFactory, Base;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $casts = [
        'deleted_at' => 'timestamp',
    ];

   
}
