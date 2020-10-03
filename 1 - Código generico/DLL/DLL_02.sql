create table users(
id integer primary key,
nickname varchar(40),
passwords varchar(30)
);

insert into users(id, nickname, passwords) values (1, "dngdf", "d838");

alter table users add expired date after passwors;
SELECT * FROM users;
drop table users;
truncate table users;

update users set id = 100 where nickname = "dngdf";
 delete from users where id = 2;
/*SET SQL_SAFE_UPDATES = 0;
show tables; */
show schemas;