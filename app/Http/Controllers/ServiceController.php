<?php

namespace App\Http\Controllers;
use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    //
    public function list(){
        $data =  Service::where('service_id','1')->get();
        return view('service',['data'=>$data]);
    }
}
