<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $data = [
            "tittle" => "Login"
        ];
        return view('Login/index', $data);
    }
}
