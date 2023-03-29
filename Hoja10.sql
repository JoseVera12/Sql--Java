/*drop database if exists EmpresaVideojuegos;*/
create database if not exists EmpresaVideojuegos;
use EmpresaVideojuegos;

Create table Desarrollador(
	id int not null primary key,
    nombre varchar(25),
    puesto varchar(25)
)engine = innoDB;

insert into Desarrollador (id, nombre, puesto) values
(1,"Jose","Desarrollador"),
(2,"Carlos","Jefe"),
(3,"Robayo","Desarrollador"),
(4,"David","Desarrollador"),
(5,"Sergio","Coordinador");


Create table Videojuego(
	id int not null primary key,
    nombre varchar(45),
    precio int,
	categoría varchar(25),
    fechaSalida date
)engine = innoDB;

insert into Videojuego(id, nombre, precio,categoría,fechaSalida) values
(1, "Space Invaders",30,"Acción","2011-03-12"),
(2, "Call Of Duty MW3",55,"Acción","2009-06-24"),
(3, "Lego Star Wars",40,"Acción","2007-05-09");


Create table Cliente (
	id int not null primary key,
    nombre varchar(25),
	edad int
);

insert into Cliente (id, nombre, edad) values 
(1,"Ernesto",24),
(2,"Mario",18),
(3,"Miguel",7),
(4,"Daniel",14),
(5,"Antonio",30),
(6,"Joaquin",33);


create table Desarrollador_has_Videojuego(
	Desarrollador_id int not null,
	Videojuego_id int not null,
	foreign key (Desarrollador_id) references Desarrollador (id),
    foreign key (Videojuego_id) references Videojuego (id),
    id int not null
);
