<?php

namespace Admin\Controllers\Auth;

use Illuminate\Support\Facades\Validator;
use Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Publics\Controllers\SMSIR\SMSIR_VerificationCode;
use Illuminate\Support\Facades\Auth;

class RegisterController extends Controller
{
    // اعتبارسنجی داده‌ها
    // protected function validator(array $data)
    // {
    //     return Validator::make($data, [
    //         'firstname' => ['required', 'max:255'],
    //         'lastname' => ['required', 'max:255'],
    //         'mobile' => ['required', 'regex:/^(09)[0-9]{9}$/', 'unique:users,mobile,NULL,id,deleted_at,NULL'],
    //         'password' => ['required', 'string', 'min:6'],
    //         'is_not_citizen' => [''],
    //         'codemeli' => [''],
    //     ]);
    // }
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'firstname' => ['required', 'max:255'],
            'lastname' => ['required', 'max:255'],
            'mobile' => ['required', 'regex:/^(09)[0-9]{9}$/', 'unique:users,mobile,NULL,id,deleted_at,NULL'],
            'password' => ['required', 'string', 'min:6'],
            'is_not_citizen' => ['nullable'],
            'codemeli' => [
                'required',
                'digits:10',
                function ($attribute, $value, $fail) use ($data) {
                    if (!empty($data['is_not_citizen'])) {
                        // اگر اتباع است، فقط بررسی ۱۰ رقمی کافی است (که بالا انجام شده)
                        return;
                    }

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
            ],
        ]);
    }


    public function register(Request $request)
    {
        // اعتبارسنجی داده‌ها
        $this->validator($request->all())->validate();

        // بررسی وجود یا عدم وجود کاربر
        $user = User::where('mobile', $request->mobile)->first();
        
        if ($user) {
            return response()->json([
                'message' => trans('AdminLang::public.user_exists_complete'), 
                'response' => $user,
                'mobile' => $user->mobile // شماره موبایل را بازگردانید
            ]);
        }

        // ثبت‌نام کاربر جدید
        $user = $this->registerWithMobile($request->all());
        $this->sendVerifyCode($user); // ارسال کد تایید بدون نیاز به return
        
        return response()->json([
            'message' => trans('AdminLang::public.user_not_exists'), 
            'response' => $user,
            'mobile' => $user->mobile // شماره موبایل را بازگردانید
        ]);
    }


    // ثبت‌نام کاربر جدید
    protected function registerWithMobile(array $data)
    {
        return User::create([
            'firstname' => $data['firstname'],
            'lastname' => $data['lastname'],
            'mobile' => $data['mobile'],
            'is_not_citizen' => $data['is_not_citizen'],
            'codemeli' => $data['codemeli'],
            'role_id' => 2,
            'status_id' => -1,
            'register_date'=>now(),
            'password' => bcrypt($data['password']), // استفاده از موبایل به عنوان پسورد
        ]);
    }

    // اعتبارسنجی کد تایید
    protected function verifyValidator(array $request)
    {
        return Validator::make($request, [
            'verifyCode' => ['required', 'max:4', function($attribute, $value, $fail) use ($request) {
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
        $user = User::where('mobile', $request['mobile'])->first();

        // اعتبارسنجی کد تایید
        $this->verifyValidator($request->all())->validate();

        $last_login = User::where('mobile', $request['mobile'])->update(['last_login' => now()]);
        \Auth::guard('admin')->login($user, true);
        
        return response()->json([
            'redirect' => true,
            'url' => 'login'
        ]);

        
    }


    // ارسال کد تایید
    protected function sendVerifyCode($user)
    {
        $code = rand(1000, 9999); // تولید کد تایید
        $sms = new SMSIR_VerificationCode();
        
        // ارسال کد تایید
        $resultSMS = $sms->sendVerifyCode($user->mobile, $code);

        // بروزرسانی اطلاعات کاربر
        $user->update([
            'confirm_code' => $code,
            'confirm_time' => time() + 125, // زمان انقضای کد
        ]);

        // نیازی به بازگرداندن پاسخ نیست
        return $resultSMS; // برای اطلاع از وضعیت ارسال کد تایید
    }

    // ارسال مجدد کد تایید
    public function resendVerifyCode($mobile)
    {
        $user = User::where('mobile', $mobile)->first();

        $code = rand(1000, 9999); // تولید کد تایید
        $sms = new SMSIR_VerificationCode();
        
        // ارسال کد تایید
        $resultSMS = $sms->sendVerifyCode($mobile, $code);

         // بروزرسانی اطلاعات کاربر
        $user->update([
            'confirm_code' => $code,
            'confirm_time' => time() + 125, // زمان انقضای کد
        ]);

        // پاسخ بر اساس وضعیت ارسال کد
        return response()->json([
            'status' => $resultSMS ? 200 : 500, 
            'data' => $resultSMS
        ]);
    }
}
