
insert into Rol (id,idHoras,idProyecto)
values (01,1,1), (02,2,1), (03,3,1);

insert into Proyecto(id,idCliente)
values (01,01), (02,01), (03,02), (04,02);

insert into horas (id,hD,hS,hM)
values (1,3,15,60), (2,5,25,100), (3,2,10,40);

insert into Cliente (id,Nombre)
values (01,'Optica'), (02,'Banco'), (03,'Tienda');

insert into CostosYFacturacion(idCliente,idRol,descripcion,importe)
values (1,1,'Salario',$55000), (1,2,'Salario',$75000), (1,3,'Salario',$40000);

insert into horascargadas (idHC, idProyecto, Legajo, idRol, Horas)
values (1, 1, 111, 1, 0), (2, 1, 222,2,0), (3, 1, 333,3,0);
