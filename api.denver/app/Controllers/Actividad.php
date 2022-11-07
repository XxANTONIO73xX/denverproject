<?php
namespace App\Controllers;
use App\Models\TopicoModel;
use CodeIgniter\RESTful\ResourceController;
use App\Models\ActividadModel;
class Actividad extends ResourceController{

    protected $modelName = 'App\Models\ActividadModel';
    protected $format = 'json';

    public function index(){
        $actividades = $this->model->findAll();
        $topicoModel = new TopicoModel();
        $data["actividades"] = [];
        foreach($actividades as $actividad){
            $data["actividades"][] = [
                "id" => $actividad["id"],
                "nombre" => $actividad["nombre"],
                "descripcion" => $actividad["descripcion"],
                "topico" => $topicoModel->find($actividad["idTopico"])
            ];
        }
        return $this->respond($data);
    }

    public function show($id = NULL){

        $actividad = $this->model->find($id);
        $topicoModel = new TopicoModel();
        $data=[
            "actividades" => [
                "id" => $actividad["id"],
                "nombre" => $actividad["nombre"],
                "descripcion" => $actividad["descripcion"],
                "topico" => $topicoModel->find($actividad["idTopico"])
            ]            
        ];
        return $this->respond($data);

    }

    public function create(){

        $data=[
                "nombre" => $this->request->getPost("nombre"),
                "descripcion" => $this->request->getPost("descripcion"),
                "idTopico" => $this->request->getPost("idTopico")           
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
        if(!empty($this->request->getPost("descripcion")))
            $data["descripcion"] = $this->request->getPost("descripcion");
        if(!empty($this->request->getPost("idTopico")))
            $data["idTopico"] = $this->request->getPost("idTopico");

        $result = $this->model->update($id, $data);

        if($result){
            return $this->respond(["result" => "El registro se edito correctamente", "actividad" => $this->model->find($id)]);
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
        

}
