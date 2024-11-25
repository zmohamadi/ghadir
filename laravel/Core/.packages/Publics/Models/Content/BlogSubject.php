<?php

namespace Models\Content;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Models\Traits\Base;

class BlogSubject extends Model
{
    use HasFactory,Base;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $table   = 'blog_subjects';

    protected static function booted(): void
    {
        static::deleting(function(BlogSubject $subject) { // before delete() method call this
            $subject->blogs()->delete();
        });
    }
    /**
     * Get the blogs for the subject.
     */
    public function blogs(): HasMany
    {
        return $this->hasMany(Blog::class);
    }
}
