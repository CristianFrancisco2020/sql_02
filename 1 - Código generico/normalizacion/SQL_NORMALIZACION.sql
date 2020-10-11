CREATE DATABASE universidad;
USE universidad;

CREATE TABLE miembro(
	StudentId VARCHAR(99) PRIMARY KEY,
    LastName VARCHAR(25) NOT NULL,
    FirstName VARCHAR(25) NOT NULL,
	DateJoined DATE NOT NULL,
    promedio FLOAT
);

CREATE TABLE club(
	id_club INT PRIMARY KEY,
    DOB DATE NOT NULL,
    Assoc_name VARCHAR(30) NOT NULL,
	Maxmen INT NOT NULL
);


CREATE TABLE miembro_has_club_union (
id_miembro_has_club_union INT PRIMARY KEY NOT NULL,
miembro_StudentId_fk  VARCHAR(99),
club_id_club_fk INT,
foreign key (miembro_StudentId_fk) REFERENCES miembro (StudentId),
foreign key (club_id_club_fk) REFERENCES club (id_club)
);

INSERT club (id_club,DOB, Assoc_name, Maxmen ) VALUES (1, "2018-01-09", "Episilon Tao", 50), (2, "2020-09-10", "Club Robotica", 20);
INSERT INTO miembro (StudentId, LastName, FirstName, DateJoined, promedio) VALUES ("Stu001", "Mora", "Cristian", "2020-10-09"), ("Stu002", "Ruiz", "Juan", "2020-02-10", 7.9);
INSERT INTO miembro_has_club_union (id_miembro_has_club_union,miembro_StudentId_fk, club_id_club_fk ) VALUES  (1, "Stu001", 1);
INSERT INTO miembro_has_club_union (id_miembro_has_club_union,miembro_StudentId_fk, club_id_club_fk ) VALUES  (2, "Stu001", 2);
INSERT INTO miembro_has_club_union (id_miembro_has_club_union,miembro_StudentId_fk, club_id_club_fk ) VALUES  (3, "Stu002", 1);

SELECT StudentId, LastName, FirstName, DateJoined, Assoc_name, promedio FROM miembro 
INNER JOIN miembro_has_club_union ON miembro.StudentId = miembro_has_club_union.miembro_StudentId_fk 
INNER JOIN club ON miembro_has_club_union.club_id_club_fk = club.id_club;




