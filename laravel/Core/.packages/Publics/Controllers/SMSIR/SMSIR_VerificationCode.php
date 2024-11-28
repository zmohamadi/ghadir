<?php

namespace Publics\Controllers\SMSIR;

use Ipe\Sdk\Facades\SmsIr;
use Illuminate\Support\Facades\Log;

class SMSIR_VerificationCode
{
    public function sendVerifyCode($mobile, $code)
    {
        try {
            // بررسی اگر SMSIR_MOCK فعال است، کد به لاگ نوشته شود
            if (env('SMSIR_MOCK', false)) {
                Log::info("Mock Verification Code for {$mobile}: {$code}");
                return 'Mock verification code sent to log';
            }

            $templateId = 488864;
            // $templateId = 100000;
            
            $parameters = [
                [
                    // "name" => "Code",
                    "name" => "OTP",
                    "value" => $code
                ]
            ];
            return $response = SmsIr::verifySend($mobile, $templateId, $parameters);

        } catch (\Exception $e) {
            // ثبت خطا در لاگ در صورت بروز استثنا
            Log::error('Error in SMSIR VerificationCode: ' . $e->getMessage());
            return 'Error VerificationCode : ' . $e->getMessage();
        }
    }
}

?>
