<?php

namespace App\Http\Controllers;



use App\Models\Planete;
use Illuminate\Http\Request;


class PlanetesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function allPlanetes()
    {
        $planetes = Planete::all();
        return response()->json($planetes);
        // return VehiclesResource::collection(Vehicles::all());
        
    }

   
}