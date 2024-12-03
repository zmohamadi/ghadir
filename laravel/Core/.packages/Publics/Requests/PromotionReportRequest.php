<?php

namespace Publics\Requests;


use Illuminate\Foundation\Http\FormRequest;

class PromotionReportRequest extends FormRequest
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
        return [
          "promotion_id"=>'required',
          'c_people_count' => 'nullable|integer',
          'tr_people_count' => 'nullable|integer',
        ];
    }
}
