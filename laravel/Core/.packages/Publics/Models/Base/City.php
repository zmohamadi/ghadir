<?php
namespace Models\Base;

use Illuminate\Database\Eloquent\Model;
use Models\Traits\Base;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Publics\Factories\CityFactory;

class City extends Model
{
    use Base, HasFactory;

    protected $guarded = ['created_at', 'updated_at', 'deleted_at', 'id'];
    protected $hidden  = ['created_at', 'updated_at', 'deleted_at'];
    protected $dates   = ['deleted_at'];
    protected $table   = 'base_cities';

    function province()
    {
        return $this->belongsTo(\Models\Base\Province::class, 'province_id');
    }
}
