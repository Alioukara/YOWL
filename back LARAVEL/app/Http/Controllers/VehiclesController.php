<?php

namespace App\Http\Controllers;


use App\Http\Resources\VehiclesResource;

use App\Models\Vehicles;
use Illuminate\Http\Request;


class VehiclesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function allVehicles()
    {
        $vehicles = Vehicles::all();
        return response()->json($vehicles);
        // return VehiclesResource::collection(Vehicles::all());
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'specie' => 'required',
            'picture_url' => 'required',
            
        ]);

        return Vehicles::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Vehicles::find($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $Vehicles = Vehicles::find($id);
        $Vehicles->update($request->all());
        return $Vehicles;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Vehicles::destroy($id);
    }

     /**
     * Search for a name
     *
     * @param  str  $name
     * @return \Illuminate\Http\Response
     */
    public function search($name)
    {
        // return Vehicles::where('name', 'like', '%'.$name.'%')->get();/////recherche approximative
       
    {
        return Vehicles::where('name', $name)->get();
    }
    }
}