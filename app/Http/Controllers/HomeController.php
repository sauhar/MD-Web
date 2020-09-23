<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MenuItem;
use App\Menu;
use App\Contactside;
use App\LogoImage;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    // public function index()
    // {
    //     $menus = MenuItem::where('menu_id',2)->orderBy('order')->get();
    //     return view('home')->with([
    //         'menus'=>$menus
    //     ]);
    // }
    public function wlcome(){
        $contactsides = Contactside::first();
        $footerimage = LogoImage::where('name','footer')->first();
        $logoimage = LogoImage::first();
        $menus = MenuItem::where('menu_id',2)->orderBy('order')->get();
        // $menu_items = menu_item::where('menu_id',2)->orderBy('order')->get();

        return view('welcome')->with([
            'contactsides'=>$contactsides,
            'menus'=>$menus,
            'logoimage'=>$logoimage,
            'footerlogo' =>$footerimage,
            
            // 'menu_items'=>$menu_items
        ]);
    }
   
}
