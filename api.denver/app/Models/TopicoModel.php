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

    public function getLevels(){
        $list = $this->db->query("SELECT nivel FROM topico group by nivel")->getResultArray();
        return $list;
    }

    public function orderByLevels(){
        $list = $this->db->query("SELECT * FROM topico order by nivel")->getResultArray();
        return $list;
    }
}

?>