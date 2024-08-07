<?php

use \App\Http\Controllers\Members;
use Illuminate\Support\Facades\Route;

Route::prefix('/hozory/')->group(function () {
    Route::get('index' , [Members::class , 'index'])->name('question.config');
});
