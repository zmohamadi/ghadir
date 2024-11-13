<?php

namespace Publics\Controllers\SMSIR;

use Cryptommer\Smsir\Smsir;
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

            $send = Smsir::Send();
            $templateId = 488864;
            
            // تعریف پارامترهای کد تأیید
            $parameter = new \Cryptommer\Smsir\Objects\Parameters('CODE', $code);
            $parameters = [$parameter];
            
            // ارسال پیامک تأیید
            return $send->Verify($mobile, $templateId, $parameters);

        } catch (\Exception $e) {
            // ثبت خطا در لاگ در صورت بروز استثنا
            Log::error('Error in SMSIR VerificationCode: ' . $e->getMessage());
            return 'Error VerificationCode : ' . $e->getMessage();
        }
    }
}

?>
