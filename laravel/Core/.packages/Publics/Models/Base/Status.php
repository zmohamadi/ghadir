<?php
namespace Models\Base;

use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;

class Status extends Model
{
    use Base;

    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $hidden  = ['created_at', 'updated_at', 'deleted_at'];
    protected $dates   = ['deleted_at'];
    protected $table   = 'base_statuses';

    function parent()
    {
        return $this->belongsTo(\Models\Base\Status::class, 'group_id');
    }

    function childs()
    {
        return $this->hasMany(\Models\Base\Status::class, 'group_id');
    }
    /**
     * Scope Relations
     */
    public function scopeFilterGroup($query, $group_id) // عمومی
    {
        return $query->whereIn('group_id', $group_id);
        // return $query->where('group_id', $group_id);
    }
    public function scopeSelectInReply($query, $filter="false") // جهت انتخاب گزینه مناسب در فرم پاسخ به تیکت کاربر سایت توسط مدیریت
    {
        $filterCode = ($filter=="true")? [3] : [1,3];
        return $query->where('group_id', 19)->whereIn('code', $filterCode);
    }
}
