<?php

namespace Models\Ticket;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Models\Traits\Base;

class TicketItem extends Model
{
    use HasFactory, SoftDeletes;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $table = 'ticket_items';

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
        static::deleting(function(TicketItem $item) { // before delete() method call this 
            //
        });
    }
    /**
     * Relationships
     */
    public function ticket(): belongsTo // هر تیکت فقط می تواند در یک گروه ثبت شود
    {
        return $this->belongsTo(Ticket::class);
    }
    public function user(): belongsTo
    {
        return $this->belongsTo(\Models\User::class);
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
