CREATE DATABASE IF NOT EXISTS playground;

USE playground;

SELECT database();

DROP TABLE IF EXISTS date_table;
CREATE TABLE IF NOT EXISTS date_table(
id INT PRIMARY KEY AUTO_INCREMENT,
date DATE,
time TIME,
datetime DATETIME);

DESCRIBE date_table;

INSERT INTO date_table(date,time, datetime)
SELECT curdate(),current_time(),now();

SELECT * FROM date_table;

-- adddate

SELECT adddate(date, INTERVAL -10 DAY) as new_date
FROM date_table
WHERE id = 1;

-- addtime

SELECT addtime(time, "1:10:20") as new_time
FROM date_table
WHERE id = 1;

SELECT year(datetime) as Year, month(datetime) as Month, day(datetime) as Day
FROM date_table;

SELECT LAST_DAY(datetime) as lastday
FROM date_table;

SELECT day(last_day(datetime)) as 天数
FROM date_table;

SELECT date_format(datetime, "%Y年%m月%d日") as 日期
FROM date_table;

SELECT current_timestamp();

CREATE TABLE IF NOT EXISTS delta_time(
id INT PRIMARY KEY AUTO_INCREMENT,
date1 DATE,
date2 DATE);

SELECT * FROM delta_time;

INSERT INTO delta_time(date1, date2)
VALUES("1997-02-16","2023-02-12");

SELECT * FROM delta_time;

SELECT timediff(date2, date1) as delta
FROM delta_time;

SELECT timestampdiff(YEAR, date1, date2) as delta
FROM delta_time;

SELECT timestampdiff(MONTH, date1, date2) as delta
FROM delta_time;

SELECT timestampdiff(DAY, date1, date2) as delta
FROM delta_time;

SELECT timestampdiff(SECOND, date1, date2) as delta
FROM delta_time;

SELECT version();

SHOW TABLES;

