<?php

namespace Models;

use Illuminate\Database\Eloquent\Model;

class PromotionAgree extends Model
{
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $table = "promotion_agree";

    public function rituals()
    {
        return $this->belongsToMany(\Models\Ritual::class,"promotion_agree_item",'agree_id',"ritual_id");
    }
    public function promotion()
    {
        return $this->belongsTo(Promotion::class, 'promotion_id');
    }
   
}
