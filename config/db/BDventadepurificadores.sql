DROP DATABASE IF EXISTS BDventadepurificadores;
CREATE DATABASE BDventadepurificadores;
USE BDventadepurificadores;
DROP TABLE IF EXISTS PERMISO;
CREATE TABLE PERMISO(
ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
NOMBRE VARCHAR(50) NOT NULL
) 
ENGINE=InnoDB;

DROP TABLE IF EXISTS USUARIO;
CREATE TABLE USUARIO(
ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
NOMBRE VARCHAR(100) NOT NULL,
EMAIL VARCHAR(100) NOT NULL,
PASSWORD VARCHAR(250) NOT NULL,
TELEFONO VARCHAR(15),
IDPERMISO INT NOT NULL,
FOREIGN KEY(IDPERMISO) REFERENCES PERMISO(ID)
) ENGINE=InnoDB;

-- ADICIONAR DATOS A LA TABLA PERMISO
INSERT INTO PERMISO(NOMBRE)
VALUES('ADMIN');
INSERT INTO PERMISO(NOMBRE)
VALUES('VENDEDOR');
INSERT INTO PERMISO(NOMBRE)
VALUES('CLIENTE');
INSERT INTO PERMISO(NOMBRE)
VALUES('PROPIETARIO');
INSERT INTO PERMISO(NOMBRE)
VALUES('INVITADO');

SELECT * FROM PERMISO;
INSERT INTO USUARIO(NOMBRE, EMAIL,PASSWORD,TELEFONO,IDPERMISO)
VALUES('MARCOS', 'MARCOS@GMAIL.COM','123321', '12345555',2);
SELECT * FROM USUARIO;







