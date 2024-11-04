<?php
namespace Models\Base;

use Illuminate\Database\Eloquent\Model;
use Database\Factories\Base\KeywordFactory;
use Models\Traits\Base;

class YearSemester extends Model
{
    use Base;
    
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $hidden  = ['created_at', 'updated_at', 'deleted_at'];
    protected $dates   = ['deleted_at'];
    protected $table   = 'base_year_semesters';

    public function creator()
    {
        return $this->belongsTo(\Models\User::class, 'creator_id');
    }
    public function editor()
    {
        return $this->belongsTo(\Models\User::class, 'editor_id');
    }
}
