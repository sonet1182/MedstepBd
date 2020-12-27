<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class webcontroller extends Controller
{
    public function appointment(){
    	return view('med.pages.appointment');
    }

    public function appointment_bangla(){
    	return view('med.pages.appointment_bangla');
    }

    public function hospital(){
        $desciption = DB::select('select * from comment1s where hid="apl"');
        $users = DB::select('select * from reviews where hid="Apollo Hospital"');
    	return view('pages.hospital.hospital1',['users'=>$users, 'description'=>$desciption]);
    }

    public function hospital1(){
        $desciption = DB::select('select * from comment1s where hid="sqr"');
        $users = DB::select('select * from reviews where hid="Square Hospital"');
    	return view('pages.hospital.hospital1',['users'=>$users, 'description'=>$desciption]);
    }



    public function hospital_comment(){
    	return \App\Comment::all();
    }

    public function provider(){
    	return view('pages.service_provider');
    }

    public function health(){
    	return view('pages.provider.health');
    }

    public function amb_provider(){
    	return view('med.pages.service_provider');
    }

    public function phermacy(){
    	return view('pages.provider.phermacy');
    }

    public function insert(Request $req){

    	$email = $req->input('email');
        $comment = $req->input('comment');
        $hid = $req->input('hid');

    	$data = array('email'=>$email, 'comment'=>$comment, 'hid'=>$hid);

    	DB::table('reviews')->insert($data);

        //echo "Success";

        $message = "Submitted Successfully";
        echo "<script type='text/javascript'>alert('$message');</script>";

        return back();


    }

}
