USE playground;

DROP TABLE IF EXISTS string_table;
CREATE TABLE IF NOT EXISTS string_table(
id INT PRIMARY KEY AUTO_INCREMENT,
a TEXT,
b TEXT,
c TEXT)

SELECT * FROM string_table;

INSERT INTO string_table(a,b,c) 
VALUES("A","Chao","Jiang"),
("A","Peter","Lam"),
("B","Alex","Ellen"),
("B","William","Gates"),
("B","Angela","Merkel"),
("C","Tony","Stark"),
("C","Alicia","Allen"),
("C","Harry", "Potter"),
("C","Leana","Lovings");

SELECT * FROM string_table;

SELECT a,b,c, concat(a,b,c) as concat_,
concat_ws(" * ",a,b,c) as concat_ws_
FROM string_table;

SELECT GROUP_CONCAT(b) as last_names,
GROUP_CONCAT(c) as first_names,
GROUP_CONCAT(b SEPARATOR "  $  ") as last_names_sep,
GROUP_CONCAT(c SEPARATOR "   ￥  ") as first_names_sep
FROM string_table
GROUP BY a;
