<?php

namespace Publics\Controllers\SMSIR;

use Ipe\Sdk\Facades\SmsIr;

class SMSIR_SendMessage
{
            
    public function sendSMS($mobiles, $message){
        try {
            if(is_string($mobiles)) $mobiles = [$mobiles];
            $lineNumber = env('SMSIR_LINE_NUMBER');
            return SmsIr::likeToLikeSend($lineNumber, $message, $mobiles);;

        } catch (Exeption $e) {
            echo 'Error SendMessage : '.$e->getMessage();
        }
    }
}



?> 
