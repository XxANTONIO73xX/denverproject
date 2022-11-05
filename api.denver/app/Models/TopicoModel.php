<?php
namespace App\Models;
use CodeIgniter\Model;

class TopicoModel extends Model{
    protected $table = "topico";
    protected $primaryKey = "id";
    
    protected $allowedFields = 
    [
        "id",
        "nombre",
        "nivel"
    ];
}

?>