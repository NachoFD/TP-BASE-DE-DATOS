Delimiter //

create procedure LiquidacionMensual (in legajo int, out importe int)
begin 
	select  c.importe
    from persona p
    join rol r on p.idRol = r.id
    join costosyfacturacion c on r.id = c.idRol
    join horas h on h.id = r.idHoras
    where p.legajo = legajo;
    
end //