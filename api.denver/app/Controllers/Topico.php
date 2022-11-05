<?php
namespace App\Controllers;
use CodeIgniter\RESTful\ResourceController;
use App\Models\TopicoModel;


class Topico extends ResourceController{
    protected $modelName = 'App\Models\TopicoModel';
    protected $format = 'json';

    public function index()
    {
        $data=[
            "topicos" => $this->model->findAll()
        ];
        return $this->respond($data);
    }

    public function show($id = NULL){

        $topico = $this->model->find($id);
        $data=[
            "topico" => [
                "id" => $topico["id"],
                "nombre" => $topico["nombre"],
                "nivel" => $topico["nivel"]
            ]            
        ];
        return $this->respond($data);

    }

    public function create()
    {
        $data=[
            "nombre" => $this->request->getPost("nombre"),
            "nivel" => $this->request->getPost("nivel")
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
        if(!empty($this->request->getPost("nivel")))
            $data["nivel"] = $this->request->getPost("nivel");
        
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

?>