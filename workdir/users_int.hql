CREATE DATABASE IF NOT EXISTS naveen_analytics 
COMMENT 'Holds telecom data for analysis' 
WITH DBPROPERTIES('edited-by'='Naveen');

USE naveen_analytics;

CREATE TABLE users(
id INT COMMENT 'Holds unique user id',
first_name STRING,
last_name STRING,
gender STRING,
designation STRING,
city STRING,
country STRING,
dob DATE
) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' 
LINES TERMINATED BY '\n' 
Stored as TextFile 
TBLPROPERTIES("skip.header.line.count"="1", "skip.footer.line.count"="1");

--LOAD DATA LOCAL INPATH '' into table users;
--LOAD DATA INPATH '/users2.dat' into table users;



