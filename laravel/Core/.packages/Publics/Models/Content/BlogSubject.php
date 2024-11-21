<?php

namespace Models\Content;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;
class BlogSubject extends Model
{
    use HasFactory,Base;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $table   = 'blog_subjects';

    /**
     * Get the blogs for the subject.
     */
    public function blogs(): HasMany
    {
        return $this->hasMany(Blog::class);
    }
}
