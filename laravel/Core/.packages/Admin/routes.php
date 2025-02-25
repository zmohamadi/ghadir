<?php

use Illuminate\Support\Facades\Route;

Route::get("home", "Person\UserController@home");
Route::get('/export-promoters', "Person\PromoterController@exportExcel");
Route::get('/export-agree', "PromotionAgreeController@exportExcel");
Route::get('/export-reports', "PromotionReportController@exportExcel");
Route::get('/export-courses', "CourseController@exportExcel");
Route::get('/export-rituals', "RitualReportController@exportExcel");
Route::get('/export-tribunes', "TribuneController@exportExcel");

Route::get("search-promoter/{promoter}/{course}", "SupportController@searchPromoter");
Route::get("promoters/in-support/{support}", "SupportController@promoterList");
Route::post("supports/{support}/promoters/new", "SupportController@newPromoter");

Route::get("supports/get-needles", "SupportController@getNeedles");
Route::resource("supports", "SupportController");

Route::get("get-report", "PromotionReportController@getReportForLastPromotion");
Route::get("reports/get-needles", "PromotionReportController@getNeedles");
Route::resource("reports", "PromotionReportController");

Route::get("agree/get-needles", "PromotionAgreeController@getNeedles");
Route::resource("agree", "PromotionAgreeController");

// Route::get("notif/get-needles", "NotifController@getNeedles");
Route::resource("notif", "NotifController");

Route::get("courses/get-needles", "CourseController@getNeedles");
Route::resource("courses", "CourseController");

Route::get("rituals/get-needles", "RitualReportController@getNeedles");
Route::resource("rituals", "RitualReportController");

Route::get("statistics/get-needles", "TribuneController@getNeedles");

Route::get("tribunes/get-needles", "TribuneController@getNeedles");
Route::resource("tribunes", "TribuneController");

Route::get("promotions/get-needles", "PromotionController@getNeedles");
Route::resource("promotions", "PromotionController");

Route::get("users/change-status/get-needles", "Person\UserController@changeRoleGetNeedles");
Route::post("users/change-status/{id}", "Person\UserController@changeRole");
Route::put("users/change-password", "Person\UserController@changePassword");

Route::get("promoters/get-needles", "Person\PromoterController@getNeedles");
Route::resource("promoters", "Person\PromoterController");
Route::get("personnels/get-needles", "Person\PersonnelController@getNeedles");
Route::resource("personnels", "Person\PersonnelController");

// ======================================== Start Routes Content ======================================================
Route::get("blogs/get-needles", "Content\BlogController@getNeedles");
Route::get("blogs/details/{id}", "Content\BlogController@details");
Route::resource("blogs", "Content\BlogController");
Route::post("blog-comments/send", "Content\BlogCommentController@sendComment");
Route::put("blog-comments/delete/{id}", "Content\BlogCommentController@deleteComment");
Route::get("blog-comments/details/{id}", "Content\BlogCommentController@details");
Route::resource("/blog-comments", "Content\BlogCommentController");
// ======================================== End Routes Content ======================================================
// ======================================== Start Routes Ticket ======================================================
Route::post("ticket-items/send/{id}", "Ticket\TicketController@saveItem");
Route::get("ticket-items/get-replyStatus", "Ticket\TicketController@getReplyStatus");
Route::get("ticket-items/list", "Ticket\TicketController@listItems");

Route::put("tickets/save-evaluate/{id}", "Ticket\TicketController@saveEvaluate");
Route::get("tickets/details/{id}", "Ticket\TicketController@details");
Route::get("tickets/get-data", "Ticket\TicketController@getData");
Route::resource("tickets", "Ticket\TicketController");

Route::resource("ticket-subjects", "Ticket\TicketSubjectController");
// ======================================== End Routes Ticket ======================================================

Route::get('/user',"Auth\UserInfo@getInfo");
Route::post('/login',"Auth\AuthenticatedController@store");
Route::post('/login-with-code',"Auth\AuthenticatedController@loginWithCode");
Route::post('/login-check',"Auth\AuthenticatedController@verifyCheck");
Route::post('/verify',"Auth\RegisterController@verifyCheck");
Route::post('/register',"Auth\RegisterController@register");
Route::get('/resend-code/{mobile}',"Auth\RegisterController@resendVerifyCode");
Route::post('/logout',"Auth\AuthenticatedController@destroy");

Route::get('/langs',function(){
    $objects = [
        "public"=>\Lang::get("AdminLang::public"),
        'local'=>\Config::get("app.locale"),
        'langs'=> \Models\Base\Language::where('status_id', 1)->get()];
    return response()->json($objects);
});

// ================ Start Routes Uploads =======================================
Route::post('tinyUpload/{dir}', 'Public\Upload@tinyUpload');
Route::post('upload/{dir}', 'Public\Upload@uploadFile');
Route::post('ckupload/{dir}', 'Public\Upload@ckUpload');
Route::get('deleteFile/{dir}/{file}', 'Public\Upload@deleteFile');
// ================ End Routes Uploads =========================================

Route::get('/home/{panel}/{user}', 'Base\HomeController@home');

Route::post('/breadcrumb', 'Public\Breadcrumb@getItems');

Route::get('/statistics', 'Base\HomeController@statistics');

Route::post('/closeAlert/{id}', 'Base\HomeController@closeAlert');