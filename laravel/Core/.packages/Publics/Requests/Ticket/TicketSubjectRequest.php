<?php

namespace Publics\Requests\Ticket;


use Illuminate\Foundation\Http\FormRequest;

class TicketSubjectRequest extends FormRequest
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
            'title_fa'=>'required',
        ];
        return $item;
    }
}
