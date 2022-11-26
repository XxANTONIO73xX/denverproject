<?php

namespace App\Controllers;

class Progreso extends BaseController
{
    public function index()
    {
        $data = [
            "tittle" => "Terapeuta || Padres || Denver"
        ];
        return view('template/header', $data)
        .view('Progreso/index');
    }
}