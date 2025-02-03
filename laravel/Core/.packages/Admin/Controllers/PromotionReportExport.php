<?php
namespace Admin\Controllers;

use Models\PromotionReport;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Carbon\Carbon;

class PromotionReportExport implements FromCollection, WithHeadings, WithMapping
{
    public function collection()
    {
        return PromotionReport::with(['promotion', 'promoter', 'ritualReports.ritual', 'tribunes', 'courses'])->get();
    }

    public function headings(): array
    {
        return ['ماموریت تبلیغی', 'مبلغ', 'موضوع تریبون‌ها', 'دوره‌ها', 'مراسم‌ها', 'تاریخ'];
    }

    public function map($record): array
    {
        return [
            $record->promotion->title ?? 'نامشخص',
            ($record->promoter->firstname ?? '') . " " . ($record->promoter->lastname ?? ''),
            $record->tribunes->map(fn($tribune) => "موضوع : {$tribune->subject} (مکان : {$tribune->place_name}, مدت زمان : {$tribune->duration})")->implode('|'),
            $record->courses->map(fn($course) => "موضوع : {$course->subject} (مکان : {$course->place_name}, مدت زمان : {$course->duration})")->implode('|'),
            $record->ritualReports
            ->map(fn($report) => ($report->ritual->title ?? 'شعائر') ."توضیحات : {$report->description} "."مکان : {$report->place_name} ")
            ->implode('|'),
                    Carbon::parse($record->created_at)->format('Y-m-d H:i'),
        ];
    }
}
