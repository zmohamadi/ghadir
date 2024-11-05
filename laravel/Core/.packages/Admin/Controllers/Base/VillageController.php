<?php

namespace Admin\Controllers\Base;

use Admin\Controllers\PublicCLR\BaseAbstract;

class VillageController extends BaseAbstract
{
    protected $model = 'Models\Base\Village';
    protected $request = 'Publics\Requests\Base\VillageRequest';
    protected $with = ['city',"activeStatus"];
    protected $showWith = ['city'];
    protected $needles = ['Base\City'];
    protected $searchFilter = ['name_fa','name_en','name_ar'];
}
