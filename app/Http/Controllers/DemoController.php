<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ourpage;
use App\MenuItem;
use App\ExecutiveDirector;
use App\LicenseCertificate;

class DemoController extends Controller
{
    // public function check($slug){

    //    $ourpage=Ourpage::where('slug',$slug)->first();
        // if($slug=='message-from-chairman'){
        //     return view('demo')->with([
        //         'ourpage'=>$ourpage,
        //     ]);
        // }

        public function check1($url){
            $id = Ourpage::where('slug',$url)->first()->id;
            $ourpage = Ourpage::where('id',$id)->first();
            $ourpages = Ourpage::all()->take(5);
            
   
           $parentid = MenuItem::where('url',$url)->first()->parent_id;
           $sidebarlists = MenuItem::where('parent_id',$parentid)->get();

            $menuitem=MenuItem::where('id',$parentid)->first();

            if($url=='message-from-executive-directors'){
                $executives = ExecutiveDirector::all();
                
                return view('about/message-from-executive-directors')->with([
                    'executives'=>$executives,
                    'ourpage'=>$ourpage,
                    'ourpages'=>$ourpages,
                    
                    'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
                    'lists'=>$sidebarlists,
                ]);
            }
            if($url=='license-certificate'){
                $licensecertificates = LicenseCertificate::all();
                return view('about/license-certificate')->with([
                    'licensecertificates'=>$licensecertificates,
                    'ourpage'=>$ourpage,
                    'ourpages'=>$ourpages,
                    
                    'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
                    'lists'=>$sidebarlists,
                ]);
            }
           


             // if($slug=='message-from-chairman'){
                 return view('template')->with([
                     'menuitem'=>$menuitem,
                     'ourpage'=>$ourpage,
                    'ourpages'=>$ourpages,
                    'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
                    'lists'=>$sidebarlists,

                 ]);
             
                
                   
             }
     

      

    //     if($slug=='license-certificate'){
    //         return view('demo')->with([
    //             'ourpage'=>$ourpage,
    //         ]);
    //     }
       
    //    return $ourpage->title;
    // }
}
