<?php

namespace Publics\Controllers\SMSIR;

use Cryptommer\Smsir\Smsir;

class SMSIR_SendMessage
{

   
            
    public function sendSMS($mobiles, $message){
        try {
            date_default_timezone_set("Asia/Tehran");

            if(is_string($mobiles)) $mobiles = [$mobiles];

            $line_number = env('SMSIR_LINE_NUMBER');
            $send = smsir::Send();

            return $send->bulk($message, $mobiles, NULL, $line_number);

        } catch (Exeption $e) {
            echo 'Error SendMessage : '.$e->getMessage();
        }
    }
}



?> 
