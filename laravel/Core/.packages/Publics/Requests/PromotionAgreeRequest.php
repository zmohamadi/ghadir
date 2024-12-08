<?php

namespace Publics\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PromotionAgreeRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'agree_has_tribune' => 'nullable|integer',
            'agree_has_course' => 'nullable|integer',
            // 'agree_ritual' => 'nullable|array',
        ];
    }

    public function withValidator($validator)
    {

        $validator->after(function ($validator) {
            $agreeHasTribune = $this->input('agree_has_tribune', 0);
            $agreeHasCourse = $this->input('agree_has_course', 0);
            $agreeRitual = $this->input('agree_ritual', []);

            // شرط: دو فیلد اول 1 باشند یا فیلد سوم آرایه پر باشد
            if (!($agreeHasTribune == 1 && $agreeHasCourse == 1) && empty($agreeRitual)) {
                $validator->errors()->add('agreement', 'حداقل یکی از شرایط توافق‌نامه باید رعایت شود: دو مورد اول مقدار 1 باشند یا مورد سوم یک آرایه پر باشد.');
            }
        });
    }


    // public function messages(): array
    // {
    //     return [
    //         'agree_has_tribune.required_without_all' => 'حداقل یکی از فیلدهای مشارکت باید تکمیل شود.',
    //         'agree_has_course.required_without_all' => 'حداقل یکی از فیلدهای مشارکت باید تکمیل شود.',
    //         'agree_ritual.required_without_all' => 'حداقل یکی از فیلدهای مشارکت باید تکمیل شود.',
    //     ];
    // }
}
