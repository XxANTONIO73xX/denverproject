<?php

namespace App\Controllers;

class Denver extends BaseController
{
    public function index()
    {
        $data = [
            "title" => "Login || Padre || Denver"
        ];
        return view('Denver/Login', $data);
    }

    public function actividades(){
        $data = [
            "title" => "Actividades || Padre || Denver"
        ];
        return view('Denver/Actividades', $data);
    }
}
