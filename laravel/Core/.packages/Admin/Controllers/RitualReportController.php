<?php

namespace Admin\Controllers;

use Illuminate\Http\Request;
use Admin\Controllers\Public\BaseAbstract;
use Admin\Controllers\Excel\RitualExcel;
use Maatwebsite\Excel\Facades\Excel;

class RitualReportController extends BaseAbstract
{
    protected $model = 'Models\RitualReport';
    protected $request = 'Publics\Requests\RitualReportRequest';
    protected $showWith = ["promoter","promotion","province","citySh","ritual"];
    protected $with = ["promoter","promotion","province","citySh","ritual"];
    protected $needles = ['Base\Province',"Base\City","Promotion","Person\Promoter"];

    public function exportExcel()
    {
        $filters = request()->all();

        return Excel::download(new RitualExcel($filters), 'ritual.xlsx', \Maatwebsite\Excel\Excel::XLSX, [
            'Content-Type' => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
        ]);
    }

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
            // $query->when(request()->promoter != null, function ($q) {
            //     $promoter = request()->promoter;
            //     $q->whereHas('promoter',function($q) use($promoter)
            //     {
            //         $q->where("firstname", 'like', "%$promoter%")->orWhere("lastname", 'like', "%$promoter%");
            //     });
            // });
            $query->when(request()->promoter != null, function ($q) {
                $q->where('promoter_id', request()->promoter);
            });
            
            $query->whereHas('ritual')->whereHas('promotion')->whereHas('promoter');
        };
    }
}
