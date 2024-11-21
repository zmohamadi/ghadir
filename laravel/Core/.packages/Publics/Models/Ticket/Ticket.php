<?php

namespace Models\Ticket;

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

    public function replyStatus()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'status_reply', 'code')->where('group_id', 21);
    }
    public function ticketStatus()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'status_ticket', 'code')->where('group_id', 18);
    }

    public function promoter()
    {
        return $this->belongsTo(\Models\Person\Promoter::class, 'promoter_id');
    }

    // public function userScore()
    // {
    //     return $this->belongsTo(\Models\User::class, 'user_score_id');
    // }

    public function subject()
    {
        return $this->belongsTo(\Models\Ticket\TicketSubject::class);
    }
}
