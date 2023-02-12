import mysql.connector

cnx = mysql.connector.connect(host="127.0.0.1", user="chao", password = "693693", database="playground")

cursor = cnx.cursor()

#query = (
#    """INSERT INTO prog_langs(language, extension)
#    VALUES("C Programming Language", ".C");
#    """
#)

#cursor.execute(query)

#cnx.commit()

query = (
    '''SELECT * FROM prog_langs;
    '''
)

cursor.execute(query)
values = cursor.fetchall()

for value in values:
    print(value)

query = (
    '''UPDATE prog_langs
    SET extension = "c"
    WHERE language = "C Programming Language"
    '''
)

cursor.execute(query)

cnx.commit()

cursor.close()
cnx.close()