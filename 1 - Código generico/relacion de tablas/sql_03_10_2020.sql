use ejemplo100;

create table curp(
id_curp int primary key,
curp varchar(30)
);

create table mexicano(
id_mexicano int primary key,
nombre varchar(30),
apellido varchar(30),
edad int,
localidad varchar(30),
id_curp_fk int,
foreign key (id_curp_fk) references curp (id_curp)
);

insert into curp (id_curp, curp) values (2, "DSFDSFDSFT54645");
insert into mexicano (id_mexicano, nombre, apellido, edad, localidad, id_curp_fk) values (101, "Elizabeth ","Dominguez", 12, "CDMX",2);

CREATE TABLE familia (
id_familia int primary key,
num_hijos int,
num_nietos int,
id_mexicano_fk int,
foreign key (id_mexicano_fk) references mexicano (id_mexicano)
);
create table x(
id int primary key
);
select * from mexicano;
select * from curp;
select * from familia;

CREATE TABLE trabajo(
id_trabajo int PRIMARY KEY,
nombre_trabajo VARCHAR(30),
salario_trabajo float
);

CREATE TABLE mexicano_has_trabajo(
id_mexicano_has_trabajo int primary key,
fecha date,
id_mexicano_fk int,
id_trabajo_fk int,
foreign key (id_mexicano_fk) references mexicano(id_mexicano),
foreign key (id_trabajo_fk) references trabajo(id_trabajo)
);


insert into trabajo (id_trabajo, nombre_trabajo, salario_trabajo) Values (2, "Desarrollador web jr", 2000);
select * from trabajo;
select * from mexicano;
select * from mexicano_has_trabajo;

/*adelanto joins*/
SELECT id_mexicano, nombre, apellido, localidad, fecha AS fecha_contratacion, nombre_trabajo, salario_trabajo FROM mexicano INNER JOIN mexicano_has_trabajo ON mexicano_has_trabajo.id_mexicano_fk INNER JOIN trabajo ON mexicano_has_trabajo.id_trabajo_fk = trabajo.id_trabajo;

