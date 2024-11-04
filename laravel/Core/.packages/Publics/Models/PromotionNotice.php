<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;

class PromotionNotice extends Model
{
    use HasFactor,Basey;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'register_status' => 'boolean',
        'report_status' => 'boolean',
        'has_course' => 'boolean',
        'has_tribune' => 'boolean',
        'deleted_at' => 'timestamp',
    ];
}
