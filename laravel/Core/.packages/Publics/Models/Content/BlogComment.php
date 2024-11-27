<?php

namespace Models\Content;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Models\Traits\Base;

class BlogComment extends Model
{
    use HasFactory,Base;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $table   = 'blog_comments';

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
        static::deleting(function(BlogComment $comment) { // before delete() method call this
            //
        });
    }
    /**
     * Get the parent for the comment.
     */
    public function parent(): BelongsTo
    {
        return $this->belongsTo(BlogComment::class);
    }
    /**
     * Get the childs for the comment.
     */
    public function childs(): HasMany
    {
        return $this->hasMany(BlogComment::class, 'parent_id');
    }
    // public function childs(): HasMany
    // {
    //     return $this->hasMany(BlogComment::class, 'parent_id');
    // }
    /**
     * Get the blog that owns the comment.
     */
    public function blog(): BelongsTo
    {
        return $this->belongsTo(Blog::class);
    }
    /**
     * Get the confirmerUser that owns the comment.
     */
    public function confirmer(): BelongsTo
    {
        return $this->belongsTo(\Models\User::class,'confirm_user_id');
    }
    /**
     * Get the creatorUser that owns the comment.
     */
    // function creator Is In Base Traits
    /**
     * Get the editorUser that owns the comment.
     */
    // function editor Is In Base Traits
    /**
     * Status
     */
    public function confirmStatus()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'confirm_id', 'code')->where('group_id', '14');
    }
    /**
     * Scopes
     */
    public function scopeParentComment($query)
    {
        return $query->where('parent_id', 0);
    }
    public function scopeConfirmed($query)
    {
        return $query->where('confirm_id', 1);
    }
    public function scopeRejected($query)
    {
        return $query->where('confirm_id', 0);
    }
    public function scopeWaiting($query)
    {
        return $query->where('confirm_id', 2);
    }
}
