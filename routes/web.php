<?php

use Illuminate\Support\Facades\Route;
use Symfony\Component\HttpFoundation\Request;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Auth;

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

Route::get('/asd', function () {
    echo "asdasd";
});



Route::group([
    'prefix' => 'frontend',
    'namespace' => 'frontend'

], function () {
    Route::get('/index', 'HomeController@index');

    Route::get('/logout', 'MemberController@logout');
    Route::get('/ad', 'MemberController@ad');

    //account
    Route::group([
        'middleware' => ['login']
    ], function () {
        Route::get('/login', 'MemberController@login');
        Route::post('/login', 'MemberController@post_login');
        Route::get('/register', 'MemberController@register')->name('register');
        Route::post('/register', 'MemberController@post_register')->name('register');
    });
    Route::group([
        'middleware' => ['member']
    ], function () {

        Route::get('/account', 'AccountController@account');
        Route::post('/account', 'AccountController@post_update')->name('post_update.post');
        Route::get('/my_product', 'AccountController@my_product');
        Route::get('/add_product', 'AccountController@add_product');
        Route::post('/add_product', 'AccountController@post_product');
        Route::get('/edit_product/{id}', 'AccountController@edit_product');
        Route::post('/edit_product/{id}', 'AccountController@post_edit_product');
        
        Route::get('/delete_product/{id}', '@delete_product_s');

        Route::post('/comment/{id}', 'BlogController@comment')->name('comment/{id}.post');
        Route::post('/rep_comment/{id}', 'BlogController@rep_comment')->name('comment/{id}.post');
        Route::post('/checkout', 'CheckoutController@post_checkout');
    });

    //product
    // Route::get('/add_product','AccountController@add_product');
    // Route::post('/add_product','AccountController@post_product');
    // Route::get('/edit_product/{id}','AccountController@edit_product');
    // Route::post('/edit_product/{id}','AccountController@post_edit_product');
    Route::get('/product_detail/{id}', 'AccountController@product_detail');
    Route::post('/ajax_add-to-cart', 'AccountController@ajax_addtocart');
    //cart
    Route::get('/cart', 'CartController@cart');
    Route::post('/ajax_up_product', 'CartController@ajax_up_product');
    Route::post('/ajax_down_product', 'CartController@ajax_down_product');
    Route::post('/ajax_delete_product', 'CartController@ajax_delete_product');
    //checkout-sendmail
    Route::get('/checkout', 'CheckoutController@checkout');
    Route::post('/checkout', 'CheckoutController@post_checkout');
    //search advanced
    Route::get('/search', 'SearchController@search');
    Route::post('/search', 'SearchController@post_search');
    //search name
    Route::post('/search_name', 'SearchController@search_name');
    //search price
    Route::post('/ajax_search_price', 'SearchController@ajax_search_price');

    //search cate,brand
    Route::get('/cate/{id}', 'SearchController@search_cate');
    Route::get('/brand/{id}', 'SearchController@search_brand');

    //lichsumuahang
    Route::get('/lichsumuahang', 'AccountController@lichsumuahang');


    //check out-send mail (mẫu)
    Route::get('/send_mail', 'MailController@sendmail');
    Route::post('/send_mail', 'MailController@post_sendmail');


    // Route::get('/cart','UserController@cart');
    // Route::get('/404','UserController@error_404');
    //blog
    Route::get('/blog', 'BlogController@blog');
    Route::get('/blog-single/{id}', 'BlogController@blog_single')->name('blog-single/{id}');
    Route::post('/blog-single', 'BlogController@blog_singlePost')->name('blog-single.post');
    // Route::post('/comment/{id}','BlogController@comment')->name('comment/{id}.post');
    // Route::post('/rep_comment/{id}','BlogController@rep_comment')->name('comment/{id}.post');

    Route::get('/ajaxRequest/{id}', 'AjaxController@ajaxRequest');
    Route::post('/ajaxRequest', 'AjaxController@ajaxRequestPost')->name('ajaxRequest.post');
    // Route::get('/checkout','UserController@checkout');
    // Route::get('/contact-us','UserController@contact_us');
    // Route::get('/login','UserController@login');
    // Route::get('/product-details','UserController@product_details');
    // Route::get('/shop','UserController@shop');

});
// backend

Auth::routes();


Route::group([
    'prefix' => 'admin',
    'namespace' => 'Admin',
    'middleware' => ['admin']
], function () {

    Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
    //profile
    Route::get('/pages-profile', 'DashboardController@pages_profile')->name('pages_profile');
    Route::post('/pages-profile', 'DashboardController@update_profile')->name('update_profiles');
    //contry
    Route::get('/country', 'DashboardController@country')->name('country');
    Route::get('/delete/{id}', 'DashboardController@delete_country')->name('delete_country');
    Route::get('/add_country', 'DashboardController@get_country')->name('add_country');
    Route::post('/add_country', 'DashboardController@post_country')->name('add_country');
    //category
    Route::get('/category', 'CategoryController@category');
    Route::get('/delete_cat/{id}', 'CategoryController@delete_cat')->name('delete_cat');
    Route::get('/add_category', 'CategoryController@get_cat');
    Route::post('/add_category', 'CategoryController@post_cat');
    //brand
    Route::get('/brand', 'BrandController@brand');
    Route::get('/delete_brand/{id}', 'BrandController@delete_brand')->name('delete_brand');
    Route::get('/add_brand', 'BrandController@get_brand');
    Route::post('/add_brand', 'BrandController@post_brand');
    //blog
    Route::get('/blog', 'BlogController@blog');
    Route::get('/add_blog', 'BlogController@add_blog')->name('add_blog');
    Route::post('/add_blog', 'BlogController@post_add_blog')->name('add_blog');
    Route::get('/delete_blog/{id}', 'BlogController@delete_blog')->name('delete_blog');
    Route::get('/edit_blog/{id}', 'BlogController@get_edit_blog')->name('edit_blog');
    Route::post('/edit_blog/{id}', 'BlogController@post_edit_blog')->name('edit_blog');

    //history
    Route::get('/history', 'DashboardController@history')->name('history');
    Route::get('/history/{id}', 'DashboardController@history_detail')->name('history');


    //product
    Route::get('/product', 'ProductController@product');
    Route::get('/add_product', 'ProductController@add_product');
    Route::post('/add_product', 'ProductController@post_add_product');


    Route::get('/edit_product/{id}', 'ProductController@edit_product');
    Route::post('/edit_product/{id}', 'ProductController@post_edit_product');

    //comment
    Route::get('/comment', 'BlogController@comment');
    Route::get('/delete_comment/{id}', 'BlogController@delete_comment');


    // ban mau
    Route::get('/form-basic', 'DashboardController@form_basic');
    Route::get('/table-basic', 'DashboardController@table_basic');
    Route::get('/starter-kit', 'DashboardController@starter_kit');
    // Route::get('/test',function(){
    //     return view('admin/dashboard/test');
    // });

});
