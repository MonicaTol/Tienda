<?php

class Categoria {
    private $id;
    private $nombre;

    private $db;

    public function __construct()
    {
        $this->db = Database::connect();
    }

    function getId(){
        return $this->id;
    }

    function getNombre(){
        return $this->nombre;
    }

    function setID($id){
        $this->id = $id;
    }

    function setNOMBRE($nombre){
        $this->nombre = $nombre;
    }
}
