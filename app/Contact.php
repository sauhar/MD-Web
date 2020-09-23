<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\MenuItem;
use App\Menu;


class Contact extends Model
{
    public $table = 'contact';
    public $fillable = ['name','email','message','phone','subject'];
}
