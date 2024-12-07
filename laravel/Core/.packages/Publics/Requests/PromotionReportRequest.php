<?php

namespace Publics\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Publics\Controllers\Tools;

class PromotionReportRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true; // تغییر به true برای مجاز کردن درخواست
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        $rules = [
            "promotion_id" => 'required',
        ];
        if (auth('admin')->user()->role_id != 2) {
            $rules["promoter_id"] = 'required';
            $rules["level_id"] = 'required';
            $rules["confirm_id"] = 'required';
        }
    
        $tools = new Tools;

        // دریافت داده‌ها
        $course = $tools->getRepeatValues(['c_province', 'c_city_id', 'c_city', 'c_village',
            'c_subject', 'c_place_name', 'c_duration', 'c_people_count', 'c_audiencetype_id']);
        $tribune = $tools->getRepeatValues(['tr_province', 'tr_city_id', 'tr_city', 'tr_village',
            'tr_subject', 'tr_place_name', 'tr_duration', 'tr_people_count', 'tr_audiencetype_id']);
        $ritual = $tools->getRepeatValues(['r_province', 'r_city_id', 'r_city', 'r_village', 'ritual_id', 'r_description', 'r_place_name']);

        // اعتبارسنجی داده‌های دوره
        foreach ($course as $key => $item) {
            // $rules["c_subject_{$key}"] = 'required'; // موضوع الزامی است
        
            // اگر موضوع مقداردهی شده، سایر موارد الزامی هستند
            if (!empty($item['c_subject'])) {
                $rules["c_duration_{$key}"] = 'required|integer';
                $rules["c_province_{$key}"] = 'required';
                $rules["c_city_id_{$key}"] = 'required';
                $rules["c_people_count_{$key}"] = 'required|integer';
        
                // شهر یا روستا: یکی باید پر شود
                $rules["c_city_{$key}"] = "required_without:c_village_{$key}";
                $rules["c_village_{$key}"] = "required_without:c_city_{$key}";
            }
        }
        

        // اعتبارسنجی داده‌های تریبون
        foreach ($tribune as $key => $item) {
            // موضوع الزامی است
            // $rules["tr_subject_{$key}"] = 'required';
        
            // اگر موضوع مقداردهی شده باشد، اعتبارسنجی سایر فیلدها انجام می‌شود
            if (!empty($item["tr_subject"])) {
                $rules["tr_duration_{$key}"] = 'required|integer';
                $rules["tr_province_{$key}"] = 'required';
                $rules["tr_city_id_{$key}"] = 'required';
                $rules["tr_people_count_{$key}"] = 'required|integer';
        
                // شهر یا روستا: یکی باید مقداردهی شود
                $rules["tr_city_{$key}"] = "required_without:tr_village_{$key}";
                $rules["tr_village_{$key}"] = "required_without:tr_city_{$key}";
            }
        }
        

        // اعتبارسنجی داده‌های مراسم
        foreach ($ritual as $key => $item) {
            // فیلد اول همیشه الزامی است
            // $rules["r_ritual_id_{$key}"] = 'required';
        
            // بررسی اینکه اگر فیلد اول مقداردهی شده باشد، سایر فیلدها الزامی باشند
            if (!empty($item["r_ritual_id"])) {
                $rules["r_province_{$key}"] = 'required';
                $rules["r_city_id_{$key}"] = 'required';
        
                // شهر یا روستا: یکی باید مقداردهی شود
                $rules["r_city_{$key}"] = "required_without:r_village_{$key}";
                $rules["r_village_{$key}"] = "required_without:r_city_{$key}";
            }
        }
        

        return $rules;
    }
}
