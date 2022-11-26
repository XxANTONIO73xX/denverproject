<?php
namespace App\Controllers;

use App\Models\ActividadModel;
use App\Models\InfanteModel;
use App\Models\PadreModel;
use CodeIgniter\RESTful\ResourceController;
use App\Models\RespuestaModel;
use App\Models\TopicoModel;
use CodeIgniter\Commands\Help;
use CodeIgniter\HTTP\Response;

class Respuesta extends ResourceController{
    protected $modelName = 'App\Models\RespuestaModel';
    protected $format = 'json';

    public function index(){
        $respuestas = $this->model->findAll();
        $padreModel = new PadreModel();
        $actividadModel = new ActividadModel();
        $topicoModel = new TopicoModel();
        $infanteModel = new InfanteModel();
        $data["respuestas"] = [];
        foreach($respuestas as $respuesta){
            $padre = $padreModel->find($respuesta["idPadre"]);
            $data["respuestas"][] = [
                "id" => $respuesta["id"],
                "padre" => $padre,
                "infante" => $infanteModel->find($padre["idInfante"]),
                "topico" => $topicoModel->find($respuesta["idTopico"]),
                "actividad"=> $actividadModel->find($respuesta["idActividad"]),
                "respuestaUsuario" => $respuesta["respuestaUsuario"],
                "evidencia" => $respuesta["evidencia"]
            ];
        }
        return $this->respond($data);
    }

    public function show($id=NULL){
        $respuesta = $this->model->find($id);
        $padreModel = new PadreModel();
        $actividadModel = new ActividadModel();
        $topicoModel = new TopicoModel();
        $data=[
            "respuesta" => [
                "id" => $respuesta["id"],
                "padre" => $padreModel->find($respuesta["idPadre"]),
                "topico" => $topicoModel->find($respuesta["idTopico"]),
                "actividad"=> $actividadModel->find($respuesta["idActividad"]),
                "respuestaUsuario" => $respuesta["respuestaUsuario"],
                "evidencia" => $respuesta["evidencia"]
            ]
        ];
        return $this->respond($data);
    }

    public function create()
    {
        helper(['form']);
        $file = $this->request->getFile('evidencia');
        if(! $file->isValid())
            return $this->fail($file->getErrorString());
        $file->move('./uploads/ejemplos');
        $data=[
            "idPadre" => $this->request->getPost("idPadre"),
            "idActividad" => $this->request->getPost("idActividad"),
            "idTopico" => $this->request->getPost("idTopico"),
            "respuestaUsuario" => $this->request->getPost("respuestaUsuario"),
            "evidencia" => "https://denvermx.online/public/uploads/ejemplos/".$file->getName()
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
            $file->move('./uploads/ejemplos');
            $data["evidencia"] = "https://denvermx.online/public/uploads/ejemplos/".$file->getName();
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