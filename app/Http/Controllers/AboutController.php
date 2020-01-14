<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MenuItem;
use App\Post;
use App\Menu;
use App\Ourpage;

class AboutController extends Controller
{
    public function post()
    {

        
        $menus = menu::where('id',5)->get();

        return view('about')->with([
            
            'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
        ]);

    }
    public function msgfrmchm()
    {
        
        $ourpage = Ourpage::where('id',1)->first();
        $ourpages = Ourpage::all();

        return view('about/message-from-chairman')->with([
            'ourpage'=>$ourpage,
            'ourpages'=>$ourpages,
            'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
        ]);
    }
    public function msgfrmmd()
    {
        $ourpage = Ourpage::where('id',2)->first();
        $ourpages = Ourpage::all();

        return view('about/message-from-managing-director')->with([
            'ourpage'=>$ourpage,
            'ourpages'=>$ourpages,
            'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
        ]);
    }
    public function msgfrmbdd()
    {
        $ourpage = Ourpage::where('id',3)->first();
        $ourpages = Ourpage::all();

        return view('about/message-from-business-development-director')->with([
            'ourpage'=>$ourpage,
            'ourpages'=>$ourpages,
            'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
        ]);
    }
    public function lnc()
    {
        $ourpage = Ourpage::where('id',5)->first();
        $ourpages = Ourpage::all();

        return view('about/license-certificate')->with([
            'ourpage'=>$ourpage,
            'ourpages'=>$ourpages,
            'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
        ]);
    }

     
}