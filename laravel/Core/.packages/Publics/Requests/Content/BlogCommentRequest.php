<?php

namespace Publics\Requests\Content;

use Illuminate\Foundation\Http\FormRequest;

class BlogCommentRequest extends FormRequest
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
        $id = (int) filter_var(request()->path(), FILTER_SANITIZE_NUMBER_INT);
        $type = request()->type;
        $item = [];
        if(request()->_method == "PUT" && $type==3)
        {
            $field = "comment".$id;
            $item[$field] = 'required';
        }
        return $item;
    }
}
