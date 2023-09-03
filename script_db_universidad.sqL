#database_universidad
drop database db_universidad;
create database db_universidad;
#usar ddatabase universidad
use  db_universidad;
drop table departamento;
#crear tabla departamento
create table departamento (
id int(10) primary key not null,
nombre varchar(100) not null
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

#creare tabla profesor }
drop table profesor;
create table profesor(
id int(10) primary key not null,
nif varchar(9) not null,
nombre varchar(25) not null,
apellido1 varchar(50)not null,
apellido2 varchar(50)not null,
ciudad varchar(25)not null,
dirección varchar(50) not null,
telefono varchar(9)not null,
fecha_nacimiento date not null,
sexo ENUM('H','M'),
ID_departamento int(10)
);
show tables;




insert into profesor (id, nif, nombre, apellido1, apellido2, ciudad,dirección, telefono, fecha_nacimiento, sexo, id_departamento) values
(11, '12345678', 'Juan', 'Pérez', 'García', 'Madrid', 'Calle Mayor, 123', '123456789', '1990-01-01', 'H', 1), 
(12, '98765432', 'María', 'Rodríguez', 'López', 'Barcelona', 'Avenida Diagonal, 65', '456987654', '1985-05-15', 'M', 2), 
(13, '45678912', 'Pedro', 'Gómez', 'Rodríguez', 'Valencia', 'Calle del Sol, 789', '456789123', '1985-03-03', 'H', 3), 
(14, '78912345', 'Laura', 'Fernández', 'Martínez', 'Sevilla', 'Plaza de España, 321', '789123456', '1992-04-04', 'H', 4), 
(15, '32165498', 'Carlos', 'Sánchez', 'López', 'Málaga', 'Calle Larios, 987', '321654987', '1988-05-05', 'H', 5), 
(16, '65498732', 'Ana', 'Torres', 'Hernández', 'Bilbao', 'Calle Gran Vía, 654', '654987321', '1993-06-06', 'M', 6), 
(17, '98732165', 'Javier', 'Ruiz', 'Gómez', 'Zaragoza', 'Avenida del Pilar, 321', '987321654', '1987-07-07', 'H', 7), 
(18, '78965412', 'Sofía', 'García', 'Fernández', 'Alicante', 'Calle Postiguet, 789', '789654123', '1994-08-08', 'M', 8), 
(19, '12378945', 'Diego', 'Martínez', 'Sánchez', 'Granada', 'Calle Recogidas, 456', '123789456', '1989-09-09', 'H', 9);

create table alumno(
id int(10) primary key not null,
nif varchar(9) not null,
nombre varchar(25) not null,
apellido1 varchar(50) not null,
apellido2 varchar(50) not null,
ciudad varchar(25) not null,
dirección varchar(50)not null,
telefono varchar(9) not null,
fecha_nacimiento date not null,
sexo ENUM('H','M')
);

insert into alumno	(id, nif, nombre, apellido1, apellido2, ciudad,dirección, telefono, fecha_nacimiento, sexo) values
(21, '98765432', 'Luis', 'González', 'Hernández', 'Valencia', 'Calle del Mar, 456', '456987654', '1991-02-20', 'H' ),
(22, '45678912', 'Elena', 'López', 'Gómez', 'Madrid', 'Avenida Castellana, 789', '456789123', '1990-07-12', 'M'),
(23, '78912345', 'Andrés', 'Fernández', 'Sánchez', 'Barcelona', 'Calle Rambla, 321', '789123456', '1987-09-25', 'H'),
(24, '32165498', 'Isabel', 'Sánchez', 'Martínez', 'Sevilla', 'Calle Sierpes, 987', '321654987', '1995-11-18', 'M'),
(25, '65498732', 'Miguel', 'Torres', 'Gómez', 'Málaga', 'Calle Alcazabilla, 654', '654987321', '1986-12-30', 'H'),
(26, '98732165', 'Lucía', 'Ruiz', 'Fernández', 'Bilbao', 'Calle Moyúa, 321', '987321654', '1993-04-05', 'M'),
(27, '78965412', 'Daniel', 'García', 'Hernández', 'Zaragoza', 'Avenida Goya, 789', '789654123', '1988-08-15', 'H'),
(28, '12378945', 'Carolina', 'Martínez', 'Sánchez', 'Alicante', 'Calle Explanada, 456', '123789456', '1996-01-10', 'M'),
(29, '98765432', 'Roberto', 'González', 'López', 'Granada', 'Calle Navas, 123', '456987654', '1992-03-22', 'H');

drop table asignatura;
create table asignatura (
id int(10) primary key not null,
nombre varchar(100) not null,
creditos float not null,
tipo enum('A', 'B', 'C')not null,
curso tinyint(3) not null,
cuatrimestre tinyint(3) not null,
id_profesor int(10) not null,
id_grado int(10) not null
);

insert into asignatura (id, nombre, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado) values 
(31, 'Matemáticas', 4.5, 'A', 1, 1, 11, 41),
(32, 'Historia', 3.0, 'B', 2, 1, 12, 42),
(33, 'Inglés', 2.5, 'C', 1, 2, 13, 43),
(34, 'Física', 3.5, 'A', 2, 2, 14, 44),
(35, 'Programación', 4.0, 'B', 3, 1, 15, 45),
(36, 'Química', 3.0, 'C', 3, 2, 16, 46),
(37, 'Literatura', 2.0, 'A', 1, 3, 17, 47),
(38, 'Educación Física', 1.5, 'B', 2, 3, 18, 48),
(39, 'Biología', 3.0, 'C', 3, 3, 19, 49);

drop table grado;
create table grado(
id int (10) primary key not null,
nombre varchar (100) not null
);

insert into	grado (id, nombre) values
(41,'Profesor de matematicas'),
(42,'Historiador'),
(43,'Lenguas modernas'),
(44,'Fisico teorico'),
(45,'Pogramador senior'),
(46,'Quimico'),
(47,'Periodismo'),
(48,'Profesor de deportes'),
(49,'Medicina');

drop table alumno_se_matricula_asignatura;
create table alumno_se_matricula_asignatura (
 id_alumno int(10)primary key not null,
 id_asignatura int(10) not null,
 id_curso_escolar int(10) not null
);




insert into	alumno_se_matricula_asignatura (id_alumno, id_asignatura,	id_curso_escolar) values
(21, 31, 51),
(22, 32, 52),
(23, 33, 53),
(24, 34, 54),
(25, 35, 55),
(26, 36,56),
(27,37, 57),
(28,38, 58),
(29,39, 59);

create table curso_escolar(
id int (10)primary key not null,
anyo_inicio year (4) not null,
anyo_fin year (4)not null
);

insert into curso_escolar(id, anyo_inicio, anyo_fin) values
(51, 2010, 2016),
(52, 2010, 2016),
(53,2010, 2016),
(54,2010, 2016),
(55,2010, 2016),
(56,2010, 2016),
(57,2010, 2016),
(58,2010, 2016),
(59,2010, 2016);

# Visualizar composicion de la tabla
describe departamento;
describe profesor;
describe alumno;
describe asignatura;
describe alumno_se_matricula_asignatura;
describe grado;
describe curso_escolar;

# insertar tablas con registro
select * from departamento;
select * from profesor;
select * from alumno;
select * from asignatura;
select * from alumno_se_matricula_asignatura;
select * from grado;
select * from curso_escolar;

# borrar tablas malas
drop table departamento;
drop table  profesor;
drop table  alumno;
drop table  asignatura;
drop table  alumno_se_matricula_asignatura;
drop table  grado;
drop table  curso_escolar;