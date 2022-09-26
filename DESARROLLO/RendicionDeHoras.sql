delimiter //
create procedure RendicionHoras(numLegajo int, numRol int, hora int)
begin 
    update horascargadas
    set Horas = Horas + hora
       where Legajo = numLegajo and idRol = numRol;
end //