<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','HomePageController@index');
Route::get('/category/{id}', 'ListingPageController@listing1');
Route::get('/author/{id}', 'ListingPageController@listing');
Route::get('/listing', 'ListingPageController@index');
Route::get('/details/{slug}', 'DetailsPageController@index')->name('details');
Route::post('/comments', 'DetailsPageController@comment');


//admin
Route::group(['prefix'=>'back','middleware'=>'auth'],function(){

       Route::get('/', 'Admin\DashboardController@index');
       //permission
       Route::get('/permission', ['uses'=>'Admin\PermissionController@index','as'=>'permission-list', 'middleware'=> 'permission:Permission List|all'] );

        Route::get('/permission/create',['uses'=>'Admin\PermissionController@create','as'=>'permission-create', 'middleware'=> 'permission:Permission List|all'] );  

        Route::post('/permission/store', ['uses'=>'Admin\PermissionController@store','as'=>'permission-store', 'middleware'=> 'permission:Permission List|all'] ); 

        Route::get('/permission/edit/{id}',  ['uses'=>'Admin\PermissionController@edit','as'=>'permission-edit', 'middleware'=> 'permission:Permission List|all'] );  

         Route::put('/permission/edit/{id}', ['uses'=>'Admin\PermissionController@update','as'=>'permission-update', 'middleware'=> 'permission:Permission List|all'] );   

         Route::delete('/permission/delete/{id}', ['uses'=>'Admin\PermissionController@destroy','as'=>'permission-delete','middleware'=> 'permission:Permission List|all'] ); 

       //Roles
    Route::get('/roles', 'Admin\RoleController@index');
    Route::get('/roles/create', 'Admin\RoleController@create');
    Route::post('/roles/store', 'Admin\RoleController@store');
    Route::get('/roles/edit/{id}', ['uses'=>'Admin\RoleController@edit','as'=>'role-edit'] );
    Route::put('/roles/edit/{id}', ['uses'=>'Admin\RoleController@update','as'=>'role-update'] );
    Route::delete('/roles/delete/{id}', ['uses'=>'Admin\RoleController@destroy','as'=>'role-delete'] );
    //author
     Route::get('/author', 'Admin\AuthorController@index');
   Route::get('/author/create', 'Admin\AuthorController@create');
   Route::post('/author/store', 'Admin\AuthorController@store');
   Route::get('/author/edit/{id}', ['uses'=>'Admin\AuthorController@edit','as'=>'author-edit'] );
   Route::put('/author/edit/{id}', ['uses'=>'Admin\AuthorController@update','as'=>'author-update'] );
   Route::delete('/author/delete/{id}', ['uses'=>'Admin\AuthorController@destroy','as'=>'author-delete'] );


   //category
Route::get('/categroies', ['uses'=>'Admin\CategoryController@index','as'=>'category-list', 'middleware'=> 'permission:Category List|all'] );
Route::get('/category/create', ['uses'=>'Admin\CategoryController@create','as'=>'category-create', 'middleware'=> 'permission:Category Create|all'] );
Route::post('/category/store', ['uses'=>'Admin\CategoryController@store','as'=>'category-store', 'middleware'=> 'permission:Category Store|all'] );
Route::put('/category/status/{id}', ['uses'=>'Admin\CategoryController@status','as'=>'category-status', 'middleware'=> 'permission:Category Store|all'] );
Route::get('/category/edit/{id}', ['uses'=>'Admin\CategoryController@edit','as'=>'category-edit', 'middleware'=> 'permission:Category edit|all'] );
Route::put('/category/update/{id}', ['uses'=>'Admin\CategoryController@update','as'=>'category-update', 'middleware'=> 'permission:Category update|all'] );
Route::delete('/category/delete/{id}', ['uses'=>'Admin\CategoryController@destroy','as'=>'category-delete', 'middleware'=> 'permission:Category delete|all'] );


//posts
Route::get('/posts', ['uses'=>'Admin\PostController@index','as'=>'post-list', 'middleware'=> 'permission:Post List|all'] );
Route::get('/posts/create', ['uses'=>'Admin\PostController@create','as'=>'post-create', 'middleware'=> 'permission:Post List|all'] );
Route::post('/post/store', ['uses'=>'Admin\PostController@store','as'=>'post-store', 'middleware'=> 'permission:Post List|all'] );
Route::put('/post/status/{id}', ['uses'=>'Admin\PostController@status','as'=>'post-status', 'middleware'=> 'permission:Post List|all'] );
Route::put('/post/hot/news/{id}', ['uses'=>'Admin\PostController@hot_news','as'=>'hot_news-status', 'middleware'=> 'permission:Post List|all'] );
Route::get('/post/edit/{id}', ['uses'=>'Admin\PostController@edit','as'=>'post-edit', 'middleware'=> 'permission:Post List|all'] );
Route::put('/post/update/{id}', ['uses'=>'Admin\PostController@update','as'=>'post-update', 'middleware'=> 'permission:Post update|all'] );
Route::delete('/post/delete/{id}', ['uses'=>'Admin\PostController@destroy','as'=>'post-delete', 'middleware'=> 'permission:Post delete|all'] );

Route::get('/comment/{id}', ['uses'=>'Admin\CommentController@index','as'=>'comment-list', 'middleware'=> 'permission:Post List|all'] );
Route::get('/comment/reply/{id}', ['uses'=>'Admin\CommentController@reply','as'=>'comment-view', 'middleware'=> 'permission:Post List|all'] );
Route::post('/comment/reply', ['uses'=>'Admin\CommentController@store','as'=>'comment-reply', 'middleware'=> 'permission:Post List|all'] );
Route::put('/comment/status/{id}', ['uses'=>'Admin\CommentController@status','as'=>'comment-status', 'middleware'=> 'permission:Post List|all'] );
Route::get('/settings', ['uses'=>'Admin\SettingController@index','as'=>'setting', 'middleware'=> 'permission:Post List|all'] );
Route::put('/settings/update', ['uses'=>'Admin\SettingController@update','as'=>'setting-update', 'middleware'=> 'permission:Post List|all'] );


   });


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
