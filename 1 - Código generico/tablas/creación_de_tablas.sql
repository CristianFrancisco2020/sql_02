create table users3(
id INT  PRIMARY KEY, -- simple
user_name TEXT(1),
date_birtday DATE,
pass VARCHAR(99)
);

create table users5(
id INT,
user_name VARCHAR(34),
date_birtday DATE,
pass VARCHAR(99),
city text,
PRIMARY KEY (id, user_name, date_birtday, pass) -- compleja o compuesta
);