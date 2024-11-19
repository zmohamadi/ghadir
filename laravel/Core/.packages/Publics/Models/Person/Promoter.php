<?php
namespace Models\Person;

use Models\User;

class Promoter extends User
{
    protected $attributes = ['role_id' => 2];
    public function newQuery($excludeDeleted = true)
    {
        $c =  parent::newQuery($excludeDeleted);
        return $c->where(function($q){
                $q->where($this->table.'.role_id',2);
            });
    }

    public function culturalUsers()
    {
        return $this->hasMany(CulturalUser::class);
    }
    public function promotionInfos()
    {
        return $this->hasMany(\Models\UserPromotion::class);
    }
    public function reports()
    {
        return $this->hasMany(\Models\PromotionReport::class);
    }
    public function supports()
    {
        return $this->belongsToMany(\Models\Support::class,"support_users","support_id","promoter_id");
    }
    public function agrees()
    {
        return $this->hasMany(\Models\PromotionAgree::class, 'promoter_id');
    }
    public function agreePromotions()
    {
        return $this->belongsToMany(\Models\Promotions::class, 'promotion_agree', 'promoter_id', 'promotion_id')
            ->select(['users.id']) // فقط ستون id از مدل Promoter انتخاب شود
            ->withPivot(['has_course', 'has_tribune']) // انتخاب فیلدهای جدول میانی
            ;
    }
    public function notes()
    {
        return $this->hasMany(\Models\Note::class, 'promoter_id');
    }
}
