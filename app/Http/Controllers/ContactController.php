<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Menu;
use App\MenuItem;
use App\Contact;

class ContactController extends Controller
{
    public function contact()
    {
           
        $menus = menu::where('id',19)->get();

        return view('contact')->with([
            
            'menus'=>\App\MenuItem::where('menu_id',2)->orderby('order')->get(),
        ]);
        
    // return view('contact');
    } 
       /** * Show the application dashboard. * * @return \Illuminate\Http\Response */
       public function contactPost(Request $request) 
       {
        $this->validate($request, [ 'name' => 'required', 'email' => 'required|email', 'message' => 'required' , 'phone' => 'required','address'=>'required']);
        Contact::create($request->all());
    
        Mail::send('email',
           array(
               'name' => $request->get('name'),
               'email' => $request->get('email'),
               'bodyMessage' => $request->get('message'),
               'phone' => $request->get('phone'),
               'address' => $request->get('address')
           ), function($message)
       {
           $message->from('sauhark@gmail.com');
           $message->to('sauhark@gmail.com', 'Sauhar')->subject('Sauhar Site Contect Form');
       });
        return back()->with('success', 'Thank you for contacting me!'); 
       }
    
}
