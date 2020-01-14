<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MenuItem;

class PagesController extends Controller
{

    
    public function contact(){
        $menus = MenuItem::where('menu_id',2)->orderBy('order')->get();

        return view('contact')->with([
            'menus'=>$menus
        ]);;
    }
}