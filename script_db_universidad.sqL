#database_universidad
create database db_universidad;
#usar ddatabase universidad
use  db_universidad;
drop table departamento;
#crear tabla departamento
create table departamento (
id int(10) primary key not null,
nombre varchar(100)
);

insert into departamento (id, nombre) values
(1,'Informatica'),
(2,'Matemáticas'),
(3,'Economía y Empresa'),
(4,'Educación'),
(5,'Agroeconomía'),
(6,'Química y Física'),
(7,'Dilolog´ía'),
(8,'Derecho'),
(9,'Bilogía y Geología');





