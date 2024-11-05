<?php
namespace Models\Person;

use Models\User;

class Personnel extends User
{
    protected $attributes = ['role_id' => 1];

    public function newQuery($excludeDeleted = true)
    {
        $c =  parent::newQuery($excludeDeleted);
        return $c->where(function($q){
                $q->where($this->table.'.role_id',1);
            });
    }
}
