Delimiter //

create procedure RendicionDeHoras (in Legajo int, horas int)
begin 
	select p.legajo, r.id as 'Rol', h.hD as 'HoraXDia', h.hS as 'HoraXSem', h.hM as 'HoraXMes'
    from rol r
    join horas h on h.id = r.idHoras
    join persona p on p.idRol = r.id
    where legajo = p.legajo;
end//
	