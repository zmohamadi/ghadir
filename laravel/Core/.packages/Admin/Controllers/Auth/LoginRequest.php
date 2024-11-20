<?php

namespace Admin\Controllers\Auth;

use Illuminate\Auth\Events\Lockout;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;
use Models\User;

class LoginRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
    
    public function rules()
    {
        return [
            'mobile' => ['required', 'regex:/(09)[0-9]{9}/', 'exists:users,mobile'],
            'password' => 'required|string',
        ];
    }
    
    public function authenticate()
    {
        $this->ensureIsNotRateLimited();

        // بررسی وضعیت تایید شماره موبایل
        $user = Auth::guard('admin')->getProvider()->retrieveByCredentials($this->only('mobile'));

        if ($user && $user->status_id === 0) {
            throw ValidationException::withMessages([
                'mobile' => __('auth.mobile_not_verified'),
            ]);
        }

        if (! Auth::guard('admin')->attempt($this->only('mobile', 'password'), $this->filled('remember'))) {
            RateLimiter::hit($this->throttleKey());

            throw ValidationException::withMessages([
                'mobile' => __('auth.failed'),
            ]);
        }

        // ثبت ساعت ورود کاربر
        User::where('mobile', $this->mobile)->update(['last_login' => now()]);

        RateLimiter::clear($this->throttleKey());
    }


    
    public function ensureIsNotRateLimited()
    {
        if (! RateLimiter::tooManyAttempts($this->throttleKey(), 5)) {
            return;
        }

        event(new Lockout($this));
        $seconds = RateLimiter::availableIn($this->throttleKey());

        throw ValidationException::withMessages([
            'email' => trans('auth.throttle', [
                'seconds' => $seconds,
                'minutes' => ceil($seconds / 60),
            ]),
        ]);
    }
    
    public function throttleKey()
    {
        return Str::lower($this->input('email')).'|'.$this->ip();
    }
}