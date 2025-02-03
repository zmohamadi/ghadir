<?php
namespace Admin\Controllers\Person;

use Models\Person\Promoter;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\FromArray;

// class PromoterExport implements FromCollection, WithHeadings, WithMapping
// {
//     public function collection()
//     {
//         return Promoter::with('notes')->get(); // دریافت داده‌ها همراه با نوت‌ها
//     }

//     public function headings(): array
//     {
//         return ['ID', 'First Name', 'Created At', 'Notes'];
//     }

//     public function map($promoter): array
//     {
//         return [
//             $promoter->id,
//             $promoter->firstname,
//             $promoter->created_at,
//             $promoter->notes->pluck('content')->implode(', '), // نمایش نوت‌ها در یک ستون
//         ];
//     }
// }
class PromoterExport implements FromArray, WithHeadings
{
    public function array(): array
    {
        return Promoter::select([
            'firstname', 'lastname', 'mobile', 'codemeli',
            'khadamat_code', 'tablighat_office_code', 
            'tablighat_organization_code', 'ovghaf_code', 
            'bank_account_number', 'address', 'postal_code', 
            'created_at'
        ])->get()->toArray();
    }

    public function headings(): array
    {
        return [
            'نام', 'نام خانوادگی', 'موبایل', 'کدملی', 'کد خدمات',
            'کد دفتر تبلیغات', 'کد سازمان تبلیغات', 'کد سازمان اوقاف',
            'شماره حساب', 'آدرس', 'کد پستی', 'تاریخ ثبت‌نام'
        ];
    }

}
