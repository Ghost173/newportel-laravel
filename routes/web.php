<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AdminController;
use App\Http\Controllers\backend\categoryController;
use App\Http\Controllers\backend\SubCategoryController;


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
Route::get('/categories', [categoryController::class, 'index'])->name('categories');
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

