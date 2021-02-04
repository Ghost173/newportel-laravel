<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AdminController;
use App\Http\Controllers\backend\categoryController;
use App\Http\Controllers\backend\SubCategoryController;
use App\Http\Controllers\backend\DistrictController;
use App\Http\Controllers\backend\SubDistrictController;
use App\Http\Controllers\backend\PostController;
use App\Http\Controllers\backend\SettingController;

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
    return view('welcome');
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

