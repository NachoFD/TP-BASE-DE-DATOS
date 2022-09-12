delimiter //
create procedure RendicionHoras(numLegajo int, hora int)
begin 
	update horascargadas
    set Horas = Horas + hora
    where Legajo = numLegajo;
end //

create table HorasCargadas (
idHC int not null auto_increment,
Legajo int not null,
idRol int not null,
Horas int,

Primary Key (idHC),
foreign key (Legajo) references persona(Legajo),
foreign key (idRol) references persona(idRol)
);

insert into horascargadas (idHC, Legajo, idRol, Horas)
values (1, 1111, 1, 0), (2,2222,2,0), (3,3333,3,0)

call RendicionHoras (1111, 3)

select *
from horascargadas