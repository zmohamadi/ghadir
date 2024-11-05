<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;

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
        'deleted_at' => 'timestamp',
    ];

    public function registerStatus()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'status_id', 'code')->where('group_id', 11);
    }
    public function reportStatus()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'status_id', 'code')->where('group_id', 8);
    }
}
