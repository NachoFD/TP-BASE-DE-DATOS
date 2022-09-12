alter table persona
add idProyecto int;

create table HorasCargadas (
idHC int not null auto_increment,
idProyecto int not null,
Legajo int not null,
idRol int not null,
Horas int,

Primary Key (idHC),
foreign key (idProyecto) references proyecto(id),
foreign key (Legajo) references persona(Legajo),
foreign key (idRol) references persona(idRol)
);

delimiter //
create procedure RendicionHoras(numLegajo int, numP int, hora int)
begin 
    update horascargadas
    set Horas = Horas + hora
       where Legajo = numLegajo and idProyecto = numP;
end //


insert into horascargadas (idHC, idProyecto, Legajo, idRol, Horas)
values (1, 1, 1111, 1, 0), (2, 1, 2222,2,0), (3, 1, 3333,3,0);

call RendicionHoras (1111, 1, 3);
