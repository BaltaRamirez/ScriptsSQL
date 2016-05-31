#seleccionar todos los clientes que hayan ordenado pollo
select * from Cliente C inner join Orden O on C.idCliente = O.idOrden
		inner join Orden_Detalle OrdDet on O.idOrden = OrdDet.idOrden_Detalle
			inner join Especialidad E on OrdDet.idOrden_Detalle = E.idEspecialidad
            and E.Tipo = 'Pollo';
            
            
#Muestre todos los clientes que hayan ordenado bebidas alcohólicas
select * from Cliente C inner join Orden O on C.idCliente = O.idOrden
		inner join Orden_Detalle OrdDet on O.idOrden = OrdDet.idOrden_Detalle
			inner join Bebida B on OrdDet.idOrden_Detalle = B.idBebida
            and B.Tipo = 'Cerveza';


#Muestre cuántas órdenes se encuentran en el status de capturada
select count(Estado) from Orden where Estado = 'Capturada';
