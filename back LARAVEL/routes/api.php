<?php


use App\Http\Controllers\AuthController;
use App\Http\Controllers\PeopleController;
use App\Http\Controllers\FilmsController;
use App\Http\Controllers\VehiclesController;
use App\Http\Controllers\CommentsController;
use App\Http\Controllers\PlanetesController;
use Faker\Guesser\Name;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//******************************USERS*****************************

//Routes PUBLIQUES ALL USERS,SIGN UP, SIGNIN, LOGOUT//
    Route::get('/users', [AuthController::class, 'users']);
    Route::post( '/register', [AuthController::class, 'register']);
    Route::post('/login', [AuthController::class, 'login']);
    Route::get('/users/{id}', [AuthController::class, 'show']);
    Route::get('/users/{token}', [AuthrController::class, 'showbytoken']);


//Routes PRIVEES//
    Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get( '/user', [AuthController::class, 'user']);
});

//******************************USERS*****************************

//******************************PEOPLE*****************************
//Routes PUBLIQUES
Route::get('/people', [PeopleController::class, 'allpeople']);
Route::get('/people/{id}', [PeopleController::class, 'show']);
Route::get('/people/search/{name}', [PeopleController::class, 'search']);
//Routes PRIVEES//
Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/people', [PeopleController::class, 'store']);
    Route::put('/people/{id}', [PeopleController::class, 'update']);
    Route::delete('/people/{id}', [PeopleController::class, 'destroy']);
   
});
//******************************PEOPLE*****************************
//******************************Vehicles*****************************
//Routes PUBLIQUES
Route::get('/vehicles', [VehiclesController::class, 'allVehicles']);
Route::get('/vehicles/{id}', [VehiclesController::class, 'show']);
Route::get('/vehicles/search/{name}', [VehiclesController::class, 'search']);
//Routes PRIVEES//
Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/vehicles', [VehiclesController::class, 'store']);
    Route::put('/vehicles/{id}', [VehiclesController::class, 'update']);
    Route::delete('/vehicles/{id}', [VehiclesController::class, 'destroy']);
   
});
//******************************vehicles*****************************


//******************************FILMS*****************************
//Routes PUBLIQUES
Route::get('/films', [FilmsController::class, 'allfilms']);
Route::get('/planetes', [PlanetesController::class, 'allPlanetes']);
Route::get('/films/{id}', [FilmsController::class, 'show']);
Route::get('/films/search/{name}', [FilmsController::class, 'search']);
//Routes PRIVEES//
Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/films', [FilmsController::class, 'store']);
    Route::put('/films/{id}', [FilmsController::class, 'update']);
    Route::delete('/films/{id}', [FilmsController::class, 'destroy']);
   
});

//******************************FILMS*****************************

//******************************COMMENTS*****************************
//Routes PUBLIQUES
Route::get('/comments', [CommentsController::class, 'index']);
    Route::get('/comments/{id}', [CommentsController::class, 'show']);
    Route::get('/comments/searchname/{name}', [CommentsController::class, 'search']);
    Route::get('/comments/search/{user_id}', [CommentsController::class, 'searchbyuserid']);
    Route::get('/comments/search/people/{people_id}', [CommentsController::class, 'searchbypeopleid']);
    Route::get('/comments/search/films/{films_id}', [CommentsController::class, 'searchbyfilmsid']);

//Routes PRIVEES//
Route::group(['middleware' => ['auth:sanctum']], function () {
    
    Route::post('/store', [CommentsController::class, 'store']);
    Route::put('/comments/{id}', [CommentsController::class, 'update']);
    Route::delete('/comments/{id}', [CommentsController::class, 'destroy']);
});

//******************************COMMENTS*****************************








// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });