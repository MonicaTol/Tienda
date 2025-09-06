<?php

  class Database{
    //conexion local 

    $db = new msqly('localhost','root','','TIENDA');
    $db -> query ("SET NAMES 'utf8'");
    return $db;
  }