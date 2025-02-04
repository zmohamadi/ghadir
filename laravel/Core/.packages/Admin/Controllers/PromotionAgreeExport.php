<?php
namespace Admin\Controllers;

use Models\PromotionAgree;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Carbon\Carbon;

class PromotionAgreeExport implements FromCollection, WithHeadings, WithMapping
{
    protected $filters;

    public function __construct($filters)
    {
        $this->filters = $filters;
    }

    public function collection()
    {
        $request = $this->filters;

        $data =  PromotionAgree::with(['promotion', 'promoter']);
        $data = $data->get();
        return $data;
    }

    public function headings(): array
    {
        return ['ماموریت تبلیغی', 'مبلغ', 'تاریخ'];
    }

    public function map($record): array
    {
        return [
            $record->promotion->title ?? 'نامشخص', // جلوگیری از خطا اگر مقدار null باشد
            ($record->promoter->firstname ?? '') . " " . ($record->promoter->lastname ?? ''), // بررسی مقدار null
            Carbon::parse($record->created_at)->format('Y-m-d H:i'), // فرمت تاریخ
        ];
    }
}
