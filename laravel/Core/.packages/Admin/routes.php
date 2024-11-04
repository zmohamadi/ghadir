<?php

use Illuminate\Support\Facades\Route;

// Route::resource("keywords","Base\KeywordController");
// Route::get("getCurrentSemester", "Base\YearSemesterController@getCurrentSemester");
// Route::resource("yearSemesters","Base\YearSemesterController");
// Route::resource("systems","Base\SystemController");
// Route::get("baseTools/list", "Base\ToolsController@list");
// Route::resource("baseTools","Base\ToolsController");
// Route::resource("questionTypes","Base\QuestionTypeController");


// Route::resource("users", "Person\UserController");
// Route::resource("personnels", "Person\PersonnelController");
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