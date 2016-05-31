#seleccionar todos los clientes que hayan ordenado pollo
select * from Cliente C inner join Orden O on C.idCliente = O.idOrden
		inner join Orden_Detalle OrdDet on O.idOrden = OrdDet.idOrden_Detalle
			inner join Especialidad E on OrdDet.idOrden_Detalle = E.idEspecialidad
            and E.Tipo = 'Pollo';

select * from Cliente C inner join Orden O on C.idCliente = O.idOrden
		inner join Orden_Detalle OrdDet on O.idOrden = OrdDet.idOrden_Detalle
			inner join Bebida B on OrdDet.idOrden_Detalle = B.idBebida
            and B.Tipo = 'Cerveza';

select count(Estado) from Orden where Estado = 'Capturada';