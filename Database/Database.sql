CREATE DATABASE IF NOT EXISTS TIENDA;
USE TIENDA;

CREATE TABLE IF NOT EXISTS T_Usuarios (
    Id_Usuario      INT (11) AUTO_INCREMENT NOT NULL,
    Nombre          VARCHAR (100)           NOT NULL,
    Apellidos       VARCHAR (100)           NOT NULL,
    Email           VARCHAR(200)            NOT NULL,
    Password        VARCHAR (255)           NOT NULL,
    Rol             VARCHAR(20),
    Imagen          VARCHAR(255),
    CONSTRAINT      pk_usuario      PRIMARY KEY (Id_Usuario),
    CONSTRAINT      uq_email        UNIQUE (Email)
)ENGINE=InnoDb;



INSERT INTO T_Usuarios VALUES (NULL, 'admin','admin','admin@gmail.com','1234','admin','imagen');
