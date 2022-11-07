<?php
namespace App\Controllers;
use CodeIgniter\RESTful\ResourceController;
use App\Models\TerapeutaModel;
use CodeIgniter\HTTP\Response;

class Terapeuta extends ResourceController{
    protected $modelName = 'App\Models\TerapeutaModel';
    protected $format = 'json';

    public function index()
    {
        $data=[
            "terapeutas" => $this->model->findAll()
        ];
        return $this->respond($data);
    }

    public function show($id=NULL){
        $data=["cliente" => $this->model->find($id)];
        return $this->respond($data);
    }

    public function create()
    {
        $data=[
            "nombre" => $this->request->getPost("nombre"),
            "apellidos" => $this->request->getPost("apellidos"),
            "correo" => $this->request->getPost("correo"),
            "pass" => $this->request->getPost("pass"),
            "descripcion" => $this->request->getPost("descripcion")
        ];

        $id = $this->model->insert($data);

        if($id){
            return $this->respond($this->model->find($id));
        }else{
            return $this->respond(["error" => "Hubo un error al insertar"]);
        }
    }

    public function update($id = null){
        $data = [];
        if(!empty($this->request->getPost("nombre")))
            $data["nombre"] = $this->request->getPost("nombre");
        if(!empty($this->request->getPost("apellidos")))
            $data["apellidos"] = $this->request->getPost("apellidos");
        if(!empty($this->request->getPost("correo")))
            $data["correo"] = $this->request->getPost("correo");
        if(!empty($this->request->getPost("pass")))
            $data["pass"] = $this->request->getPost("pass");
        if(!empty($this->request->getPost("descripcion")))
            $data["descripcion"] = $this->request->getPost("descripcion");
        
        $result = $this->model->update($id, $data);

        if($result){
            return $this->respond(["result" => "El registro se edito correctamente", "terapeuta" => $this->model->find($id)]);
        }else{
            return $this->respond(["error" => "hubo un error al editar"]);
        }
    }

    public function delete($id = null){
        $result = $this->model->delete($id);
        if($result){
            return $this->respond(["result"=> "El registro se elimino correctamente"]);
        }else{
            return $this->respond((["error" => "hubo un error al eliminar"]));
        }
    }

    public function login(){
        $email = $this->request->getPost("email");
        $pass = $this->request->getPost("password");

        $terapeuta = $this->model->login($email, $pass);
        if($terapeuta){
            return $this->respond([
                "user" => $terapeuta
            ]);
        }else{
            return $this->respond(["Error" => "Usuario y contrasña incorrectos"]);
        }
    }

}