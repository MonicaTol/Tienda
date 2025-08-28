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

CREATE TABLE IF NOT EXISTS T_Categoria(
    Id_Categoria        int (11) AUTO_INCREMENT NOT NULL,
    Nombre_Categoria    VARCHAR(100)            NOT NULL,
    CONSTRAINT pk_categoria PRIMARY KEY (Id_Categoria)
)ENGINE=InnoDb;

INSERT INTO T_Categoria VALUES (NULL,'Construcción'),(NULL,'Electricos'), (NULL,'Tuberias');

CREATE TABLE IF NOT EXISTS T_Produto(
    Id_Producto         int (11) AUTO_INCREMENT NOT NULL,
    Nombre_Producto     VARCHAR(100)            NOT NULL,
    Precio              FLOAT (100,2)           NOT NULL,
    Stock               INT (100)               NOT NULL,
    Oferta              VARCHAR (50)            NOT NULL,
    Fecha               DATE                    NOT NULL,
    Imagen              VARCHAR(255),
    Id_Categoria        INT (11)                NOT NULL,
    CONSTRAINT pk_producto PRIMARY KEY (Id_Producto),
    CONSTRAINT fk_producto_categoria FOREIGN KEY (Id_Categoria) REFERENCES T_Categoria (Id_Categoria)
)ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS T_Pedido(
    Id_Pedido         int (11) AUTO_INCREMENT NOT NULL,
    Fecha_Pedido      DATE                    NOT NULL,
    Estado_Pedido     VARCHAR (50)            NOT NULL,
    Id_Usuario        INT (11)                NOT NULL,
    CONSTRAINT pk_pedido PRIMARY KEY (Id_Pedido),
    CONSTRAINT fk_pedido_usuario FOREIGN KEY (Id_Usuario) REFERENCES T_Usuarios (Id_Usuario)
)ENGINE=InnoDb;