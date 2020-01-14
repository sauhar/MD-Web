<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CreatepostsController extends Controller
{
      /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts =  Post::orderBy('created_at', 'desc') -> paginate(6);
        return view('posts.index') -> with('posts', $posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('create.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this -> validate($request, [
            'title' => 'required',
            'body' => 'required',
            'cover_image' => 'image|nullable|max:1999'
            ]);
            $fileNameToStore = "noimage.jpg";
            //Handle File Upload
       if($request->hasFile('cover_image') ){

        //Get file name with extension
        $filenaMEWithExt = $request ->file('cover_image') ->getClientOriginalName();
        //get just file name

        $filename = pathinfo($filenaMEWithExt , PATHINFO_FILENAME);
        //get just extension
        $extension = $request ->file('cover_image')->getClientOriginalExtension();
        //filename to store
        $fileNameToStore =$filename.'_'.time().'.'.$extension;
        //upload image
        $path = $request->file('cover_image')->storeAs('public/cover_images',$fileNameToStore);



       }

            //Create Post
        $post = new Post;
        $post ->title = $request -> input('title');
        $post ->body = $request -> input('body');
        $post ->cover_image = $fileNameToStore;
        $post -> save();
        return redirect('/posts') -> with('success' , 'Post Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function meronam($sauhar){
        return  $sauhar;
    }
    public function show($id)
    {
        $post = Post::find($id);
        return view('pages.about-company')->with([
            'post'=>$post
        ]);
       
        // return view('posts.show') ->with('post', $post);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);
        return view('posts.edit') ->with('post', $post);
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
        $this -> validate($request, [
            'title' => 'required',
            'body' => 'required'
        ]);

        
        $post = Post::find($id);
        $post ->title = $request -> input('title');
        $post ->body = $request -> input('body');
        $fileNameToStore=0;
        if($request ->hasFile('cover_image')){
          $post->cover_image = $fileNameToStore;
       }
    
        $post -> save();
       

        return redirect('/posts') -> with('success' , 'Post Updated');
   }
   
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
