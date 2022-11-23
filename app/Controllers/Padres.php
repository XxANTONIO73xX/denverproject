<?php

namespace App\Controllers;

class Padres extends BaseController
{
    public function index()
    {
        $data = [
            "tittle" => "Terapeuta || Padres || Denver"
        ];
        return view('template/header', $data)
        .view('padres/index');
    }
}