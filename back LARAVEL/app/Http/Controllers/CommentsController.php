<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;


class CommentsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        {
            $comments = Comment::all();
            return response()->json($comments);
           
            
        }
    }

   
   

    public function store(Request $request)
    {
        Comment::create([
           
            'user_id' =>  auth()->id(),
            'user_nickname' => auth()->user()->nickname,
            'comment_content' => $request->input('comment_content'),
            
            'people_id' => $request->input('people_id'),
            'films_id' => $request->input('films_id'),
            'vehicles_id' => $request->input('vehicles_id'),
            'planetes_id' => $request->input('planetes_id'),
            'species_id' => $request->input('species_id'),
            'starships_id' => $request->input('starships_id'),
            'starships_id' => $request->input('starships_id'),
            
        

        ]);
        return response()->json([
            'message' => 'New Comment Added',
            'body' => $request->all(),
                
           
            ]);
    }

    

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        {
           
            return Comment::find($id);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function edit(Comment $comment)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Comment $comment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    { 
        $comment = Comment::where('id', 'like', $id)->get();
       

        if (auth()->id() == intval($comment[0]->user_id)) {
        
                Comment::where('id', $id)->delete();
                return response()->json([
                    'message' => 'Commentaire supprimé',
   
                   
                    ]);
                
           
        }
        return response()->json([
            'message' => 'Commentaire pas supprimé',

           
            ]);
    }
    public function searchbyuserid($user_id)
    {
        return Comment::where('user_id', 'like', '%'.$user_id.'%')->get();
    }
    public function searchbypeopleid($people_id)
    {
        return Comment::where('people_id', 'like', '%'.$people_id.'%')->get();
    }
    public function searchbyfilmsid($films_id)
    {
        return Comment::where('films_id', 'like', '%'.$films_id.'%')->get();
    }
    
}