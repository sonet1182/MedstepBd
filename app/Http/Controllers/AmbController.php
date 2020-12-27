<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use DB;

class AmbController extends Controller
{
    public function barishal(){
        $desc = DB::select('select * from users where city="barishal"');
        return view('ambulance.info',['desc'=>$desc]);
    }

    public function chittagong(){
        $desc = DB::select('select * from users where city="Chittagong"');
        return view('ambulance.info',['desc'=>$desc]);
    }

    public function dhaka(){
        $desc = DB::select('select * from users where city="Dhaka"');
        return view('ambulance.info',['desc'=>$desc]);
    }

    public function khulna(){
        $desc = DB::select('select * from users where city="Khulna"');
        return view('ambulance.info',['desc'=>$desc]);
    }

    public function rajshahi(){
        $desc = DB::select('select * from users where city="Rajshahi"');
        return view('ambulance.info',['desc'=>$desc]);
    }

    public function rangpur(){
        $desc = DB::select('select * from users where city="Rangpur"');
        return view('ambulance.info',['desc'=>$desc]);
    }

    public function sylhet(){
        $desc = DB::select('select * from users where city="Sylhet"');
        return view('ambulance.info',['desc'=>$desc]);
    }

    public function mymensingh(){
        $desc = DB::select('select * from users where city="Mymensingh"');
        return view('ambulance.info',['desc'=>$desc]);
    }


}
