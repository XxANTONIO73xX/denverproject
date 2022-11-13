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
                "topico" => $topicoModel->find($actividad["idTopico"]),
                "ejemplo" => $actividad["ejemplo"]
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
        helper(['form']);
        $file = $this->request->getFile('ejemplo');
        if(! $file->isValid())
            return $this->request->getFile('ejemplo');
        $file->move('./uploads/ejemplos');
        $data=[
                "nombre" => $this->request->getPost("nombre"),
                "descripcion" => $this->request->getPost("descripcion"),
                "idTopico" => $this->request->getPost("idTopico"),
                "ejemplo" => "https://denvermx.online/public/uploads/ejemplos/".$file->getName()        
        ];
        $id = $this->model->insert($data);

        if($id){
            return $this->respond($this->model->find($id));
        }else{
            return $this->respond(["error" => "hubo un error al insertar"]);
        }
    }

    public function insertar(){
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
        helper(['form', 'array']);
        $data = [];
        if(!empty($this->request->getPost("nombre")))
            $data["nombre"] = $this->request->getPost("nombre");
        if(!empty($this->request->getPost("descripcion")))
            $data["descripcion"] = $this->request->getPost("descripcion");
        if(!empty($this->request->getPost("idTopico")))
            $data["idTopico"] = $this->request->getPost("idTopico");
        if(!empty($this->request->getFile('ejemplo'))){
            $fileName = dot_array_search('ejemplo.name', $_FILES);
            $file = $this->request->getFile('ejemplo');
            if(! $file->isValid())
            return $this->fail($file->getErrorString());
            $file->move('./uploads/ejemplos');
            $data["ejemplo"] = "https://denvermx.online/public/uploads/ejemplos/".$file->getName();
        }
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
        
    public function getByTopico($idTopico){
        $result["actividades"] = $this->model->getByTopico($idTopico);
        $topicoModel = new TopicoModel();
        $result["topico"] = $topicoModel->find($idTopico);
        return $this->respond($result);
    }

}
