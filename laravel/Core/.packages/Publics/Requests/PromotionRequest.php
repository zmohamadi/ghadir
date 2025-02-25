<?php

namespace Publics\Requests;


use Illuminate\Foundation\Http\FormRequest;

class PromotionRequest extends FormRequest
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
        
     
         $item = [
            'title' => 'required',
            'year' => 'required|digits:4|integer',
            'comments' => 'required',
            'photo' => 'required',
            'register_status' => 'required',
            'report_status' => 'required',
         ];
     
         return $item;
     }
}
