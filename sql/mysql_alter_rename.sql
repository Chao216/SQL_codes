USE playground;

DROP TABLE IF EXISTS test;
CREATE TABLE IF NOT EXISTS test(
id INT PRIMARY KEY AUTO_INCREMENT,
year_ INT,
month_ INT,
day_ INT
);

DESCRIBE test;

-- 增加 column
ALTER TABLE test
ADD date_ DATE;

DESCRIBE test;

ALTER TABLE test
ADD time_ TIME;

DESCRIBE test;

ALTER TABLE test
ADD datetime_ DATETIME;

DESCRIBE test;

-- 去除column

ALTER TABLE test
DROP COLUMN year_;

ALTER TABLE test
DROP COLUMN month_;

ALTER TABLE test
DROP COLUMN day_;

DESCRIBE test;

-- modify column

ALTER TABLE test
MODIFY datetime_ TIMESTAMP;

DESCRIBE test;

-- 重命名 列

ALTER TABLE test
RENAME COLUMN date_ TO 日期;

ALTER TABLE test
RENAME COLUMN time_ TO 时间;

ALTER TABLE test
RENAME COLUMN datetime_ TO 日期时间;

DESCRIBE test;

SHOW TABLES;

-- 重命名 表
RENAME TABLE test TO alter_table;

SHOW TABLES;