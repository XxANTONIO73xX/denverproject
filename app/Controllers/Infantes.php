<?php

namespace App\Controllers;

class Infantes extends BaseController
{
    public function index()
    {
        $data = [
            "tittle" => "Terapeuta || Infantes || Denver"
        ];
        return view('template/header', $data)
        .view('infantes/index');
    }
}