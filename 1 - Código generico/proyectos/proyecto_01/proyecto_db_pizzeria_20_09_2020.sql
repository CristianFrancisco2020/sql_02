create database tienda_pizzeria;
use tienda_pizzeria;

create table telefonos_emergencia(
id_telefonos_emergencia integer primary key,
telefono_1 integer not null,
telefono_2 integer
);

create table datos_medicos_trabajador(
id_datos_medicos integer primary key,
tipo_sangre varchar(3),
enfermedades text,
discapacidad text
);

create table datos_trabajador(
id_datos_trabajador integer primary key,
fecha_contratacion date,
tiempo_contratacion float,
id_fk_datos_medicos integer,
id_fk_telefonos_emergencia integer,
foreign key (id_fk_datos_medicos)  references datos_medicos_trabajador (id_datos_medicos),
foreign key (id_fk_telefonos_emergencia) references telefonos_emergencia (id_telefonos_emergencia)
);



create table password_trabajador(
id_password integer primary key not null,
password_trabajador varchar(99) not null,
pregunta varchar(50) not null,
respuesta varchar(50) not null
);

create table trabajador(
id_trabajador varchar (99)  not null primary key,
id_fk_datos_trabajador integer  not null,
id_fk_password integer not null,
nombre varchar(30),
apellidos varchar (30),
fecha_nacimiento datetime,
foreign key (id_fk_datos_trabajador) references  datos_trabajador(id_datos_trabajador),
foreign key (id_fk_password) references password_trabajador(id_password)
);



create table password_cliente(
id_password integer primary key,
password_cliente varchar (99),
pregunta varchar (50),
respuesta varchar(99)
);

create table cliente(
id_cliente integer primary key,
id_fk_password integer,
nombre varchar(30),
apellidos varchar (30),
fecha_nacimiento datetime,
foreign key (id_fk_password) references password_cliente(id_password)
);



create table ingredientes_pizza (
id_ingredientes_pizza integer primary key,
ingrediente_1 text,
ingrediente_2 text,
ingrediente_3 text
);

create table menu(
id_menu varchar(4) primary key,
id_fk_ingredientes_pizza INTEGER,
fecha_vigencia date,
nombre_pizza varchar(55),
foreign key (id_fk_ingredientes_pizza) references ingredientes_pizza (id_ingredientes_pizza)
);

create table venta_pizza(
id_venta_pizza integer primary key not null, 
id_fk_menu varchar(4),
fecha_venta datetime,
costo_pizza float,
foreign key (id_fk_menu) references menu(id_menu)
);
create table direccion_pedido(
id_direccion integer primary key,
direccion text,
colonia varchar (30)
);
create table status_pedido (
id_status_pedido varchar(10) primary key,
status_pedido varchar(10),
id_fk_direccion integer,
id_fk_ventas integer,
id_fk_cliente integer,
id_fk_trabajador varchar (99),
foreign key (id_fk_direccion) references direccion_pedido (id_direccion),
foreign key (id_fk_ventas) references venta_pizza (id_venta_pizza),
foreign key (id_fk_cliente) references cliente (id_cliente),
foreign key (id_fk_trabajador) references trabajador (id_trabajador)
);



