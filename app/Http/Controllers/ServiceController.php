<?php

namespace App\Http\Controllers;
use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    //Publicaciones 
    public function list(){
        $data =  Service::where('service_id','1')->get();
        return view('service',['data'=>$data]);
    }

    //Todos articulos
    public function listArticulos(){
        $data =  Service::where('service_id','2')->get();
        return view('404',['data'=>$data]);
    }
    

    //Publicaciones individuales
    public function showbyid($detail){
        
        $data = Service::find($detail);
        
        return view('showservicedetail', ['detail' => $data]);
    }


}
