<?php

namespace App\Http\Controllers;


use App\Http\Resources\PeopleResource;

use App\Models\People;
use Illuminate\Http\Request;


class PeopleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function allpeople()
    {
        $people = People::all();
        return response()->json($people);
        // return PeopleResource::collection(People::all());
        
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
            'species' => 'required',
            'gender' => 'required',
            'hair_color' => 'required',
            'eye_color' => 'required',
            'birthyear' => 'required',
            'height' => 'required',
            'body_mass' => 'required',
            'picture_url' => 'required',
            
        ]);

        return People::create($request->all());
    }
  
  
    
    
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return People::find($id);
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
        $People = People::find($id);
        $People->update($request->all());
        return $People;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
        return People::destroy($id);
    }

     /**
     * Search for a name
     *
     * @param  str  $name
     * @return \Illuminate\Http\Response
     */
    public function search($name)
    {
        // return People::where('name', 'like', '%'.$name.'%')->get();/////recherche approximative
       
    {
        return People::where('name', $name)->get();
    }
    }
}