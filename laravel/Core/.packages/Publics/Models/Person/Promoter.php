<?php
namespace Models\Person;

use Models\User;

class Promoter extends User
{
    protected $attributes = ['role_id' => 2];
    public function newQuery($excludeDeleted = true)
    {
        $c =  parent::newQuery($excludeDeleted);
        return $c->where(function($q){
                $q->where($this->table.'.role_id',2);
            });
    }
}
