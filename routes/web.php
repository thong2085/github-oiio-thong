<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Home\HomeController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\Auth\LogoutController;
use App\Http\Controllers\User\OtherController;
use App\Http\Controllers\User\UserController;
use App\Http\Controllers\User\BankController;
use App\Http\Controllers\User\ContactController;
use App\Http\Controllers\User\AddressController;
use App\Http\Controllers\Reviews\ReviewsController;
use App\Http\Controllers\Transactions\Deposit\DepositController;
use App\Http\Controllers\Transactions\Withdrawn\WithdrawnController;
use App\Http\Controllers\Transactions\History\HistoryController;
use App\Http\Controllers\Transactions\TransactionController;
use App\Http\Controllers\Job\JobController;
use App\Http\Controllers\Job\JobManagerController;
use App\Http\Controllers\Job\JobReceivedController;
use App\Http\Controllers\News\NewsController;
use App\Http\Controllers\Wallet\WalletController;

// Auth
Route::get('/', [HomeController::class, 'index'])->name('homepage');

Route::group(['prefix' => '/thong-tin', 'as' => 'info.'], function () {
    Route::get('/nguoi-dung', [OtherController::class, 'userSearch'])->name('search_user');
    Route::get('/search-user', [OtherController::class, 'userResult'])->name('user_result');
    Route::get('/nguoi-dung/{slug}', [OtherController::class, 'userDetail'])->name('user_detail');

    Route::get('/cua-hang', [OtherController::class, 'shopSearch'])->name('search_shop');
    Route::get('/search-shop', [OtherController::class, 'shopResult'])->name('shop_result');
    Route::get('/cua-hang/{slug}', [OtherController::class, 'shopDetail'])->name('shop_detail');
});

Route::group(['middleware' => 'guest'], function () {
    Route::prefix('/dang-nhap')->as('login.')->group(function () {
        Route::get('/', [LoginController::class, 'index'])->name('index');
        Route::post('/', [LoginController::class, 'login'])->name('post');
    });

    Route::prefix('/dang-ky')->as('register.')->group(function () {
        Route::get('/', [RegisterController::class, 'index'])->name('index');
        Route::post('/', [RegisterController::class, 'register'])->name('post');
    });

    Route::prefix('/quen-mat-khau')->as('password.')->group(function () {
        Route::get('/', [ForgotPasswordController::class, 'showForgetPasswordForm'])->name('get');
        Route::post('/', [ForgotPasswordController::class, 'submitForgetPasswordForm'])->name('post');
    });

    Route::prefix('/mat-khau-moi')->as('resetPwd.')->group(function () {
        Route::get('/{token}', [ForgotPasswordController::class, 'showResetPasswordForm'])->name('get');
        Route::post('/', [ForgotPasswordController::class, 'submitResetPasswordForm'])->name('post');
    });
});

