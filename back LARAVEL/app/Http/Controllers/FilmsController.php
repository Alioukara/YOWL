<?php

namespace App\Http\Controllers;

use App\Models\Films;
use Illuminate\Http\Request;
use App\Http\Resources\FilmsResource;

class FilmsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function allfilms()
    {
        $films = Films::all();
        return response()->json($films);
        // return FilmsResource::collection(Films::all());
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
            'title' => 'required',            
            'opening_crawl' => 'required',
            'director' => 'required',
            'release_date' => 'required',
            'picture_url' => 'required',
            
        ]);

        return Films::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Films::find($id);
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
        $Films = Films::find($id);
        $Films->update($request->all());
        return $Films;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Films::destroy($id);
    }

     /**
     * Search for title
     *
     * @param  str  $title
     * @return \Illuminate\Http\Response
     */
    public function search($title)
    {
        return Films::where('name', 'like', '%'.$title.'%')->get();
    }
}