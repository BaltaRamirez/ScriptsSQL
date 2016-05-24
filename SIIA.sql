drop database siia;
create database siia;

use siia;

create table Estudiante (

	IdEstudiante 	int not null primary key auto_increment,
	Nombre 		 	varchar (25) not null,
	ApellidoPaterno varchar (25) not null,
	ApellidoMaterno varchar (25) not null

);

create table Nivel (
	
	IdNivel 	int not null primary key auto_increment,
	NumSemestre int,
	Periodo		varchar(25) not null,
	Promedio	decimal

);

create table Materia (
	
	IdMateria 		int not null primary key auto_increment,
	Clave 			varchar(25) not null,
	Nombre			varchar(25) not null,
	Calificacion 	decimal

);
create table Actividad (

	IdActividad int not null primary key auto_increment,
    Nombre	varchar(25) not null,
    Area varchar(25) not null,
    Fecha date,
    Creditos decimal
	

);

create table Estudiante_has_Materia(
	Estudiante_IdEstudiante int not null primary key auto_increment,
	IdMateria	int not null
);

create table Estudiante_has_Actividad(
	Estudiante_IdEstudiante int not null primary key auto_increment,
	IdActividad	int not null
);


##Relacionar estudiante con nivel
alter table Estudiante add foreign key (idEstudiante)references  Nivel(IdNivel);


##Relacionar Estudiante con Estudiante_has_Materia
alter table Estudiante_has_Materia add foreign key (Estudiante_IdEstudiante)references  Estudiante(IdEstudiante);

##Relacionar Materia con Estudiante_has_Materia
alter table Estudiante_has_Materia add foreign key (Estudiante_IdEstudiante)references  Materia(IdMateria);

##Relacionar Estudiante con Estudiante_has_Actividad
alter table Estudiante_has_Actividad add foreign key (Estudiante_IdEstudiante)references  Estudiante(IdEstudiante);

##Relacionar Actividad con Estudiante_has_Actividad 
alter table Estudiante_has_Actividad add foreign key (Estudiante_IdEstudiante)references  Actividad(IdActividad);




