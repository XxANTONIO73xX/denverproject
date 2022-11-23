<?php
namespace App\Controllers;
use CodeIgniter\RESTful\ResourceController;
use App\Models\RespuestaModel;
use CodeIgniter\Commands\Help;
use CodeIgniter\HTTP\Response;

class Respuesta extends ResourceController{
    protected $modelName = 'App\Models\RespuestaModel';
    protected $format = 'json';

    public function index()
    {
        $data=[
            "respuestas" => $this->model->findAll()
        ];
        return $this->respond($data);
    }

    public function show($id=NULL){
        $data=["respuesta" => $this->model->find($id)];
        return $this->respond($data);
    }

    public function create()
    {
        helper(['form']);
        $file = $this->request->getFile('evidencia');
        if(! $file->isValid())
            return $this->fail($file->getErrorString());
        $file->move('/public/uploads/respuestas');
        $data=[
            "idPadre" => $this->request->getPost("idPadre"),
            "idActividad" => $this->request->getPost("idActividad"),
            "idTopico" => $this->request->getPost("idTopico"),
            "respuestaUsuario" => $this->request->getPost("respuestaUsuario"),
            "evidencia" => "https://denvermx.online/public/uploads/respuestas/".$file->getName()
        ];

        $id = $this->model->insert($data);

        if($id){
            return $this->respond($this->model->find($id));
        }else{
            return $this->respond(["error" => "Hubo un error al insertar"]);
        }
    }

    public function update($id = null){
        helper(['form', 'array']);
        $data = [];
        if(!empty($this->request->getPost("idPadre")))
            $data["idPadre"] = $this->request->getPost("idPadre");
        if(!empty($this->request->getPost("idActividad")))
            $data["idActividad"] = $this->request->getPost("idActividad");
        if(!empty($this->request->getPost("idTopico")))
            $data["idTopico"] = $this->request->getPost("idTopico");
        if(!empty($this->request->getPost("respuestaUsuario")))
            $data["respuestaUsuario"] = $this->request->getPost("respuestaUsuario");
        if(!empty($this->request->getFile('evidencia'))){
            $fileName = dot_array_search('evidencia.name', $_FILES);
            $file = $this->request->getFile('evidencia');
            if(! $file->isValid())
            return $this->fail($file->getErrorString());
            $file->move('/public/uploads/respuestas');
            $data["evidencia"] = "https://denvermx.online/public/uploads/respuestas/".$file->getName();
        }
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