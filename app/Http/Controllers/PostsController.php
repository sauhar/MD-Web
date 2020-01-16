<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\MenuItem;
use App\Ourpage;

class PostsController extends Controller
{
    public function ovrrec()
    {
        $post = Post::where('id',8)->first();
        $posts = Post::all();
        return view('services/overseas-recruitment')->with([
            'post'=>$post,
            'posts'=>$posts,
            'menus'=>\App\MenuItem::where('menu_id',2)->get(),
        ]);
    }
    public function tno(){
        $post= Post::where('id',7)->first();
        $posts=Post::all();
        return view('services/training-and-orientation')->with([
            'post'=>$post,
            'posts'=>$posts,
            'menus'=>\App\MenuItem::where('menu_id',2)->get(),
           
        ]);
    }
    public function tramgnt(){
        $post=Post::where('id',6)->first();
        $posts=Post::all();
        return view('services/travel-management')->with([
            'post'=>$post,
            'posts'=>$posts,
            'menus'=>\App\MenuItem::where('menu_id',2)->get(),

        ]);
    }

    public function reqdmnt(){
        $post=Post::where('id',9)->first();
        $posts=Post::all();
        return view('procedures/required-documents')->with([
            'post'=>$post,
            'posts'=>$posts,
            'menus'=>\App\MenuItem::where('menu_id',2)->get(),

        ]);
    }
    public function reqtm(){
        $post=Post::where('id',10)->first();
        $posts=Post::all();
        return view('procedures/recruitment')->with([
            'post'=>$post,
            'posts'=>$posts,
            'menus'=>\App\MenuItem::where('menu_id',2)->get(),

        ]);
    }
    public function qtr(){
        $post=Post::where('id',11)->first();
        $posts=Post::all();
        return view('client/qatar')->with([
            'post'=>$post,
            'posts'=>$posts,
            'menus'=>\App\MenuItem::where('menu_id',2)->get(),

        ]);
    }
    public function UAE(){
        $post=Post::where('id',12)->first();
        $posts=Post::all();
        return view('client/UAE')->with([
            'post'=>$post,
            'posts'=>$posts,
            'menus'=>\App\MenuItem::where('menu_id',2)->get(),

        ]);
    }
    public function saudi(){
        $post=Post::where('id',13)->first();
        $posts=Post::all();
        return view('client/saudi-arabia')->with([
            'post'=>$post,
            'posts'=>$posts,
            'menus'=>\App\MenuItem::where('menu_id',2)->get(),

        ]);
    }
    public function malya(){
        $post=Post::where('id',14)->first();
        $posts=Post::all();
        return view('client/malaysia')->with([
            'post'=>$post,
            'posts'=>$posts,
            'menus'=>\App\MenuItem::where('menu_id',2)->get(),

        ]);
    }
    
}
