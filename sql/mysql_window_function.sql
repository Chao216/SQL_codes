SHOW DATABASES;

USE world;

SHOW TABLES;

DESCRIBE country;

SELECT * FROM country;

-- window function

SELECT
Name, Continent,
DENSE_RANK() OVER (PARTITION BY Continent ORDER BY Population DESC) AS 人口榜,
RANK() OVER (PARTITION BY Continent ORDER BY LifeExpectancy Desc) AS 长寿榜,
ROW_NUMBER() OVER (PARTITION BY Continent ORDER BY SurfaceArea DESC) as 面积榜
FROM country;


-- create view

CREATE VIEW three_rank as 
SELECT
Name, Continent,
DENSE_RANK() OVER (PARTITION BY Continent ORDER BY Population DESC) AS 人口榜,
RANK() OVER (PARTITION BY Continent ORDER BY LifeExpectancy Desc) AS 长寿榜,
ROW_NUMBER() OVER (PARTITION BY Continent ORDER BY SurfaceArea DESC) as 面积榜
FROM country;

SELECT * FROM three_rank;


SELECT * FROM country;

SELECT Name, Continent,
SUM(Population) OVER ( PARTITION BY Continent ORDER BY Population ASC) as sum_of_pop,
AVG(LifeExpectancy) OVER (PARTITION BY Continent ) as avg_life_expc
FROM country; 

SHOW DATABASES;

USE sakila;

SHOW TABLES;

DESCRIBE inventory;

SELECT * FROM inventory;

--  with rollup

select film_id, 
SUM(film_id) as 库存
FROM inventory
GROUP BY film_id WITH ROLLUP
ORDER BY 库存 DESC;
