<?php

namespace Publics\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
use Publics\Controllers\Tools;

class PromoterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true; // بررسی دسترسی کاربر، بسته به نیاز پروژه
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        $url = explode("/", request()->path());
        $id = $url[2] ?? null;

        $rules = [
            'firstname' => 'required',
            'lastname' => 'required',
            'gender_id' => 'required',
            'education_id' => 'required',
            'bank_account_number' => 'required',
            'photo' => 'required',
            'khadamat_code' => 'required_if:has_khadamat_code,1',
            'tablighat_office_code' => 'required_if:has_tablighat_office_code,1',
            'tablighat_organization_code' => 'required_if:has_tablighat_organization_code,1',
            'ovghaf_code' => 'required_if:has_ovghaf_code,1',

            'codemeli' => [
                'digits:10',
                'numeric',
                'required_if:is_not_citizen,0', // الزامی بودن کدملی برای شهروندان
                Rule::unique('users', 'codemeli')->ignore($id)->whereNull('deleted_at'),
            ],
            'is_not_citizen' => 'required_without:codemeli',
            'mobile' => "required|min:11|max:11|unique:users,mobile," . ($id ?? "NULL") . ",id,deleted_at,NULL",
        ];

        // اگر is_not_citizen برابر با 1 باشد، کدملی می‌تواند خالی باشد
        if (request()->input('is_not_citizen') == 1) {
            $rules['codemeli'][] = 'nullable';
        }

        $tools = new Tools;

        // دریافت داده‌ها
        $cusers = $tools->getRepeatValues(['c_name', 'c_family', 'c_phone', 'c_gender_id', 'c_comments', 'c_job_position']);
        $positions = $tools->getRepeatValues(['pos_province', 'pos_city_id', 'pos_city', 'pos_village', 'promotion_position', 'place_name']);

        // اعتبارسنجی داده‌های دوره
        foreach ($cusers as $key => $cuser) {
            if (!empty($cuser['c_name'])) {
                $rules["c_family_{$key}"] = 'required';
                $rules["c_phone_{$key}"] = 'required';
                $rules["c_job_position_{$key}"] = 'required';
            }
        }

        // اعتبارسنجی موقعیت‌ها
        foreach ($positions as $key => $position) {
            if (!empty($position['promotion_position'])) {
                $rules["pos_province_{$key}"] = 'required';
                $rules["pos_city_id_{$key}"] = 'required';
                $rules["place_name_{$key}"] = 'required';

                // شهر یا روستا: یکی باید پر شود
                $rules["pos_city_{$key}"] = "required_without:pos_village_{$key}";
                $rules["pos_village_{$key}"] = "required_without:pos_city_{$key}";
            }
        }

        return $rules;
    }
}
