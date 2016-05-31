#drop database restaurant;
create database restaurant;
use restaurant;

create table Especialidad (
	
    idEspecialidad int not null primary key auto_increment,
    Tipo 			varchar(25),
    Preparacion		varchar(25)

);

create table Acompanante (
	
    idAcompanante	int not null primary key auto_increment,
    Tipo			varchar(25)

);

create table Bebida (

	idBebida	int not null primary key auto_increment,
    Tipo		varchar(25),
    Estado		varchar(25)

);

create table Postre (
	
    idPostre	int not null primary key auto_increment,
    Tipo		varchar(25)
    
);

create table Orden (
	
    idOrden		int not null primary key auto_increment,
    Estado		varchar(25),
    NumPersonas	int,
    NumMesa		int,
    idMesero	int,
    idCliente	int
    
);

create table Mesero (
	
    idMesero	int not null primary key auto_increment,
    Nombre		varchar(25),
    ApellidoP	varchar(25),
    ApellidoM	varchar(25)

);

create table Cliente (
	
    idCliente	int not null primary key auto_increment,
    Nombre		varchar(25),
    ApellidoP	varchar(25),
    ApellidoM	varchar(25),
    Telefono	int
    
);

create table Orden_Detalle (
	
    idOrden_Detalle	int not null primary key auto_increment,
    idEspecialidad	int,
    idAcompanante	int,
    idBebida		int,
    idPostre		int,
    idOrden			int

);

#Relacionar Orden_Detalle con Especialidad
alter table Orden_Detalle add foreign key (idEspecialidad) references Especialidad (idEspecialidad);

#Relacionar Orden_Detalle con Acompanante
alter table Orden_Detalle add foreign key (idAcompanante) references Acompanante (idAcompanante);

#Relacionar Orden_Detalle con Bebida
alter table Orden_Detalle add foreign key (idBebida) references Bebida (idBebida);

#Relacionar Orden_Detalle con Postre
alter table Orden_Detalle add foreign key (idPostre) references Postre (idPostre);

#Relacionar Orden_Detalle con Orden
alter table Orden_Detalle add foreign key (idOrden) references Orden (idOrden);

#Relacionar Orden con Mesero
alter table Orden add foreign key (idMesero) references Mesero (idMesero);

#Relacionar Orden con Cliente
alter table Orden add foreign key (idCliente) references Cliente (idCliente);

