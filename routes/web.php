<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AdminController;
use App\Http\Controllers\backend\categoryController;
use App\Http\Controllers\backend\SubCategoryController;
use App\Http\Controllers\backend\DistrictController;
use App\Http\Controllers\backend\SubDistrictController;
use App\Http\Controllers\backend\PostController;
use App\Http\Controllers\backend\SettingController;
use App\Http\Controllers\backend\WebsiteController;
use App\Http\Controllers\backend\PhotoController;
use App\Http\Controllers\frontend\ExtraController;


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

Route::get('/', function () {
    return view('main.home');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('admin.index');
})->name('dashboard');


Route::get('/admin/logout', [AdminController::class, 'Logout'])->name('admin.logout');


//Admin category all routes 
Route::middleware(['auth:sanctum', 'verified'])->get('/categories', [categoryController::class, 'index'])->name('categories');
Route::get('add/category', [categoryController::class, 'AddCategory'])->name('add.category');
Route::post('store/category', [categoryController::class, 'StoreCategory'])->name('store.category');
Route::get('edit/category/{id}', [categoryController::class, 'EditCategory'])->name('edit.category');
Route::post('update/category/{id}', [categoryController::class, 'updateCategory'])->name('update.category');
Route::get('delete/category/{id}', [categoryController::class, 'deleteCategory'])->name('delete.category');

//admin subcategory routes
Route::get('/subcategories', [SubCategoryController::class, 'index'])->name('subcategories');
Route::get('/add/subcategories', [SubCategoryController::class, 'AddsubCategory'])->name('add.subcategory');
Route::post('store/subcategory', [SubCategoryController::class, 'StoresubCategory'])->name('store.subcategory');
Route::get('edit/subcategory/{id}', [SubCategoryController::class, 'EditsubCategory'])->name('edit.subcategory');
Route::post('update/subcategory/{id}', [SubCategoryController::class, 'updatesubCategory'])->name('update.subcategory');
Route::get('delete/subcategory/{id}', [SubCategoryController::class, 'deletesubCategory'])->name('delete.subcategory');


//admin district routes
Route::get('/district', [DistrictController::class, 'index'])->name('district');
Route::get('add/district', [DistrictController::class, 'AddDistrict'])->name('add.district');
Route::post('store/district', [DistrictController::class, 'StoreDistrict'])->name('store.district');
Route::get('edit/district/{id}', [DistrictController::class, 'Editdistrict'])->name('edit.district');
Route::post('update/district/{id}', [DistrictController::class, 'updatedistrict'])->name('update.district');
Route::get('delete/district/{id}', [DistrictController::class, 'deletedistrict'])->name('delete.district');

//admin district routes
Route::get('/subdistrict', [SubDistrictController::class, 'index'])->name('subdistrict');
Route::get('add/subdistrict', [SubDistrictController::class, 'Addsubdistrict'])->name('add.subdistrict');
Route::post('store/subdistrict', [SubDistrictController::class, 'Storesubdistrict'])->name('store.subdistrict');
Route::get('edit/subdistrict/{id}', [SubDistrictController::class, 'Editsubdistrict'])->name('edit.subdistrict');
Route::post('update/subdistrict/{id}', [SubDistrictController::class, 'updatesubdistrict'])->name('update.subdistrict');
Route::get('delete/subdistrict/{id}', [SubDistrictController::class, 'deletesubdistrict'])->name('delete.subdistrict');


//json data for sub catgeory and district
Route::get('get/subcategory/{category_id}', [PostController::class, 'GetSubCateory']);
Route::get('get/subdistrict/{district_id}', [PostController::class, 'GetSubDistrict']);


//admin post routes
Route::get('/createpost', [PostController::class, 'index'])->name('create.post');
Route::post('/storepost', [PostController::class, 'StorePost'])->name('store.post');
Route::get('/allpost', [PostController::class, 'allpost'])->name('all.post');
Route::get('/editpost/{id}', [PostController::class, 'editpost'])->name('edit.post');
Route::post('/update/post/{id}', [PostController::class, 'updatepost'])->name('update.post');
Route::get('delete/post/{id}', [PostController::class, 'deletepost'])->name('delete.post');

//Admin settings
Route::get('social/setting', [SettingController::class, 'SocialSettingpost'])->name('social.setting');
Route::post('social/setting/{id}', [SettingController::class, 'updatesocial'])->name('update.social');

//admin seo
Route::get('seo/setting', [SettingController::class, 'seosetting'])->name('seo.setting');
Route::post('seo/setting/{id}', [SettingController::class, 'updateseo'])->name('update.seo');

//admin items
Route::get('partner/setting', [SettingController::class, 'itemsetting'])->name('item.setting');
Route::post('partner/setting/{id}', [SettingController::class, 'updateitem'])->name('update.partners');

//admin live tv
Route::get('livetv/setting', [SettingController::class, 'livetvetting'])->name('livetv.setting');
Route::post('livetv/setting/{id}', [SettingController::class, 'updatelivetv'])->name('update.livetv');
Route::get('livetv/active/{id}', [SettingController::class, 'livetvactive'])->name('active.livetv');
Route::get('livetv/deactive/{id}', [SettingController::class, 'livetvdeactive'])->name('deactive.livetv');

//admin notices
Route::get('notice/setting', [SettingController::class, 'noticeseting'])->name('notice.setting');
Route::post('notice/setting/{id}', [SettingController::class, 'updatenotice'])->name('update.notice');
Route::get('notice/active/{id}', [SettingController::class, 'noticeactive'])->name('active.notice');
Route::get('notice/deactive/{id}', [SettingController::class, 'noticedeactive'])->name('deactive.notice');

//adminwebsite
Route::get('website/setting', [WebsiteController::class, 'websitesetting'])->name('all.website');
Route::get('website/add', [WebsiteController::class, 'addwebsite'])->name('add.website');
Route::post('website/store', [WebsiteController::class, 'storewebsite'])->name('store.website');
Route::get('website/edit/{id}', [WebsiteController::class, 'editwebsite'])->name('edit.website');
Route::post('website/update/{id}', [WebsiteController::class, 'updatewebsite'])->name('update.website');
Route::get('website/delete/{id}', [WebsiteController::class, 'deletewebsite'])->name('delete.website');

//admin4to
Route::get('photo/setting', [PhotoController::class, 'photogallery'])->name('photo');
Route::get('photo/add', [PhotoController::class, 'addphoto'])->name('add.photo');
Route::post('store/photo', [PhotoController::class, 'storephoto'])->name('store.photo');
Route::get('photo/edit/{id}', [PhotoController::class, 'editphoto'])->name('edit.photo');
Route::post('update/photo/{id}', [PhotoController::class, 'updatephoto'])->name('update.photo');
Route::get('delete/photo/{id}', [PhotoController::class, 'deletephoto'])->name('delete.photo');

//admin vide
Route::get('video/galley', [PhotoController::class, 'videogalley'])->name('video');
Route::get('photo/video', [PhotoController::class, 'addvideo'])->name('add.video');
Route::post('store/video', [PhotoController::class, 'storevideo'])->name('store.video');
Route::get('video/edit/{id}', [PhotoController::class, 'editvideo'])->name('edit.video');
Route::post('video/edit/{id}', [PhotoController::class, 'updateviedo'])->name('update.video');
Route::get('delete/video/{id}', [PhotoController::class, 'deletedelete'])->name('delete.video');








///frornt end
Route::get('lang/tamil', [ExtraController::class, 'tamil'])->name('lang.tamil');
Route::get('lang/english', [ExtraController::class, 'english'])->name('lang.english');