use restaurant;

#insert en Especialidad
insert into Especialidad (Tipo,Preparacion) values ('Pollo','Sin picante');
insert into Especialidad (Tipo,Preparacion) values ('Pollo','Poco picante');
insert into Especialidad (Tipo,Preparacion) values ('Pollo','Muy picante');


insert into Especialidad (Tipo,Preparacion) values ('Carne','Muy cruda');
insert into Especialidad (Tipo,Preparacion) values ('Carne','Cruda');
insert into Especialidad (Tipo,Preparacion) values ('Carne','Medio');
insert into Especialidad (Tipo,Preparacion) values ('Carne','Tres cuartos');
insert into Especialidad (Tipo,Preparacion) values ('Carne','Bien cocida');

#Insert into Acompanante
insert into Acompanante (Tipo) values ('Arroz');
insert into Acompanante (Tipo) values ('Frijoles');
insert into Acompanante (Tipo) values ('Elotes');
insert into Acompanante (Tipo) values ('Verduras');
insert into Acompanante (Tipo) values ('Papas fritas');


#Insert into Bebida
insert into Bebida (Tipo,Estado) values ('Refresco','Frío');
insert into Bebida (Tipo,Estado) values ('Refresco','Al tiempo');
insert into Bebida (Tipo,Estado) values ('Refresco','Con hielo');

insert into Bebida (Tipo,Estado) values ('Agua Fresca','Al tiempo');
insert into Bebida (Tipo,Estado) values ('Agua Fresca','Frío');
insert into Bebida (Tipo,Estado) values ('Agua Fresca','Con hielo');

insert into Bebida (Tipo,Estado) values ('Cerveza','Al tiempo');
insert into Bebida (Tipo,Estado) values ('Cerveza','Frío');
insert into Bebida (Tipo,Estado) values ('Cerveza','Con hielo');

#Insert into Postre
insert into Postre (Tipo) values ('Flan Napolitano');
insert into Postre (Tipo) values ('Pastel tres leches');
insert into Postre (Tipo) values ('Copa de helado');
insert into Postre (Tipo) values ('Copa de fruta');

#Insert into Mesero
insert into Mesero (Nombre,ApellidoP,ApellidoM) values ('Baltazar','Ramírez','Rodríguez');
insert into Mesero (Nombre,ApellidoP,ApellidoM) values ('Alfredo','González','Gaviña');
insert into Mesero (Nombre,ApellidoP,ApellidoM) values ('Miguel','León','Martínez');

#insert into Cliente 
insert into Cliente (Nombre,ApellidoP,ApellidoM,Telefono) values ('Carlos','López','Olivas', 1101112);
insert into Cliente (Nombre,ApellidoP,ApellidoM,Telefono) values ('José','Oceguera','Bordo', 4551519);
insert into Cliente (Nombre,ApellidoP,ApellidoM,Telefono) values ('Eddy','Martínez','Hernández', 6538652);
insert into Cliente (Nombre,ApellidoP,ApellidoM,Telefono) values ('Antonio','Parra','González', 4559097);
insert into Cliente (Nombre,ApellidoP,ApellidoM,Telefono) values ('Eduardo','Cabal','Yepez', 909793);
insert into Cliente (Nombre,ApellidoP,ApellidoM,Telefono) values ('Claudio','González','González', 108260);

#Insert into Orden 
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Capturada',2,1,1,1);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Preparación de entrada',2,1,1,1);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Entrada lista',2,1,1,1);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Preparación plato fuerte',2,1,1,1);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Plato fuerte listo',2,1,1,1);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Preparación postre',2,1,1,1);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Postre listo',2,1,1,1);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Pagada',2,1,1,1);

insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Capturada',5,8,2,3);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Preparación de entrada',5,8,2,3);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Entrada lista',5,8,2,3);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Preparación plato fuerte',5,8,2,3);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Plato fuerte listo',5,8,2,3);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Preparación postre',5,8,2,3);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Postre listo',5,8,2,3);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Pagada',5,8,2,3);

insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Capturada',3,2,3,6);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Preparación de entrada',3,2,3,6);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Entrada lista',3,2,3,6);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Preparación plato fuerte',3,2,3,6);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Plato fuerte listo',3,2,3,6);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Preparación postre',3,2,3,6);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Postre listo',3,2,3,6);
insert into Orden (Estado,NumPersonas,NumMesa,idMesero,idCliente) values ('Pagada',3,2,3,6);

#Insert into Orde_Detalle
insert into Orden_Detalle (idEspecialidad,idAcompanante,idBebida,idPostre,idOrden) values (1,1,7,1,1);
insert into Orden_Detalle (idEspecialidad,idAcompanante,idBebida,idPostre,idOrden) values (2,3,2,3,2);
insert into Orden_Detalle (idEspecialidad,idAcompanante,idBebida,idPostre,idOrden) values (2,2,2,2,2);
insert into Orden_Detalle (idEspecialidad,idAcompanante,idBebida,idPostre,idOrden) values (4,1,7,1,20);
insert into Orden_Detalle (idEspecialidad,idAcompanante,idBebida,idPostre,idOrden) values (6,4,5,2,1);
insert into Orden_Detalle (idEspecialidad,idAcompanante,idBebida,idPostre,idOrden) values (6,4,5,2,14);




