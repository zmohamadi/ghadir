<?php

namespace Publics\Requests;


use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class PersonnelRequest extends FormRequest
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
            //  'gender_id' => 'required',
             'photo' => 'required',
             'mobile' => "required|min:11|max:11|unique:users,mobile," . ($id ?? "NULL") . ",id,deleted_at,NULL",
         ];
     
         return $item;
     }

    
    
}
