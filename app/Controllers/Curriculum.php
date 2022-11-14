<?php

namespace App\Controllers;

class Curriculum extends BaseController
{
    public function index()
    {
        $data = [
            "tittle" => "Terapeuta || Curriculum || Denver"
        ];
        return view('template/header', $data)
        .view('curriculum/index');
    }
}