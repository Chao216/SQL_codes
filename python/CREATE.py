import mysql.connector

cnx = mysql.connector.connect(host="127.0.0.1", user="chao", password="693693")

cursor = cnx.cursor()

query = (
    """ SHOW DATABASES;
    
    """
)

cursor.execute(query)
values = cursor.fetchall()
print(values)

query = (
    """USE playground;"""
)

cursor.execute(query)
values = cursor.fetchall()
print(values)

query = (
    """SHOW TABLES;"""
)

cursor.execute(query)
values = cursor.fetchall()
print(values)

query = (
    """CREATE TABLE IF NOT EXISTS prog_langs(
        id INT PRIMARY KEY AUTO_INCREMENT,
        language TEXT,
        extension TEXT
    );"""
)

cursor.execute(query)
values = cursor.fetchall()
print(values)

query = (
    """ 
    INSERT INTO prog_langs(language, extension)
    VALUES("JavaScript","js"),("Python","py"),("Shell","sh"),("SQL","sql"),("R","r");"""
)

cursor.execute(query)
values = cursor.fetchall()
print(values)

query = (
    """  SELECT *
    FROM prog_langs;"""
)

cursor.execute(query)
values = cursor.fetchall()
print(values)

cnx.commit()

cursor.close()

cnx.close()