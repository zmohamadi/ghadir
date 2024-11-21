<?php

namespace Models\Content;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;

class BlogComment extends Model
{
    use HasFactory,Base;
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
        return $this->hasMany(BlogComment::class);
    }
    /**
     * Get the replieUser that owns the comment.
     */
    public function replieUser(): BelongsTo
    {
        return $this->belongsTo(Models\User::class);
    }
    /**
     * Get the confirmerUser that owns the comment.
     */
    public function confirmer()
    {
        return $this->belongsTo(\Models\User::class);
    }
    /**
     * Get the blog that owns the comment.
     */
    public function blog(): BelongsTo
    {
        return $this->belongsTo(Blog::class);
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
    public function scopeConfirm($query)
    {
        return $query->where('confirm_id', 1);
    }
}
