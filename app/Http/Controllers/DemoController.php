<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ourpage;
use App\MenuItem;
use App\ExecutiveDirector;
use App\LicenseCertificate;
use App\ContactSide;
use App\LogoImage;
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
                $footer = 'footer';
                $footerimage = LogoImage::where('name','footer')->first(); 
                $logoimage = LogoImage::first();

                return view('contact')->with([
                    'contactsides'=>$contactsides,
                    'logoimage'=>$logoimage,
                    'footerlogo' =>$footerimage,
                    'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
                ]); 
            }


            $footerimage = LogoImage::where('name','footer')->first();
            $logoimage = LogoImage::first();

            $contactsides = ContactSide::first();
            $id = Ourpage::where('slug',$url)->first()->id;
            $ourpage = Ourpage::where('id',$id)->first();
            $ourpages = Ourpage::all()->take(5);
            
   
           $parentid = MenuItem::where('url',$url)->first()->parent_id;
           $sidebarlists = MenuItem::where('parent_id',$parentid)->orderby('order')->get();

            $menuitem=MenuItem::where('id',$parentid)->first();

            if($url=='message-from-executive-directors'){
                $executives = ExecutiveDirector::all();
                $contactsides = ContactSide::first();
                // $logoimage = LogoImage::first();
                
                return view('about/message-from-executive-directors')->with([

                    'contactsides'=>$contactsides,
                    'executives'=>$executives,
                    'ourpage'=>$ourpage,
                    'ourpages'=>$ourpages,
                    'menuitem'=>$menuitem,
                    'logoimage'=>$logoimage,
                    'footerlogo' =>$footerimage,

                    'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
                    'lists'=>$sidebarlists, 
                ]);
            }
            if($url=='license-certificate'){
                // $contactsides = ContactSide::first();
                $licensecertificates = LicenseCertificate::all();
                $footerimage = LogoImage::where('name','footer')->first();
                $logoimage = LogoImage::first();
                return view('about/license-certificate')->with([
                    'contactsides'=>$contactsides,
                    'licensecertificates'=>$licensecertificates,
                    'ourpage'=>$ourpage,
                    'ourpages'=>$ourpages,
                    'menuitem'=>$menuitem,
                    'logoimage'=>$logoimage,
                    'footerlogo' =>$footerimage,

                    
                    'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
                    'lists'=>$sidebarlists,
                ]);
            }




                 return view('template')->with([
                    'contactsides'=>$contactsides,
                     'menuitem'=>$menuitem,
                     'ourpage'=>$ourpage,
                    'ourpages'=>$ourpages,
                    'logoimage'=>$logoimage,
                    'footerlogo' =>$footerimage,
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


