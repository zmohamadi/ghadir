<?php

namespace Models\Content;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Models\Traits\Base;

class Blog extends Model
{
    use HasFactory,Base;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $table   = 'blogs';

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
        static::deleting(function(Blog $blog) { // before delete() method call this        
            $blog->comments()->delete();
        });
    }
    /**
     * Get the subject that owns the blog.
     */
    public function subject(): BelongsTo
    {
        return $this->belongsTo(BlogSubject::class);
    }
    /**
     * Get the comments for the blog.
     */
    public function comments(): HasMany
    {
        return $this->hasMany(BlogComment::class, 'blog_id');
    }
    /**
     * The users that belong to the blogs.
     */
    public function users(): BelongsToMany
    {
        return $this->belongsToMany(\Models\User::class);
    }
    /**
     * The keywords that belong to the blogs.
     */
    public function keywords(): BelongsToMany
    {
        return $this->belongsToMany(\Models\Base\Keyword::class);
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
