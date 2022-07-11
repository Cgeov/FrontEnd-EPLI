<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Http\Request;

class GalleryController extends Controller
{
    public function index(){
        return view('galeria', [
            'fotos' => Gallery::latest()->get()
        ]);
    }
}