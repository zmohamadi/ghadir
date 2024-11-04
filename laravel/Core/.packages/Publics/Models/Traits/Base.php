<?php
namespace Models\Traits;

use Illuminate\Database\Eloquent\SoftDeletes;

trait Base
{
    use SoftDeletes;
    
    public function activeStatus()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'status_id', 'code')->where('group_id', '1');
    }
    
    /**
     * Scopes
     */
    public function scopeActive($query)
    {
        return $query->where('status_id', 1);
    }
}

