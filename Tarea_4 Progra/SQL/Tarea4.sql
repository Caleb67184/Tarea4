create database Hospital

use hospital

--Datos de los pacientes
create table paciente
(
	Cedula varchar(14) primary key,
	Nombre varchar(50) not null,
	Edad varchar(5),
	Genero char (1) constraint chk_genero check (genero = 'F' or genero = 'M'),
	Telefono varchar(20),
	calle varchar(20),
	ciudad varchar(20),
	numero varchar(20),
	Seguro bit
)

