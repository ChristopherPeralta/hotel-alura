create database alurahotel;
Use alurahotel;

Create table Reservas(
	id int auto_increment primary key ,
    fecha_Entrada date not null,
    fecha_Salida date not null,
    valor double,
    forma_pago varchar(18)
);

Create table Huespedes(
	id int auto_increment primary key ,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    fecha_de_Nacimiento date,
    nacionalidad varchar(20) not null,
	telefono varchar(9) not null,
    id_reservas int,
    foreign key (id_reservas) references reservas(id)
);



