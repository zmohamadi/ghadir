<?php
namespace Admin\Controllers\Excel;

use Models\Tribune;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Carbon\Carbon;
use Maatwebsite\Excel\Facades\Excel;

class TribuneExcel implements FromCollection, WithHeadings, WithMapping
{
    protected $filters;

    public function __construct($filters)
    {
        $this->filters = $filters;
    }

    public function collection()
    {
        $request = $this->filters;

        $data = Tribune::with(["promoter","promotion","province","citySh","audiencetype"]);
        
        $data->when(request()->province != null, function ($q) {
            $q->where('province_id', request()->province);
        });
        $data->when(request()->city != null, function ($q) {
            $q->where('city_id', request()->city);
        });
        $data->when(request()->promotion != null, function ($q) {
            $q->where('promotion_id', request()->promotion);
        });
        // $data->when(request()->promoter != null, function ($q) {
        //     $promoter = request()->promoter;
        //     $q->whereHas('promoter',function($q) use($promoter)
        //     {
        //         $q->where("firstname", 'like', "%$promoter%")->orWhere("lastname", 'like', "%$promoter%");
        //     });
        // });
        $data->when(request()->promoter != null, function ($q) {
            $q->where('promoter_id', request()->promoter);
        });
        $data->whereHas('promotion')->whereHas('promoter');
        return $data->get();
    }

    public function headings(): array
    {
        return ['موضوع','ماموریت تبلیغی', 'مبلغ','مکان','تعداد مخاطب','استان','شهر', 'تاریخ'];
    }

    public function map($record): array
    {
        return [
            $record->subject ?? 'نامشخص',
            $record->promotion->title ?? 'نامشخص',
            ($record->promoter->firstname ?? '') . " " . ($record->promoter->lastname ?? ''),
            $record->place_name ?? 'نامشخص',
            $record->people_count ?? 'نامشخص',
            $record->province->name_fa ?? 'نامشخص',
            $record->citySh->name_fa ?? 'نامشخص',
           
            Carbon::parse($record->created_at)->format('Y-m-d H:i'),
        ];
    }
}