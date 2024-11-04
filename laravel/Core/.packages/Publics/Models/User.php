<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\CanResetPassword;
use Laravel\Sanctum\HasApiTokens;
use Models\Traits\Base;

class User extends Authenticatable implements MustVerifyEmail
{
    use Notifiable, HasApiTokens,HasFactory,Base;

    /**
     * The attributes that aren't mass assignable.
     *
     * @var array
     */
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $hidden  = ['created_at', 'updated_at', 'deleted_at','password'];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'is_not_citizen' => 'boolean',
        'last_login' => 'datetime',
        'deleted_at' => 'timestamp',
    ];

    /**
     * Relationships
     */

    public function promotions()
    {
        return $this->hasMany(UserPromotion::class);
    }

    public function culturalUser()
    {
        return $this->hasOne(CulturalUser::class);
    }

    public function createNotes()
    {
        return $this->hasMany(Note::class, 'created_by');
    }

    public function abouteNotes()
    {
        return $this->hasMany(Note::class, 'about_user_id');
    }

    public function promotionReports()
    {
        return $this->hasMany(PromotionReport::class);
    }

    public function createTickets()
    {
        return $this->hasMany(Ticket::class, 'creator_id');
    }

    public function scoreTickets()
    {
        return $this->hasMany(Ticket::class, 'scorer_id');
    }

    public function repliesTickets()
    {
        return $this->belongsToMany(Ticket::class, 'ticket_replies');
    }

    public function supports()
    {
        return $this->belongsToMany(Support::class, 'support_user');
    }

    public function education()
    {
        return $this->belongsTo(EducationalBase::class);
    }

    public function cityUser()
    {
        return $this->belongsTo(City::class, 'city_id');
    }

    public function role()
    {
        return $this->belongsTo(Role::class);
    }

    public function status()
    {
        return $this->belongsTo(Status::class);
    }

    public function gender()
    {
        return $this->belongsTo(Gender::class);
    }

    public function level()
    {
        return $this->belongsTo(Level::class);
    }

    public function promotionNotices()
    {
        return $this->belongsToMany(PromotionNotice::class);
    }

    public function audienceTypes()
    {
        return $this->belongsToMany(AudienceType::class);
    }
}
