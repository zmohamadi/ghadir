<?php

use Illuminate\Support\Facades\Route;


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


Route::get('/user',"Auth\UserInfo@getInfo");
Route::post('/login',"Auth\AuthenticatedController@store");
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