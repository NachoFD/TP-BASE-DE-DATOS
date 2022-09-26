alter table costosyfacturacion
add unique index i_cliente (idCliente, descripcion, importe);

alter table horasCargadas 
add unique index i_foreignKeys (idProyecto, Legajo, idRol, horas);

alter table persona
add unique index i_persona (Legajo, Nombre, Apellido);