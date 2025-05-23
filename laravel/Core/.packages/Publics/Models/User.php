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
use Morilog\Jalali\Jalalian;

class User extends Authenticatable implements MustVerifyEmail
{
    use Notifiable, HasApiTokens,HasFactory,Base;

    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $hidden  = ['updated_at', 'deleted_at','password'];
    protected $dates   = ['deleted_at','register_date'];
    protected $table   = 'users';
    const PERSONNEL = 1;
    const PROMOTER = 2;

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'is_not_citizen' => 'boolean',
        'deleted_at' => 'timestamp',
        'register_date' => 'timestamp',
    ];

    /**
     * Relationships
     */

    public function promotions()
    {
        return $this->hasMany(UserPromotion::class);
    }

    public function createNotes()
    {
        return $this->hasMany(Note::class, 'creator_id');
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
        return $this->belongsTo(Education::class);
    }

    public function cityUser()
    {
        return $this->belongsTo(\Models\Base\City::class, 'city_id');
    }

    public function role()
    {
        return $this->belongsTo(\Models\Person\Role::class);
    }

    public function gender()
    {
        return $this->belongsTo(\Models\Base\Gender::class);
    }

    public function level()
    {
        return $this->belongsTo(Level::class);
    }

    public function audienceTypes()
    {
        return $this->belongsToMany(AudienceType::class);
    }
    public function getCreatedAtAttribute($date)
    {
        return $date ? Jalalian::fromCarbon(new \Carbon\Carbon($date))->format('Y/m/d') : null;
    }
    public function getLastLoginAttribute($date)
    {
        return $date ? Jalalian::fromCarbon(new \Carbon\Carbon($date))->format('Y/m/d') : null;
    }
    /**
    * Get the blogs for the user The created.
    */
   public function createBlogs(): HasMany
   {
       return $this->hasMany(\Models\Content\Blog::class);
   }
    /**
    * Get the blogs for the user The edited.
    */
   public function editBlogs(): HasMany
   {
       return $this->hasMany(\Models\Content\Blog::class);
   }
    /**
     * Get the comments for the user The created.
     */
    public function createComments(): HasMany
    {
        return $this->hasMany(\Models\Content\BlogComment::class);
    }
    /**
     * Get the comments for the user The edited.
     */
    public function editComments(): HasMany
    {
        return $this->hasMany(\Models\Content\BlogComment::class);
    }
    /**
     * Get the comments for the user The check confirm.
     */
    public function confirmComments(): HasMany
    {
        return $this->hasMany(\Models\Content\BlogComment::class);
    }
    /**
     * The blogs that belong to the comments.
     */
    public function blogs(): BelongsToMany
    {
        return $this->belongsToMany(\Models\Content\Blog::class);
    }
}
