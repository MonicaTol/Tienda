<?php

class Producto{
    private $id_producto;
    private $nombre_producto;
    private $descripcion;
    private $precio;
    private $stock;
    private $oferta;
    private $fecha;
    private $imagen;

    private $db;

    public function __construct()
    {
        $this->db = Database::connect();
    }

    function getId_Producto (){
        return $this->id_producto;
    }

    function getNombre_Producto(){
        return $this->nombre_producto;
    }

    function getDescripción (){
        return $this->descripcion;
    }

    function getPrecio (){
        return $this->precio;
    }

    function getStock (){
        return $this->stock;
    }

    function getOferta (){
        return $this->oferta;
    }

    function getFecha (){
        return $this->fecha;
    }

    function getImagen (){
        return $this->imagen;
    }

    function setId_Producto ($id_producto){
        $this->id_producto = $id_producto;
    }

    function setNombre_Producto ($nombre_producto){
        $this->nombre_producto = $nombre_producto;
    }

    function setDescripción ($descripcion){
        $this->descripcion = $descripcion;
    }

    function setPrecio ($precio){
        $this->precio = $precio;
    }

    function setStock ($stock){
        $this->stock = $stock;
    }

    function setOferta ($oferta){
        $this->oferta = $oferta;
    }

    function setFeccha ($fecha){
        $this->fecha = $fecha;
    }

    function setImagen ($imagen){
        $this->imagen = $imagen;
    }

}