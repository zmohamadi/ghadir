<?php

namespace Models\Ticket;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Models\Traits\Base;

class TicketSubject extends Model
{
    use HasFactory,Base;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $table = 'ticket_subjects';

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'created_at' => 'datetime:d-m-Y H:i',
        'updated_at' => 'datetime:d-m-Y H:i',
        'deleted_at' => 'timestamp',
    ];
    protected static function booted(): void
    {
        static::deleting(function(TicketSubject $subject) { // before delete() method call this        
            $subject->comments()->delete();
        });
    }
    public function tickets(): HasMany
    {
        return $this->hasMany(Ticket::class, "subject_id");
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
