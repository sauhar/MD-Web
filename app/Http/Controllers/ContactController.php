<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Menu;
use App\MenuItem;
use App\Contact;
use App\Ourpage;
use Mail;
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
   
        $data =  array(
            'name' => $request->get('name'),
            'form_email' => $request->get('email'),
            'form_message' => $request->get('message'),
            'phone' => $request->get('phone'),
            'address' => $request->get('address')
        );
        Mail::send('email', $data , function($message) use ($data)
       {
           $message->from($data['form_email'],$data['name']);
           $message->to('info@mahadmanpower.com.np', 'Mahad Manpower')->subject('Mahad Site Contect Form');
       });
        return redirect()->back()->with('success', 'Thank you for contacting me!'); 
       }
    
}
