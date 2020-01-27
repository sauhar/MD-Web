<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ourpage;
use App\MenuItem;
use App\ExecutiveDirector;
use App\LicenseCertificate;
use App\ContactSide;

class DemoController extends Controller
{
    //  public function check($slug){

    //    $ourpage=Ourpage::where('slug',$slug)->first();
       
    //     if($slug=='message-from-chairman'){
    //         return view('demo')->with([
    //             'ourpage'=>$ourpage,
    //         ]);
    //     }
    // }

        public function check1($url){


            if($url=='contact'){
              
                $contactsides = ContactSide::first();
                
                return view('contact')->with([
                    'contactsides'=>$contactsides,
                    
                    'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
                ]); 
            }

            $contactsides = ContactSide::first();
            $id = Ourpage::where('slug',$url)->first()->id;
            $ourpage = Ourpage::where('id',$id)->first();
            $ourpages = Ourpage::all()->take(5);
            
   
           $parentid = MenuItem::where('url',$url)->first()->parent_id;
           $sidebarlists = MenuItem::where('parent_id',$parentid)->get();

            $menuitem=MenuItem::where('id',$parentid)->first();

            if($url=='message-from-executive-directors'){
                $executives = ExecutiveDirector::all();
                $contactsides = ContactSide::first();
                
                return view('about/message-from-executive-directors')->with([

                    'contactsides'=>$contactsides,
                    'executives'=>$executives,
                    'ourpage'=>$ourpage,
                    'ourpages'=>$ourpages,
                    'menuitem'=>$menuitem,
                    
                    'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
                    'lists'=>$sidebarlists,
                ]);
            }
            if($url=='license-certificate'){
                $contactsides = ContactSide::first();
                $licensecertificates = LicenseCertificate::all();
                return view('about/license-certificate')->with([
                    'contactsides'=>$contactsides,
                    'licensecertificates'=>$licensecertificates,
                    'ourpage'=>$ourpage,
                    'ourpages'=>$ourpages,
                    'menuitem'=>$menuitem,
                    
                    'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
                    'lists'=>$sidebarlists,
                ]);
            }




                 return view('template')->with([
                    'contactsides'=>$contactsides,
                     'menuitem'=>$menuitem,
                     'ourpage'=>$ourpage,
                    'ourpages'=>$ourpages,
                    'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
                    'lists'=>$sidebarlists,

                 ]);
               
                
                   
            }
            
            
     
        }
      

    //     if($slug=='license-certificate'){
    //         return view('demo')->with([
    //             'ourpage'=>$ourpage,
    //         ]);
    //     }
       
    //    return $ourpage->title;
    // }


