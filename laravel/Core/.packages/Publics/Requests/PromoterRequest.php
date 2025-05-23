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
        // dd($url);
        $role_id = auth("admin")->user()->role_id;
        $data = request()->all();
        
        $rules = [
            'firstname' => 'required',
            'lastname' => 'required',
            'gender_id' => 'required',
            'education_id' => 'required',
            'bank_account_number' => 'required',
            'bank_cart_number' => 'required',
            'photo' => 'required',
            'address' => 'required',
            'khadamat_code' => 'required_if:has_khadamat_code,1',
            'tablighat_office_code' => 'required_if:has_tablighat_office_code,1',
            'tablighat_organization_code' => 'required_if:has_tablighat_organization_code,1',
            'ovghaf_code' => 'required_if:has_ovghaf_code,1',
        
            'codemeli' => [
                'bail',
                'digits:10',
                'numeric',
                'required_if:is_not_citizen,0',
                Rule::unique('users', 'codemeli')->ignore($id)->whereNull('deleted_at'),
                function ($attribute, $value, $fail) use ($data) {
                    if (!isset($data['is_not_citizen']) || $data['is_not_citizen'] == '0') {
                        // بررسی کد ملی ایران
                        if (!preg_match('/^[0-9]{10}$/', $value)) {
                            return $fail('فرمت کد ملی معتبر نیست.');
                        }
        
                        for ($i = 0; $i < 10; $i++) {
                            if (preg_match('/^' . $i . '{10}$/', $value)) {
                                return $fail('کد ملی معتبر نیست.');
                            }
                        }
        
                        $sum = 0;
                        for ($i = 0; $i < 9; $i++) {
                            $sum += (10 - $i) * intval(substr($value, $i, 1));
                        }
        
                        $remainder = $sum % 11;
                        $parity = intval(substr($value, 9, 1));
        
                        if (!(
                            ($remainder < 2 && $parity == $remainder) ||
                            ($remainder >= 2 && $parity == 11 - $remainder)
                        )) {
                            return $fail('کد ملی معتبر نیست.');
                        }
                    }
                }
            ],
        
            'is_not_citizen' => 'required_without:codemeli',
        ];
        if($role_id==1){

            $rules['mobile'] = "bail|required|min:11|max:11|unique:users,mobile," . ($id ?? "NULL") . ",id,deleted_at,NULL";
            // $rules['mobile'][] = "required|min:11|max:11|unique:users,mobile," . ($id ?? "NULL") . ",id,deleted_at,NULL";
        }

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
