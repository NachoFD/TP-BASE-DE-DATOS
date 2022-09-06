create schema TP;
use TP;

create table CentroCostos (

id int not null,
descripcion varchar(255),

primary key (id)
);

create table CentroFacturacion (
idCostos int not null,
descripcion varchar(255),
importe double,

foreign key (idCostos) references CentroCostos(id)
);

create table Cliente (

id int not null,
cenGastos int not null,
cenFacturacion int not null,

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

create table Persona (

Legajo int not null,
Nombre varchar(30),
Apellido varchar(30),
idRol int not null,

Primary Key (Legajo),
Foreign Key (idRol) references Rol(id)
);
