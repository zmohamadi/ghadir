<?php

namespace Publics\Controllers\SMSIR;

use Ipe\Sdk\Facades\SmsIr;

class SMSIR_SendMessage
{
    // $lineNumber = "1234567890"; // شماره خط فرستنده
    // $messageTexts = [
    //     "پیام 1 برای شماره 1",
    //     "پیام 2 برای شماره 2"
    // ];
    // $mobiles = ["09123456789", "09198765432"]; // لیست شماره‌های گیرنده
    // $sendDateTime = null;   // برای ارسال آنی، مقدار را نال قرار دهید
    // $response = SmsIr::likeToLikeSend($lineNumber, $messageTexts, $mobiles, $sendDateTime);

    public function sendSMS($mobiles, $message){
        try {
            if(is_string($mobiles)) $mobiles = [$mobiles];
            if(is_string($message)) $message = [$message];
            $lineNumber = env('SMSIR_LINE_NUMBER');
            return SmsIr::likeToLikeSend($lineNumber, $message, $mobiles);

        } catch (Exeption $e) {
            echo 'Error SendMessage : '.$e->getMessage();
        }
    }
}



?> 
