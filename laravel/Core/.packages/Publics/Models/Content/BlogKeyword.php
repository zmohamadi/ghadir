<?php

namespace Models\Content;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;

class BlogKeyword extends Model
{
    use HasFactory,Base;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $table   = 'blog_keyword';
    
    /**
     * Get the blog that owns the BlogKeyword.
     */
    public function blog(): BelongsTo
    {
        return $this->belongsTo(\Models\Content\Blog::class);
    }
    /**
     * Get the keyword that owns the BlogKeyword.
     */
    public function keyword(): BelongsTo
    {
        return $this->belongsTo(\Models\Base\Keyword::class);
    }
}
