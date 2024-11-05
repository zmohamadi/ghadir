<?php

namespace Admin\Controllers\Base;

use Admin\Controllers\PublicCLR\BaseAbstract;

class ProvinceController extends BaseAbstract
{
    protected $model = 'Models\Base\Province';
    protected $request = 'Publics\Requests\Base\ProvinceRequest';
    protected $with = ['country',"activeStatus"];
    protected $showWith = ['country'];
    protected $needles = ['Base\Country'];
    protected $searchFilter = ['name_fa','name_en','name_ar'];
}
