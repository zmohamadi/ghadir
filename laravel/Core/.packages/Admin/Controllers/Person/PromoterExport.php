<?php
namespace Admin\Controllers\Person;

use Models\Person\Promoter;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;

class PromoterExport implements FromArray, WithHeadings
{
    protected $filters;

    public function __construct($filters)
    {
        $this->filters = $filters;
    }

    public function array(): array
    {
        $data = Promoter::select([
            'firstname', 'lastname', 'mobile', 'codemeli',
            'khadamat_code', 'tablighat_office_code', 
            'tablighat_organization_code', 'ovghaf_code', 
            'bank_account_number', 'address', 'postal_code', 
            'created_at'
        ]);

        // اعمال فیلترها
        $filters = $this->filters;

        $data->when(isset($filters['province']), function ($q) use ($filters) {
            $q->where('province_id', $filters['province']);
        });
        $data->when(isset($filters['city']), function ($q) use ($filters) {
            $q->where('city_id', $filters['city']);
        });
        $data->when(isset($filters['gender']), function ($q) use ($filters) {
            $q->where('gender_id', $filters['gender']);
        });
        $data->when(isset($filters['promoterStatus']), function ($q) use ($filters) {
            $q->where('status_id', $filters['promoterStatus']);
        });
        $data->when(isset($filters['promoterWorkStatus']), function ($q) use ($filters) {
            $q->where('work_status', $filters['promoterWorkStatus']);
        });

        $data->when(isset($filters['acoountPromoter']), function ($q) use ($filters) {
            switch ($filters['acoountPromoter']) {
                case 1:
                    $field = "has_khadamat_code";
                    break;
                case 2:
                    $field = "has_tablighat_office_code";
                    break;
                case 3:
                    $field = "has_tablighat_organization_code";
                    break;
                case 4:
                    $field = "has_ovghaf_code";
                    break;
                default:
                    return;
            }
            $q->where($field, 1);
        });

        return $data->get()->toArray();
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

