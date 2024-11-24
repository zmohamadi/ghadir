<?php

use Illuminate\Support\Facades\Route;


Route::get("supports/get-needles", "SupportController@getNeedles");
Route::resource("supports", "SupportController");

Route::get("reports/get-needles", "PromotionReportController@getNeedles");
Route::resource("reports", "PromotionReportController");

// Route::post("agree/{id}", "Person\UserController@changeRole");
Route::get("agree/get-needles", "PromotionAgreeController@getNeedles");
Route::resource("agree", "PromotionAgreeController");

Route::get("promotions/get-needles", "PromotionController@getNeedles");
Route::resource("promotions", "PromotionController");

Route::get("users/change-status/get-needles", "Person\UserController@changeRoleGetNeedles");
Route::post("users/change-status/{id}", "Person\UserController@changeRole");
Route::put("users/change-password", "Person\UserController@changePassword");

// Route::put("users/edit-email/{id}", "Person\UserController@editEmail");
// Route::get("users/{id}", "Person\UserController@showInfo");
// Route::get("users/get-needles", "Person\UserController@getNeedles");


Route::get("promoters/get-needles", "Person\PromoterController@getNeedles");
Route::resource("promoters", "Person\PromoterController");
Route::resource("personnels", "Person\PersonnelController");
// Route::resource("users", "Person\UserController");
// Route::resource("roles", "Person\RoleController");

// ======================================== Start Routes Content ======================================================
Route::get("blogs/get-needles", "Content\BlogController@getNeedles");
Route::get("blogs/details/{id}", "Content\BlogController@details");
Route::resource("blogs", "Content\BlogController");
// Route::resource("/blog-subjects", "Content\BlogSubjectController");
Route::post("blog-comments/send", "Content\BlogCommentController@sendComment");
Route::put("blog-comments/delete/{id}", "Content\BlogCommentController@deleteComment");
Route::get("blog-comments/details/{id}", "Content\BlogCommentController@details");
Route::resource("/blog-comments", "Content\BlogCommentController");
// ======================================== End Routes Content ======================================================
// ======================================== Start Routes Ticket ======================================================
Route::get("tickets/get-needles", "Ticket\TicketController@getNeedles");
Route::get("tickets/details/{id}", "Ticket\TicketController@details");
Route::get("tickets/get-data", "Ticket\TicketController@getData");
Route::resource("tickets", "Ticket\TicketController");

Route::resource("/ticket-subjects", "Ticket\TicketSubjectController");
// ======================================== End Routes Ticket ======================================================

Route::get('/user',"Auth\UserInfo@getInfo");
Route::post('/login',"Auth\AuthenticatedController@store");
Route::post('/login-with-code',"Auth\AuthenticatedController@loginWithCode");
Route::post('/login-check',"Auth\AuthenticatedController@verifyCheck");
Route::post('/verify',"Auth\RegisterController@verifyCheck");
Route::post('/register',"Auth\RegisterController@register");
Route::get('/resend-code/{mobile}',"Auth\RegisterController@resendVerifyCode");
// Route::get('/resend-code/{mobile}', [Auth\RegisterController::class, 'resendVerifyCode'])->name('resend.verify.code');
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

Route::get('/home', 'Base\HomeController@home');

Route::post('/breadcrumb', 'Public\Breadcrumb@getItems');
