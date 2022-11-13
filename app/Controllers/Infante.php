<?php
namespace App\Controllers;
use CodeIgniter\RESTful\ResourceController;
use App\Models\InfanteModel;
use CodeIgniter\HTTP\Response;

class Infante extends ResourceController{
    protected $modelName = 'App\Models\InfanteModel';
    protected $format = 'json';

    public function index()
    {
        $data=[
            "infantes" => $this->model->findAll()
        ];
        return $this->respond($data);
    }

    public function show($id=NULL){
        $data=["infante" => $this->model->find($id)];
        return $this->respond($data);
    }

    public function create()
    {
        $data=[
            "nombre" => $this->request->getPost("nombre"),
            "apellidos" => $this->request->getPost("apellidos"),
            "edad" => $this->request->getPost("edad"),
            "curp" => $this->request->getPost("curp"),
            "diagnostico" => $this->request->getPost("diagnostico")
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
        if(!empty($this->request->getPost("edad")))
            $data["edad"] = $this->request->getPost("edad");
        if(!empty($this->request->getPost("curp")))
            $data["curp"] = $this->request->getPost("curp");
        if(!empty($this->request->getPost("diagnostico")))
            $data["diagnostico"] = $this->request->getPost("diagnostico");
        
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

}