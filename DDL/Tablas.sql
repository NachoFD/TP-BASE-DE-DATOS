create schema TP;
use TP;

create table Cliente (

id int not null,
Nombre varchar(30),

Primary key (id)
);

create table Proyecto (

id int not null,
idCliente int not null,

primary key (id),
foreign key (idCliente) references Cliente(id)
);

create table Horas (

id int not null,
hD int,
hS int,
hM int,

Primary Key (id)
);

create table Rol (
id int not null,
idHoras int not null,
idProyecto int not null,

Primary Key (id),
Foreign Key (idHoras) references Horas(id),
foreign key (idProyecto) references Proyecto(id)
);

create table CostosYFacturacion (

idCliente int not null,
idRol int not null,
descripcion varchar(255),
importe double,

Foreign Key (idCliente) references Cliente(id),
Foreign key (idRol) references Rol(id)
);

create table Persona (

Legajo int not null,
Nombre varchar(30),
Apellido varchar(30),
idRol int not null,

Primary Key (Legajo),
Foreign Key (idRol) references Rol(id)
);