// User
Route::group(['middleware' => 'auth'], function () {
    Route::post('/dang-xuat', [LogoutController::class, 'logout'])->name('logout');

    Route::prefix('/thong-tin-tai-khoan')->as('user.')->group(function () {
        Route::controller(UserController::class)->group(function () {
            Route::get('/', 'index')->name('index');
            Route::post('/', 'updateInfo')->name('updateInfo');
            Route::post('/doi-mat-khau', 'password')->name('password');

            Route::middleware('auth.member')->group(function(){
                Route::get('/tao-cua-hang', 'createShop')->name('create_shop');
                Route::post('/tao-cua-hang', 'postStore')->name('post_shop');
            });

            Route::middleware('auth.shop')->group(function(){
                Route::get('/cap-nhat-cua-hang', 'editShop')->name('edit_shop');
                Route::post('/cap-nhat-cua-hang', 'updateStore')->name('update_shop');
            });
        });

        Route::prefix('/tai-khoan-ngan-hang')->as('bank.')->group(function () {
            Route::controller(BankController::class)->group(function () {
                Route::get('/', 'index')->name('index');
                Route::post('/', 'create')->name('create');
                Route::get('/xoa/{id}', 'delete')->name('delete');
            });
        });

        Route::prefix('/thong-tin-lien-he')->as('contact.')->group(function () {
            Route::controller(ContactController::class)->group(function () {
                Route::get('/', 'index')->name('index');
                Route::post('/', 'update')->name('update');
            });
        });
    });

    Route::prefix('/danh-gia-ctv')->as('reviews.')->group(function () {
        Route::controller(ReviewsController::class)->group(function () {
            Route::get('/', 'index')->name('index');
            Route::post('/', 'create')->name('create');
            Route::get('/xoa/{id}', 'delete')->name('delete');
        });
    });


    Route::prefix('/danh-gia-shop')->as('reviewsShop.')->group(function () {
        Route::controller(ReviewsController::class)->group(function () {
            Route::get('/', 'indexShop')->name('index');
            Route::post('/', 'createShop')->name('create');
            Route::get('/xoa/{id}', 'deleteShop')->name('delete');
        });
    });

    Route::prefix('/giao-dich')->as('transaction.')->group(function () {
        Route::controller(DepositController::class)->group(function () {
            Route::prefix('/nap-tien')->as('deposit.')->group(function () {
                Route::get('/tao', 'create')->name('create');
                Route::post('/tao', 'store')->name('store');
                Route::get('/ket-qua', 'result')->name('result');
                Route::get('/', 'show')->name('show');
            });
        });

        Route::controller(WithdrawnController::class)->group(function () {
            Route::prefix('/rut-tien')->as('withdrawn.')->group(function () {
                Route::get('/tao', 'create')->name('create');
                Route::post('/tao', 'store')->name('store');
                Route::get('/', 'show')->name('show');
            });
        });

        Route::controller(HistoryController::class)->group(function () {
            Route::prefix('/lich-su')->as('history.')->group(function () {
                Route::get('/nap', 'deposit')->name('deposit');
                Route::get('/rut', 'withdrawn')->name('withdrawn');
            });
        });

        Route::controller(TransactionController::class)->group(function () {
            Route::get('/thong-ke', 'index')->name('index');
        });
    });

    Route::prefix('/vi-tien')->as('wallet.')->group(function () {
        Route::controller(WalletController::class)->group(function () {
            Route::get('/', 'show')->name('show');
        });
    });

    //jobs
    Route::prefix('/cong-viec')
    ->as('job.')
    ->group(function(){
        Route::controller(JobController::class)->group(function(){
            Route::get('/chi-tiet/{slug}', 'show')->name('show');
            Route::put('/cap-nhat-tien-trinh', 'updateProccess')->name('update_proccess');
            Route::put('/cap-nhat-lich-su-tien-trinh', 'updateHistoryProccess')->name('update_history_proccess');
            Route::put('/huy', 'cancel')->name('cancel');
        });

        Route::middleware('auth.shop')->controller(JobManagerController::class)
            ->prefix('/quan-ly')
            ->as('manager.')
            ->group(function(){
                Route::get('/danh-sach/{status}', 'index')->name('index');
                Route::get('/them', 'create')->name('create');
                Route::get('/chi-tiet/{slug}', 'show')->name('show');
                Route::put('/cap-nhat-trang-thai', 'updateStatus')->name('update_status');
                Route::post('/them', 'store')->name('store');
                Route::post('/sao-chep', 'clone')->name('clone');
            });

        Route::controller(JobReceivedController::class)
            ->prefix('/nhan-cong-viec')
            ->as('received.')
            ->group(function(){
                Route::get('/danh-sach/{status}', 'index')->name('index');
                Route::post('/them', 'store')->name('store');
                Route::get('/chi-tiet/{slug}', 'show')->name('show');
                Route::put('/cap-nhat-trang-thai', 'updateStatus')->name('update_status');
            });
    });
});

// Tin tức
Route::prefix('/tin-tuc')->as('news.')->group(function () {
    Route::controller(NewsController::class)->group(function () {
        Route::get('/', 'index')->name('index');
        Route::get('/{slug}', 'detail')->name('detail');
    });
});

// Địa chỉ
Route::get('/lay-phuong-xa-theo-quan-huyen', [AddressController::class, 'wardOfDistrict']);
Route::get('/lay-quan-huyen-theo-tinh-thanh', [AddressController::class, 'districtOfProvince']);

// Chart
Route::get('/chartjs', function () {
    return view('chartjs');
})->name('chartjs');
Route::middleware('ip.whitelist')->prefix('/giao-dich')->as('transaction.')->group(function () {
    Route::controller(DepositController::class)->group(function () {
        Route::prefix('/nap-tien')->as('deposit.')->group(function () {
            Route::get('/ipn', 'callIPNURL')->name('ipn');
        });
    });
});
