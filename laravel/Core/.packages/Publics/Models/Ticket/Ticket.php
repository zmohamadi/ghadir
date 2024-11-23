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
            $ticket->childs->delete();
        });
    }
    /**
     * Relationships
     */
    public function parent(): belongsTo // هر تیکت فقط می تواند در یک گروه ثبت شود
    {
        return $this->belongsTo(Ticket::class);
    }
    public function childs(): HasMany //  هر تیکت می تواند چند پاسخ را در گروه خود داشته باشد
    {
        return $this->hasMany(Ticket::class, "parent_id");
    }
    public function waitingChilds(): HasMany // تیکت های سطح 2 که هنوز مشاهده و بررسی نشده اند
    {
        return $this->hasMany(Ticket::class, "parent_id")->where("reply_status", 0);
    }
    public function closedChilds(): HasMany // تیکت های سطح 2 که هنوز بسته نشده اند
    {
        return $this->hasMany(Ticket::class, "parent_id")->where("reply_status", "!=", 3);
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
        return $this->belongsTo(\Models\Base\Status::class, 'reply_status_id', 'code')->where('group_id', 18);
    }
    /**
     * Get the creatorUser the blog.
     */
    // function creator Is In Base Traits
    /**
     * Get the editorUser the blog.
     */
    // function editor Is In Base Traits
}
