SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS huawei;

SHOW DATABASES;

USE huawei;

SHOW TABLES;

CREATE TABLE IF NOT EXISTS student(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20),
height INT,
weight INT,
gender ENUM("Male","Female","Unknown"),
country VARCHAR(20)
);

DESCRIBE student;

INSERT INTO 
student(name, height, weight, gender, country)
VALUES("a",170,60,"Male","India"),
("b",178,57,"Female","Russia"),
("c",190,89,"Unknown","America");

SELECT * 
FROM student;

TRUNCATE student;

SHOW TABLES;

DROP TABLE IF EXISTS student;

SHOW TABLES;

SHOW DATABASES;

DROP DATABASE IF EXISTS huawei;

SHOW DATABASES;

SELECT current_user();

SELECT current_timestamp();