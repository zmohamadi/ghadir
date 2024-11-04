<?php

namespace Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;

class Role extends Model
{
    use HasFactor,Basey;
    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];

}
