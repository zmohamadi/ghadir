<?php

$lang = [
   'not_citizen'=>'اتباع',
   'im_citizen'=>'ایرانی',
   'codemeli'=>'کدملی',
   'khadamat_code'=>'کد مرکز خدمات',
   'tablighat_office_code'=>'کد دفتر تبلیغات',
   'tablighat_organization_code'=>'کد سازمان تبلیغات',
   'ovghaf_code'=>'کد اوقاف',
   'bank_account_number'=>'شماره حساب بانکی',
   'postal_code'=>'کدپستی',
   'province'=>'استان',
   'city'=>'شهر',
   'village'=>'روستا',
   'address'=>'آدرس',
   'level'=>'سطح',
   'education'=>'تحصیلات',
   'citizen'=>'تابعیت',
   'city_sh'=>'شهرستان',
   'photo'=>'عکس',
   'promoter'=>'مبلّغ',
   'star'=>'امتیاز',
   'commitments'=>'تعهدات',
   'description'=>'توضیحات',
   'year'=>'سال',
   'register_status'=>'وضعیت ثبت نام',
   'report_status'=>'وضعیت گزارش دهی',
   'report'=>'گزارش',
   'promotion'=>'تبلیغ',
   'tribune'=>'منبر',
   'tribunes'=>'منبرها',
   'course'=>'دوره',
   'courses'=>'دوره ها',
   'has_course'=>'دوره دارد ؟ ',
   'has_tribune'=>'منبر دارد ؟',
   'has'=>'دارد',
   'ritual'=>'شعائر',
   'type'=>'نوع',
   'occasion'=>'مناسبت',
   'pack_items'=>'اقلام بسته',
   'amount'=>'مبلغ',
   'support'=>'حمایت',
   'job_position'=>'مسئولیت',
   'included_users'=>'افراد مشمول',
   'change'=>'تغییر',
   'new_password_confirmation'=>'تایید رمزعبور',
   'note'=>'یادداشت',
   'notes'=>'یادداشت ها',
   'promotion_info'=>'اطلاعات تبلیغی',
   'personal_info'=>'اطلاعات فردی',
   'place_name'=>'مکان',
   'promotion_position'=>'جایگاه تبلیغی',
   'cultural_users_p'=>'افرادی که با شما در امور فرهنگی همکاری سازنده دارند یا در محل تبلیغ شما تاثیر گزارند ',
   'amount_if'=>'مبلغ (اگر بسته مالی ست وارد کنید)',
   'registerPromotion'=>'ثبت نام تبلیغ',
   'select_promotion'=>'انتخاب تبلیغ',
   'duration'=>'مدت زمان',
   'people_count'=>'تعداد مخاطب',
   'audiencetype'=>'نوع مخاطب',
   'pro_people_count'=>'تعداد مشارکت',
   'report_count'=>'تعداد گزارش',
   'sum_support'=>'مجموع حمایت ها',
   'promotion_details'=>'جزییات اطلاعیه ی تبلیغ',
   'yes'=>'بله',
   'no'=>'خیر',
   'open'=>'باز',
   'close'=>'بسته',
   'ready'=>'داوطلب هستم',
   'holding_course'=>'برگزاری دوره',
   'register_promotion'=>'ثبتنام در تبلیغ',
   'you_registered'=>'شما قبلا ثبتنام کرده اید !',
   'created_at'=>'تاریخ ثبت',
   'promoters_registered'=>'مبلّغ هایی که ثبت نام کرده اند !',
   'promoters_reports'=>'گزارش هایی که مبلّغین ثبت کرده اند !',
   'supports_promoions'=>'حمایتهای که برای این تبلیغ اجرا شده است !',
   'you_send_photo'=>'عکس ارسالی از شما',
   'user_courses'=>'دوره هایی که مبلّغ برگزار کرده است !',
   'user_tribunes'=>'منبرهایی که مبلّغ برگزار کرده است !',
   'user_ritual'=>'شعائری که مبلّغ اجرا کرده است !',
   'confirm_status'=>'وضعیت تایید',
   'last_login'=>'آخرین بازدید',
   'status_reply'=>'وضعیت پاسخ',
   'status_ticket'=>'وضعیت تیکت',
   'specifications'=>'مشخصات',
   'documents'=>'فایل ها',
   'videos' => 'ویدئوها',
   'not_check_comments' => 'پیام های نیاز به بررسی',
   'view_info' => 'مشاهده جزییات',
   'creator_record' => 'ثبت کننده',
   'editor_record' => 'ویرایش کننده',
   'to_answer' => 'پاسخ دادن',
   'text_comments_yes' => 'پیام های شما',
   'text_comments_no' => 'در حال حاضر پیامی ثبت نشده است',
   'edit_comment' => 'ویرایش پیام',
   'confirm' => 'تأیید',
   'rejected' => 'رد',
   'cancel' => 'انصراف',
   'reply_status' => 'وضعیت پاسخ',
   'comment_status' => 'وضعیت پیام',
   'media' => 'آپلود رسانه',
   'ticket_text' => 'متن تیکت',
   'check_priority' => 'اولویت بررسی',
   'accept_format'=>'فرمت های آپلود',
   'evaluate'=>'امتیاز',
   'your_evaluate'=>'امتیاز شما',
   'comment' => 'پیام',
   'by' => 'توسط',
   'y'=>'ی',
];

$menus = include(__DIR__.'/./menus.php');
$lang = array_merge($lang, $menus);

$login = include(__DIR__.'/./login.php');
$lang = array_merge($lang, $login);

$menus = include(__DIR__.'/./menus.php');
$lang = array_merge($lang, $menus);

$breadcrumbs = include(__DIR__.'/./breadcrumbs.php');
$lang = array_merge($lang, $breadcrumbs);

$adminPublic = include(__DIR__.'/./admin-public.php');
$lang = array_merge($lang, $adminPublic);

if (\App::getLocale() == 'en') {
    $lang2 = include(__DIR__.'/./fa-words.php');
    $lang = array_merge($lang, $lang2);
}

return $lang;
?>
