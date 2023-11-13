DROP table IF EXISTS productos;
DROP table IF EXISTS cajeros;
DROP table IF EXISTS maquinas_registradoras;
DROP table IF EXISTS venta;

create table productos(
	codigo INT AUTO_INCREMENT,
	nombre varchar(250),
    precio INT,
    PRIMARY KEY(codigo)
);

insert into productos (nombre, precio)values('Zapatos nike',48);
insert into productos (nombre, precio)values('Libros thriller',12);
insert into productos (nombre, precio)values('Abrigos',34);
insert into productos (nombre, precio)values('Gafas natacion',10);
insert into productos (nombre, precio)values('Pelota futbol',7);


CREATE TABLE cajeros(
	codigo INT AUTO_INCREMENT,
	nom_apel varchar(250),
    PRIMARY KEY(codigo)
);


insert into cajeros (nom_apel)values('Juan Lopez');
insert into cajeros (nom_apel)values('Aitor Menta');
insert into cajeros (nom_apel)values('Elena Morada');
insert into cajeros (nom_apel)values('Javier Gonzalez');
insert into cajeros (nom_apel)values('Leo Perez');


CREATE TABLE maquina_registradora(
	codigo INT AUTO_INCREMENT,
    piso INT,
    PRIMARY KEY(codigo)
);


insert into maquinas_registradoras (piso)values(1);
insert into maquinas_registradoras (piso)values(2);
insert into maquinas_registradoras (piso)values(3);
insert into maquinas_registradoras (piso)values(4);
insert into maquinas_registradoras (piso)values(5);


CREATE TABLE venta(
    id INT AUTO_INCREMENT,
    cod_producto INT,
    cod_cajero INT,
    cod_maquina INT,
    FOREIGN KEY (cod_producto) REFERENCES productos(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (cod_cajero) REFERENCES cajeros(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (cod_maquina) REFERENCES maquinas_registradoras(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id, cod_producto, cod_cajero, cod_maquina)
);


INSERT INTO venta (cod_producto, cod_cajero, cod_maquina) VALUES (1,1,1);
INSERT INTO venta (cod_producto, cod_cajero, cod_maquina) VALUES (2,2,2);
INSERT INTO venta (cod_producto, cod_cajero, cod_maquina) VALUES (3,3,3);
INSERT INTO venta (cod_producto, cod_cajero, cod_maquina) VALUES (4,4,4);
INSERT INTO venta (cod_producto, cod_cajero, cod_maquina) VALUES (5,5,5);