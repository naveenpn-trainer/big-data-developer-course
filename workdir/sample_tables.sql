DROP TABLE user;
DROP TABLE employee;
DROP TABLE stocks;


CREATE TABLE  user( 
id int, 
age int, 
gender char(2), 
PRIMARY KEY (id)
);


insert into user(id,age,gender) values(1001,25,'M');
insert into user(id,age,gender) values(1002,26,'F');
insert into user(id,age,gender) values(1003,27,'M');
insert into user(id,age,gender) values(1004,28,'M');
insert into user(id,age,gender) values(1005,29,'M');
insert into user(id,age,gender) values(1006,30,'F');
insert into user(id,age,gender) values(1007,31,'M');
insert into user(id,age,gender) values(1008,32,'F');
insert into user(id,age,gender) values(1009,33,'M');
insert into user(id,age,gender) values(1010,34,'F');

CREATE TABLE employee( 
id int, 
designation varchar(43), 
salary int
);

insert into employee(id,designation,salary) values(1001,'technician',54655);
insert into employee(id,designation,salary) values(1002,'technician',53655);
insert into employee(id,designation,salary) values(1003,'technician',52655);
insert into employee(id,designation,salary) values(1004,'technician',57655);
insert into employee(id,designation,salary) values(1005,'technician',58655);
insert into employee(id,designation,salary) values(1006,'student',59655);
insert into employee(id,designation,salary) values(1007,'student',64655);
insert into employee(id,designation,salary) values(1008,'student',74655);
insert into employee(id,designation,salary) values(1009,'student',84655);
insert into employee(id,designation,salary) values(1010,'student',94655);




CREATE TABLE stocks (
id INT NOT NULL AUTO_INCREMENT,
symbol varchar(10), 
name varchar(40), 
trade_date DATE, 
close_price DOUBLE, 
volume INT,
updated_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
PRIMARY KEY ( id )
);

INSERT INTO stocks (symbol, name, trade_date, close_price, volume) VALUES ('AAL', 'American Airlines', '2015-11-12', 42.4, 4404500);
INSERT INTO stocks (symbol, name, trade_date, close_price, volume) VALUES ('AAPL', 'Apple', '2015-11-12', 115.23, 40217300);
INSERT INTO stocks (symbol, name, trade_date, close_price, volume) VALUES ('AMGN', 'Amgen', '2015-11-12', 157.0, 1964900);
