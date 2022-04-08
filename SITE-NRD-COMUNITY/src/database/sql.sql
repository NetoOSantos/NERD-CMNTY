CREATE DATABASE nrdcmnty;

USE nrdcmnty;

CREATE TABLE usuario (
id			 INT PRIMARY KEY AUTO_INCREMENT,
nome 		 VARCHAR(50),
email 		 VARCHAR(50),
senha        VARCHAR(50)
);

CREATE TABLE aviso (
id 			INT PRIMARY KEY AUTO_INCREMENT,
titulo      VARCHAR(100),
descricao   VARCHAR(150),
fk_usuario  INT,
            FOREIGN KEY (fk_usuario)
			REFERENCES usuario (id)
);

SELECT 
    *
FROM
    usuario;
SELECT 
    *
FROM
    aviso;


SELECT 
    COUNT(usuario.id) AS qtd
FROM
    usuario;

-- drop database nrdcmnty;

SELECT 
    usuario.nome, aviso.descricao
FROM
    usuario
        JOIN
    aviso ON fk_usuario = usuario.id
WHERE
    usuario.id = 1;