USE master
CREATE DATABASE dbProductos

GO

USE dbProductos
create table categoria(
	idCategoria integer primary key identity,
	nombre varchar(50) unique not null,
	descripcion varchar(255) null,
	estado bit default(1)
);
go

insert into categoria (nombre) select 'electrodomesticos';
go


create table producto(
	idProducto integer primary key identity,
	idCategoria integer not null,
	codigo varchar(64) null,
	nombre varchar(100) not null unique,
	precio_venta decimal(11,2) not null,
	stock integer not null,
	decripcion varchar(255) null,
	estado bit default(1),
	FOREIGN KEY (idCategoria) REFERENCES categoria (idCategoria)
);
go