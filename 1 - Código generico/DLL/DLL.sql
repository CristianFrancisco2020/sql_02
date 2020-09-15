use escuela_03;

create table direccionalumno(
	id INT,
    city VARCHAR(30),
    street TEXT,
    number_ext INTEGER,
    number_int INTEGER,
    primary key(id),
    name_alum VARCHAR(34)
);



/*
create database NOMBRE_DB;
use NOMBRE_DB;
create database escuela_03;
use escuela_03;
SET SQL_SAFE_UPDATES = 0;
*/
insert into direccionalumno (id, city, street, number_ext, number_int)  values (2, 'CDMX', "Trueno", 404, 0),(3, 'EDOMEX', "Av. Ruiz", 1001, 66), (4, 'CDMX', 'Av. Madero', 102, 45);

SELECT * FROM direccionalumno where id < 1001;

UPDATE direccionalumno SET city = "EDOMEX", street = "San Juan" where id = 100;

DELETE FROM direccionalumno where id < 100;

SELECT * FROM direccionalumno ORDER BY number_ext desc;
SELECT * FROM direccionalumno limit 3; 