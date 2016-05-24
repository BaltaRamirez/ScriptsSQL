drop database PSP;
create database PSP;
use PSP;


#################################################################
#######################    crear tablas   ####################### 
#################################################################
create table Estudiante (

	IdEstudiante 		int not null primary key auto_increment,
	Nombre 		 	varchar (25) not null,
	ApellidoPaterno varchar (25) not null,
	ApellidoMaterno varchar (25) not null,
	Telefono 		int,
	FechaNacimiento 	date

);

create table Instructor (

    IdInstructor 		int not null primary key auto_increment,
    Nombre		  	varchar(25) not null,
    ApellidoPaterno		varchar(25) not null,
    ApellidoMaterno		varchar(25) not null,
    Telefono			int ,
    FechaNacimiento     	date

);

create table Lenguaje_Programacion(

    IdLenguaje_Programacion  int not null primary key auto_increment,
    Nombre		     varchar(45) not null

);

create table Programa (

    IdPrograma	int not null primary key auto_increment,
    Nombre	varchar(45)
);


create table Defect (
    IdPSP_Time_Recording_Log   int not null primary key auto_increment,
    Nombre			varchar(45) not null,
    Description 		tinytext
);


create table Estudiante_has_PSP(
	Estudiante_idEstudiante int not null primary key auto_increment,
	PSP_id 					int not null 
);

create table Instructor_has_PSP (
	Instructor_idInstructor int not null primary key auto_increment,
	PSP_idPSP				int not null
);

create table Lenguaje_Programacion_has_Programa(
	Lenguaje_Programacion_IdLenguaje_Programacion int not null primary key auto_increment,
	Programa_idPrograma 						  int not null 
);

create table PSP_has_Programa (
	PSP_idPSP 				int not null primary key auto_increment,
	Programa_idPrograma 	int not null 
);

create table PSP_Defect_Recording_Log_has_Defect (
	FixTime 		 Time, 
	FixRef  		 time,
	Inject  		 varchar(45),
	Remove  		 varchar(45),
	idDefect_Rec_Log int not null primary key auto_increment,
	idDefect 		 int not null 
);

create table Fase(
	idFase	 int 			not null primary key auto_increment,
	Nombre 	 varchar(45)
); 

	##Tabla de PSP time
	create table PSP_PSP_Time_RL(
		idPSP_PSP_Time_RL int not null primary key auto_increment,
		idpsp int not null,
		idPSP_has_PSP_Time_RL int not null
		###constraint pk_isPSP_Time primary key(idPSP_PSP_Time_RL)
		);

	##Tabla de PSP Def_rec
	create table PSP_has_PSP_Def_Rec_Log(
		idPSP_Has_PSP_Def_Rec_Log int not null primary key auto_increment,
		PSP_Defect_RCL int,
		PSP_idPSP int not null
		###constraint pk_idPSP primary key(idPSP_Has_PSP_Def_Rec_Log)
		);

	##Tabla de tiempo recording
	create table PSP_Time_Recording_Log(
		idPSP_Time_Recording_Log int not null primary key auto_increment,
		StartAndDateTime date not null,
		InterruptionTime date,
		StopAndDateTime date not null,
		DeltaTime double,
		Comments varchar(45)
		###constraint pk_TRL Primary key(idPSP_Time_Recording_Log)
		);

	##Tabla de defecto recording
	create table PSP_Defect_recording_log(
		idPSP_Defect_Recording_Log int not null primary key auto_increment,
		Fecha date not null,
		Defect_idPSP_Time_Recording_Log int not null,
		Project varchar(45),
		Tipo varchar(45)
		###constraint pk_DRL Primary key(idPSP_Defect_Recording_Log)
		);


	##Tabla de PSP
	create table PSP(
		idPSP int not null primary key auto_increment,
		Fase_idFase int
		###constraint pk_PSP Primary key(idPSP)
		);

	###########################################################
	############### crear relaciones entre tablas #############
	###########################################################

		### lenguaje_Programaion -> LenProg_has_Programa
alter table Lenguaje_Programacion_has_Programa add foreign key (Lenguaje_Programacion_IdLenguaje_Programacion)
	references Lenguaje_Programacion (IdLenguaje_Programacion);

		### programa -> LenProg_has_Programa
alter table Lenguaje_Programacion_has_Programa add foreign key (Programa_idPrograma)
	references Programa (IdPrograma);

		### programa -> LenProg_has_Programa
alter table PSP_has_Programa				   add foreign key (Programa_idPrograma)
	references Programa (idPrograma);


		### PSP_has_Programa -> PSP
alter table PSP_has_Programa	  			   add foreign key (PSP_idPSP)
	references PSP (idPSP);


		### PSP -> Fase
alter table Estudiante_has_PSP				   add foreign key (PSP_id) 
	references PSP (idPSP);


		### Estudiante -> PSP
alter table PSP						   add foreign key (Fase_idFase)
	references  Fase(idFase); 


		### Instructor_has_PSP -> PSP
alter table Instructor_has_PSP 	  			   add foreign key (PSP_idPSP) 
	references PSP (idPSP);


	### PSP_PSP_Time_RL -> PSP
alter table PSP_PSP_Time_RL 	  			   add foreign key (idPSP_PSP_Time_RL)
	references PSP (idPSP);


	### PSP_has_PSP_Def_Rec_Log -> PSP
alter table PSP_has_PSP_Def_Rec_Log 		   add foreign key (PSP_idPSP) 
	references PSP (idPSP);


#alter table PSP_PSP_Time_RL add foreign key (idPSP_Time_Recording_Log) 
	#references PSP_Time_Recording_Log(idPSP_PSP_Time_RL);

alter table PSP_PSP_Time_RL add foreign key (idpsp) 
	references PSP(idPSP);



#alter table PSP_has_PSP_Def_Rec_Log add foreign key (idPSP_Has_PSP_Def_Rec_Log)
#	references PSP_Defect_recording_log(PSP_Defect_recording_log);


alter table PSP_has_PSP_Def_Rec_Log add foreign key (idPSP_Has_PSP_Def_Rec_Log)
	references PSP(idPSP);

use PSP;
alter table PSP_Defect_Recording_Log_has_Defect add 
	foreign key (idDefect) references Defect(IdPSP_Time_Recording_Log);

alter table PSP_Defect_Recording_Log_has_Defect add 
	foreign key (idDefect_Rec_Log) 
references PSP_Defect_recording_log(idPSP_Defect_Recording_Log);


alter table PSP_PSP_Time_RL add foreign key (idPSP_has_PSP_Time_RL)
	references PSP_Time_Recording_Log(`idPSP_Time_Recording_Log`);


alter table Estudiante_has_PSP add foreign key (Estudiante_idEstudiante)
	references Estudiante (idEstudiante);

alter table Estudiante_has_PSP add foreign key (PSP_id)
	references PSP (idPSP);

alter table Instructor_has_PSP add foreign key (Instructor_idInstructor)
	references Instructor(idInstructor);

alter table Instructor_has_PSP add foreign key (PSP_idPSP)
	references PSP(idPSP);

alter table Lenguaje_Programacion_has_Programa add foreign key (Lenguaje_Programacion_idLenguaje_Programacion)
	references Lenguaje_Programacion(IdLenguaje_Programacion);

alter table Lenguaje_Programacion_has_Programa add foreign key (Programa_idPrograma)
	references Programa(idPrograma);

alter table PSP_has_Programa add foreign key (Programa_idPrograma)
	references Programa(idPrograma);

alter table PSP_has_Programa add foreign key (PSP_idPSP)
	references PSP(idPSP);