import mysql.connector

cnx = mysql.connector.connect(host="127.0.0.1", user="chao", password = "693693", database="playground")

cursor = cnx.cursor()

query = (
    """DELETE 
    FROM prog_langs
    WHERE extension = "c"
    """
)

cursor.execute(query)

cnx.commit()

cursor.close()
cnx.close()