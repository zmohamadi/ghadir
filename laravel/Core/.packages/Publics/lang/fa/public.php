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
   'promoter'=>'مبلغ',
   'star'=>'امتیاز',
   'commitments'=>'تعهدات',
   'description'=>'توضیحات',
   'year'=>'سال',
   'register_status'=>'وضعیت ثبت نام',
   'report_status'=>'وضعیت گزارش دهی',
   'report'=>'گزارش',
   'promotion'=>'تبلیغ',
   'tribune'=>'منبر',
   'course'=>'دوره',
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
   ''
   
   

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
