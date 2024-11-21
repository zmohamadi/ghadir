<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;
use Morilog\Jalali\Jalalian;

class Note extends Model
{
    use HasFactory,Base;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $table   = 'user_notes';

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'deleted_at' => 'timestamp','created_at' => 'datetime','updated_at' => 'datetime',
    ];
    public function getCreatedAtAttribute($date)
    {
        return $date ? Jalalian::fromCarbon(new \Carbon\Carbon($date))->format('Y/m/d') : null;
    }
}
