<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Models\Traits\Base;

class Ticket extends Model
{
    use HasFactory, SoftDeletes;
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

    public function userReplies()
    {
        return $this->belongsToMany(User::class, 'ticket_user_replies');
    }

    public function userCreate()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function userScore()
    {
        return $this->belongsTo(User::class, 'user_score_id');
    }

    public function subject()
    {
        return $this->belongsTo(TicketSubject::class);
    }
}
