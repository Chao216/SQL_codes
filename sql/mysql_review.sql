SHOW DATABASES;
USE world;
SHOW TABLES;
DROP TABLE IF EXISTS practice;
CREATE TABLE IF NOT EXISTS practice(
id INT PRIMARY KEY AUTO_INCREMENT,
name1 VARCHAR(20),
age INT,
country VARCHAR(20));
SELECT * FROM practice;
INSERT INTO practice(name1, age, country) VALUES("chao",26,"China"),("Vova",29,"Finland"),("Apurva",27,"Intia");
SELECT * FROM practice;
-- we need to delete duplicate rows
DELETE big 
FROM practice big, practice small
WHERE big.name1 = small.name1 AND big.id > small.id;
SELECT * FROM practice;
DELETE FROM practice where id > 3;
SELECT * FROM practice;

-- CREATE
INSERT INTO practice(name1,age,country) VALUES("yajun",17,"China"),("qiqi",17,"China");
SELECT * FROM practice;

-- read

SELECT name1, age
FROM practice;

-- UPDATE

UPDATE practice
SET country = "India"
WHERE id = 3;
SELECT *
FROM practice;

-- DELETE

DELETE 
FROM practice
WHERE id > 1 AND id < 4;

SELECT *
FROM practice;

SHOW TABLES;

SHOW DATABASES;

SELECT database();

SELECT user();

SELECT current_user();

DESCRIBE practice;