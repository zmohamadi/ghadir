<?php

namespace Publics\Requests;


use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class PromoterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return false;
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
     
         $item = [
             'firstname' => 'required',
             'lastname' => 'required',
             'gender_id' => 'required',
             'education_id' => 'required',
            //  'level_id' => 'required',
             'bank_account_number' => 'required',
             'photo' => 'required',
             'codemeli' => [
                'required_if:is_not_citizen,0', // اگر is_not_citizen برابر 0 باشد، کدملی الزامی است
                Rule::unique('users', 'codemeli')->ignore($id)->whereNull('deleted_at'),
                ],
             'is_not_citizen' => 'required_without:codemeli|boolean',
             'mobile' => "required|min:11|max:11|unique:users,mobile," . ($id ?? "NULL") . ",id,deleted_at,NULL",
         ];
     
         // اگر is_not_citizen برابر با 1 باشد، کدملی می‌تواند خالی باشد
         if (request()->input('is_not_citizen') == 1) {
             $item['codemeli'][] = 'nullable'; // اگر is_not_citizen برابر 1 باشد، کدملی می‌تواند خالی باشد
         }
     
         return $item;
     }

    
    
}
