<?php
namespace App\Controllers;
use CodeIgniter\RESTful\ResourceController;
use App\Models\PadreModel;
use CodeIgniter\HTTP\Response;
use App\Models\InfanteModel;

class Padre extends ResourceController{
    protected $modelName = 'App\Models\PadreModel';
    protected $format = 'json';

    public function index(){
        $infanteModel = new InfanteModel();
        $padres = $this->model->findAll();
        $data["padres"] = [];
        foreach($padres as $padre){
            $data["padres"][] = [
                "id" => $padre["id"],
                "nombre" => $padre["nombre"],
                "apellido" => $padre["apellido"],
                "direccion" => $padre["direccion"],
                "telefono" => $padre["telefono"],
                "correo" => $padre["correo"],
                "pass" => $padre["pass"],
                "idInfante" => $infanteModel->find($padre["idInfante"])
            ];
        }
        return $this->respond($data);
    }

    public function show($id = NULL){

        $padre = $this->model->find($id);
        $infanteModel = new InfanteModel();
        $data=[
            "padre" => [
                "id" => $padre["id"],
                "nombre" => $padre["nombre"],
                "apellido" => $padre["apellido"],
                "direccion" => $padre["direccion"],
                "telefono" => $padre["telefono"],
                "correo" => $padre["correo"],
                "pass" => $padre["pass"],
                "infante" => $infanteModel->find($padre["idInfante"])
            ]            
        ];
        return $this->respond($data);

    }

    public function create(){

        $data=[
                "nombre" => $this->request->getPost("nombre"),
                "apellido" => $this->request->getPost("apellido"),
                "edad" => $this->request->getPost("edad"),
                "direccion" => $this->request->getPost("direccion"),
                "telefono" => $this->request->getPost("telefono"),
                "correo" => $this->request->getPost("correo"),
                "pass" => $this->request->getPost("pass"),
                "idInfante" => $this->request->getPost("idInfante")           
        ];
        $id = $this->model->insert($data);

        if($id){
            return $this->respond($this->model->find($id));
        }else{
            return $this->respond(["error" => "hubo un error al insertar"]);
        }
    }

    public function update($id = NULL){
        $data = [];
        if(!empty($this->request->getPost("nombre")))
            $data["nombre"] = $this->request->getPost("nombre");
        if(!empty($this->request->getPost("apellido")))
            $data["apellido"] = $this->request->getPost("apellido");
        if(!empty($this->request->getPost("edad")))
            $data["edad"] = $this->request->getPost("edad");
        if(!empty($this->request->getPost("direccion")))
            $data["direccion"] = $this->request->getPost("direccion");
        if(!empty($this->request->getPost("telefono")))
            $data["telefono"] = $this->request->getPost("telefono");
        if(!empty($this->request->getPost("correo")))
            $data["correo"] = $this->request->getPost("correo");
        if(!empty($this->request->getPost("pass")))
            $data["pass"] = $this->request->getPost("pass");
        if(!empty($this->request->getPost("idInfante")))
            $data["idInfante"] = $this->request->getPost("idInfante");

        $result = $this->model->update($id, $data);

        if($result){
            return $this->respond(["result" => "El registro se edito correctamente", "padres" => $this->model->find($id)]);
        }else{
            return $this->respond(["error" => "hubo un error al editar"]);
        }
    }

    public function delete($id = null){
        $result = $this->model->delete($id);
        if($result){
            return $this->respond(["result"=> "El registro se elimino correctamente"]);
        }else{
            return $this->respond((["error" => "Hubo un error al eliminar"]));
        }
    }
    
    public function login(){
        $email = $this->request->getPost("email");
        $pass = $this->request->getPost("password");

        $padre = $this->model->login($email, $pass);
        if($padre){
            return $this->respond([
                "user" => $padre
            ]);
        }else{
            return $this->respond(["error" => "Usuario y contrasña incorrectos"]);
        }
    }

}