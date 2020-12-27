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
/* FrontEnd Location */


Route::get('/','IndexController@homepage');
Route::get('/main','IndexController@index');
Route::get('/amb','IndexController@ambindex');
Route::get('/list-products','IndexController@shop');
Route::get('/cat/{id}','IndexController@listByCat')->name('cats');
Route::get('/product-detail/{id}','IndexController@detialpro');
////// get Attribute ////////////
Route::get('/get-product-attr','IndexController@getAttrs');
///// Cart Area /////////
Route::post('/addToCart','CartController@addToCart')->name('addToCart');
Route::get('/viewcart','UsersController@account');
Route::get('/cart/deleteItem/{id}','CartController@deleteItem');
Route::get('/cart/update-quantity/{id}/{quantity}','CartController@updateQuantity');
/////////////////////////
/// Apply Coupon Code
Route::post('/apply-coupon','CouponController@applycoupon');
/// Simple User Login /////
Route::get('/login_page','UsersController@index');
Route::post('/register_user','UsersController@register');
Route::post('/user_login','UsersController@login');
Route::get('/logout','UsersController@logout');

//// Review ////
Route::resource('/product_att','ProductAtrrController');
    Route::get('delete-attribute/{id}','ProductAtrrController@deleteAttr');


////// User Authentications ///////////
Route::group(['middleware'=>'FrontLogin_middleware'],function (){
    Route::get('/myaccount','UsersController@account');
    Route::put('/update-profile/{id}','UsersController@updateprofile');
    Route::put('/update-password/{id}','UsersController@updatepassword');
    Route::get('/check-out','CheckOutController@index');
    Route::post('/submit-checkout','CheckOutController@submitcheckout');
    Route::get('/order-review','OrdersController@index');
    Route::post('/submit-order','OrdersController@order');
    Route::get('/cod','OrdersController@cod');
    Route::get('/paypal','OrdersController@paypal');
});
///




/* Admin Location */
Auth::routes(['register'=>false]);
Route::get('/home', 'HomeController@index')->name('home');
Route::group(['prefix'=>'admin','middleware'=>['auth','admin']],function (){
    Route::get('/', 'AdminController@index')->name('admin_home');
    /// Setting Area
    Route::get('/settings', 'AdminController@settings');
    Route::get('/check-pwd','AdminController@chkPassword');
    Route::post('/update-pwd','AdminController@updatAdminPwd');
    /// Category Area
    Route::resource('/category','CategoryController');
    Route::get('delete-category/{id}','CategoryController@destroy');
    Route::get('/check_category_name','CategoryController@checkCateName');
    /// Products Area
    Route::resource('/product','ProductsController');
    Route::get('delete-product/{id}','ProductsController@destroy');
    Route::get('delete-image/{id}','ProductsController@deleteImage');
    /// Product Attribute
    Route::resource('/product_attr','ProductAtrrController');
    Route::get('delete-attribute/{id}','ProductAtrrController@deleteAttr');
    /// Product Images Gallery
    Route::resource('/image-gallery','ImagesController');
    Route::get('delete-imageGallery/{id}','ImagesController@destroy');
    /// ///////// Coupons Area //////////
    Route::resource('/coupon','CouponController');
    Route::get('delete-coupon/{id}','CouponController@destroy');
///
});


Route::get('/appointment','webcontroller@appointment')->name('appointment');
Route::get('/service_provider','webcontroller@provider')->name('provider');
Route::get('/appointment','webcontroller@appointment')->name('appointment');

;
Route::get('/barishal','AmbController@barishal')->name('amb_barishal');
Route::get('/chittagong','AmbController@chittagong')->name('amb_chittagong');
Route::get('/dhaka','AmbController@dhaka')->name('amb_dhaka');
Route::get('/khulna','AmbController@khulna')->name('amb_khulna');
Route::get('/rajshahi','AmbController@rajshahi')->name('amb_rajshahi');
Route::get('/rangpur','AmbController@rangpur')->name('amb_rangpur');
Route::get('/sylhet','AmbController@sylhet')->name('amb_sylhet');
Route::get('/mymensingh','AmbController@mymensingh')->name('amb_mymensingh');


Route::get('/amb_provider','webcontroller@amb_provider');
