<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;

class CourseController extends BaseAbstract
{
    protected $model = 'Models\Course';
    protected $request = 'Publics\Requests\CourseRequest';
    protected $searchFilter = ['subject'];
    protected $showWith = ["promoter","promotion","province","citySh","audienceType"];
    protected $with = ["promoter","promotion","province","citySh","audiencetype"];
    protected $needles = ['Base\Province',"Base\City","Promotion","Person\Promoter"];

    public function init()
    {
        $this->indexQuery = function ($query) {
            $query->when(request()->province != null, function ($q) {
                $q->where('province_id', request()->province);
            });
            $query->when(request()->city != null, function ($q) {
                $q->where('city_id', request()->city);
            });
            $query->when(request()->promotion != null, function ($q) {
                $q->where('promotion_id', request()->promotion);
            });
            $query->when(request()->promoter != null, function ($q) {
                $promoter = request()->promoter;
                $q->whereHas('promoter',function($q) use($promoter)
                {
                    $q->where("firstname", 'like', "%$promoter%")->orWhere("lastname", 'like', "%$promoter%");
                });
            });
            $query->whereHas('promotion')->whereHas('promoter');
        };
    }
}
