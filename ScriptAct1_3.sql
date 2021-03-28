
use master
go
CREATE DATABASE BluePrint
go
USE BluePrint
go
create table TiposClientes
(
IdTipo int not null primary key identity(1,1),
Nombre varchar(25) not null  unique ,
)
go
create table Clientes
(
CodCliente int not null identity (1,1) primary key,
RazonSocial varchar(50) not null,
Cuit varchar(25) not null unique,
Tipo int not null foreign key references TiposClientes(IdTipo),
Mail varchar (25) null,/* la palabra pueda  y no deba me da a entender que es optativo*/
Telefono varchar (25) null,/* la palabra pueda  y no deba me da a entender que es optativo*/
Celular varchar (25) null/* la palabra pueda  y no deba me da a entender que es optativo*/
)
go
create table Proyectos
(
IdProyecto varchar(5) not null primary key,
Descripcion varchar(200) null,
Nombre varchar(25) not null,
Clientes int not null foreign key references Clientes(CodCliente),
FechaInicio date not null,
FechaFin date null,
Costo money not null,
EstadoProyecto bit not null
)
/* DATOS TABLA TIPOS  CLIENTES*/
insert into TiposClientes(Nombre) values('Cliente muy importante');
insert into TiposClientes values('Educativo público');
insert into TiposClientes values('Sin fines de lucro');
insert into TiposClientes (Nombre) values ('Extranjero');
insert into TiposClientes values ('Nacional');

/* DATOS TABLA CLIENTES */
insert into  Clientes (RazonSocial,Cuit,Tipo,Mail,Telefono,Celular) values('Brian Lara','11-111111-1',1,'hola@brianlara.com.ar','45656643','1128473829');
insert into  Clientes (RazonSocial,Cuit,Tipo) values ('Legna Nomis','44-44444-4',1);
insert into Clientes (RazonSocial,Cuit,Tipo) values('World Animal Protection','98',2);
insert into Clientes (RazonSocial,Cuit,Tipo) values('Adducci','88-888888-8',5); 
insert into Clientes(RazonSocial,Cuit,Tipo) values('Vaca SA','66-666666-6',3); 
insert into Clientes (RazonSocial,Cuit,Tipo) values('UTN' , '22-222222-2',3);	
insert into Clientes (RazonSocial,Cuit,Tipo) values('Kloster Inc','99',2);		
insert into Clientes (RazonSocial,Cuit,Tipo) values('Hugo Gomez ','77-777777-7',1);		
insert into Clientes (RazonSocial,Cuit,Tipo) values('Clifton Goldney Inc','33-333333-3',2);		
insert into Clientes (RazonSocial,Cuit,Tipo) values(';Strebern Ich','55-555555-5',4) ;		
insert into Clientes(RazonSocial,Cuit,Tipo) values('Estudio Contable Arevalo y Cía', '99-999999-9',2);	
insert into Clientes (RazonSocial,Cuit,Tipo) values('White SA','11-0000000',3);

/* DATOS TABLA PROYECTOS*/
INSERT INTO Proyectos(IdProyecto,Descripcion,Nombre,Clientes,FechaInicio,Costo,EstadoProyecto ) values('A100','Aplicación que permitirá gestionar tu establecimiento educativo','Scholar',1,'2020/5/14' ,400000,1);	
INSERT INTO Proyectos values('B125','Servicio de envío de mail masivo.','Mailer',2,'2019/7/21',null,125000,1);	
INSERT INTO Proyectos values('CC45',' Gestor de ventas.','Sales  manager',1,'2019/12/8',null,800000,0);
INSERT INTO Proyectos values('CC46','Gestor de focas.','Sales  manager',3,'	2020/3/13',NULL,950000,1);	

