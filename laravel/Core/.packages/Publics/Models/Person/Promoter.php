<?php
namespace Models\Person;

use Models\User;

class Promoter extends User
{
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];

    protected $attributes = ['role_id' => 2];

    public static function boot()
    {
        parent::boot();

        static::deleting(function ($record) {
            $record->culturalUsers()->delete();
            $record->promotionInfos()->delete();
            
            $record->reports->each(function ($report) {
                $report->delete();
            });
            $record->agrees->each(function ($agree) {
                $agree->delete();
            });
            $record->supports()->delete();
            $record->notes()->delete();
            $record->notif()->delete();
        });
    }
    
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
        return $this->belongsToMany(\Models\Support::class,"support_users","promoter_id","support_id");
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
    public function notif()
    {
        return $this->hasMany(\Models\Notif::class, 'promoter_id');
    }
}
