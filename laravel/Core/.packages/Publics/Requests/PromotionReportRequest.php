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

        $tools = new Tools;

        // دریافت داده‌ها
        $course = $tools->getRepeatValues(['c_province', 'c_city_id', 'c_city', 'c_village',
            'c_subject', 'c_place_name', 'c_duration', 'c_people_count', 'c_audiencetype_id']);
        $tribune = $tools->getRepeatValues(['tr_province', 'tr_city_id', 'tr_city', 'tr_village',
            'tr_subject', 'tr_place_name', 'tr_duration', 'tr_people_count', 'tr_audiencetype_id']);
        $ritual = $tools->getRepeatValues(['r_province', 'r_city_id', 'r_city', 'r_village', 'ritual_id', 'r_description', 'r_place_name']);

        // اعتبارسنجی داده‌های دوره
        foreach ($course as $key => $item) {
            $rules["c_subject_{$key}"] = 'required';
            $rules["c_duration_{$key}"] = 'required|integer';
            $rules["c_province_{$key}"] = 'required';
            $rules["c_city_id_{$key}"] = 'required';
            $rules["c_city_{$key}"] = "required_without:c_village_{$key}";
            $rules["c_village_{$key}"] = "required_without:c_city_{$key}";
            $rules["c_people_count_{$key}"] = 'required|integer';
        }

        // اعتبارسنجی داده‌های تریبون
        foreach ($tribune as $key => $item) {
            $rules["tr_subject_{$key}"] = 'required';
            $rules["tr_duration_{$key}"] = 'required|integer';
            $rules["tr_province_{$key}"] = 'required';
            $rules["tr_city_id_{$key}"] = 'required';
            $rules["tr_city_{$key}"] = "required_without:tr_village_{$key}";
            $rules["tr_village_{$key}"] = "required_without:tr_city_{$key}";
            $rules["tr_people_count_{$key}"] = 'required|integer';
        }

        // اعتبارسنجی داده‌های مراسم
        foreach ($ritual as $key => $item) {
            $rules["r_ritual_id_{$key}"] = 'required';
            $rules["r_province_{$key}"] = 'required';
            $rules["r_city_id_{$key}"] = 'required';
            $rules["r_city_{$key}"] = "required_without:r_village_{$key}";
            $rules["r_village_{$key}"] = "required_without:r_city_{$key}";
        }

        return $rules;
    }
}
