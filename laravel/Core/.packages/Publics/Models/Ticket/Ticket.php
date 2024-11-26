<?php

namespace Models\Ticket;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Models\Traits\Base;

class Ticket extends Model
{
    use HasFactory, SoftDeletes;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $table = 'tickets';

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'created_at' => 'datetime:d-m-Y H:i',
        'deleted_at' => 'timestamp',
    ];

    protected static function booted(): void
    {
        static::deleting(function(Ticket $ticket) { // before delete() method call this 
            $ticket->ticketItems()->delete();
        });
    }
    /**
     * Relationships
     */
    public function ticketItems(): HasMany //  هر تیکت می تواند چند پاسخ را در گروه خود داشته باشد
    {
        return $this->hasMany(TicketItem::class, "ticket_id");
    }
    public function user(): belongsTo
    {
        return $this->belongsTo(\Models\User::class);
    }
    public function userScore(): belongsTo
    {
        return $this->belongsTo(\Models\User::class);
    }
    public function subject(): belongsTo
    {
        return $this->belongsTo(TicketSubject::class);
    }
    public function replyStatus()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'reply_status_id', 'code')->where('group_id', 19);
    }
    public function priorityStatus()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'priority_status_id', 'code')->where('group_id', 24);
    }
    /**
     * Get the creatorUser the blog.
     */
    // function creator Is In Base Traits
    /**
     * Get the editorUser the blog.
     */
    // function editor Is In Base Traits
    /**
     * Scopes
     */
    public function scopeAllTicket($query, $user_id="")
    {
        return $query;
    }
    public function scopeMyTicket($query, $user_id)
    {
        return $query->where('user_id', $user_id);
    }
    public function scopeWaiting($query)
    {
        return $query->where("reply_status_id", 0);
    }
    public function scopeClosed($query)
    {
        return $query->where("reply_status_id", 3);
    }
    public function scopeNotClosed($query)
    {
        return $query->where("reply_status_id", "!=", 3);
    }
}
