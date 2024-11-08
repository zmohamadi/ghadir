<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Models\Traits\Base;

class Support extends Model
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

    /**
     * Relationships
     */

    
    public function promoters()
    {
        return $this->belongsToMany(\Models\Person\Promoter::class,"support_users","promoter_id","support_id");
    }


    public function type()
    {
        return $this->belongsTo(SupportType::class,'type_id');
    }

    public function promotion()
    {
        return $this->belongsTo(Promotion::class,"promotion_id");
    }
}
