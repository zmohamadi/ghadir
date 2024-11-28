<?php

namespace Admin\Controllers\Auth;

use App\Http\Controllers\Controller;
use Admin\Controllers\Auth\LoginRequest;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Publics\Controllers\SMSIR\SMSIR_VerificationCode;
use Illuminate\Support\Facades\Validator;
use Models\User;

class AuthenticatedController extends Controller
{
    /**
     * Handle an incoming authentication request.
     *
     * @param  \App\Http\Requests\Auth\LoginRequest  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(LoginRequest $request)
    {
        $request->authenticate();
        $request->session()->regenerate();
        return response()->noContent();
    }
    /**
     * Destroy an authenticated session.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Request $request)
    {
        Auth::guard('admin')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return response()->noContent();
    }

    public function loginWithCode(Request $request)
{
    $mobile = $request->input('mobile');
    $user = User::where('mobile', $mobile)->first();

    // Check if user exists and is unverified
    if ($user && $user->status_id != 1) {
        return response()->json([
            'status' => 422,
            'errors' => ['mobile' => __('auth.mobile_not_verified')],
        ], 422);
    }

    $code = rand(1000, 9999); // Generate verification code
    $sms = new SMSIR_VerificationCode();

    // Send verification code
    $resultSMS = $sms->sendVerifyCode($mobile, $code);

    // Update user verification data
    if ($user) {
        $user->update([
            'confirm_code' => $code,
            'confirm_time' => time() + 125, // Set code expiration time
        ]);
    }

    // Return response based on SMS sending status
    return response()->json([
        'status' => $resultSMS ? 200 : 500,
        'data' => $resultSMS ? 'complete' : trans('AdminLang::public.error-500')
    ]);
}


    // اعتبارسنجی کد تایید
    protected function verifyValidator(array $request)
    {
        return Validator::make($request, [
            'code' => ['required', 'max:4', function($attribute, $value, $fail) use ($request) {
                $user = User::where('mobile', $request['mobile'])->first();

                // کاربر وجود ندارد
                if (!$user) {
                    $fail(trans('AdminLang::public.user_not_found'));
                    return;
                }

                // بررسی انقضای کد
                if (time() > $user->confirm_time) {
                    $fail(trans('AdminLang::public.code_expired'));
                    return;
                }

                // بررسی تطابق کد تایید
                if ($user->confirm_code != $value) {
                    $fail(trans('AdminLang::public.invalid_code'));
                }
            }]
        ]);
    }
    public function verifyCheck(Request $request)
    {
        // اعتبارسنجی کد تایید
        $this->verifyValidator($request->all())->validate();
        
        // وارد شدن به سایت
        $last_login = User::where('mobile', $request['mobile'])->update(['last_login',now()]);
        \Auth::guard('admin')->login($user, true);
        // return redirect()->route('panel');
    }
}