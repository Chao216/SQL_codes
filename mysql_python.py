import mysql.connector

cnx = mysql.connector.connect(user='chao',password='693693',
                              host='127.0.0.1',
                              database='playground')


cursor = cnx.cursor()
query = (
    """ SELECT *
    FROM string_table;"""
)

cursor.execute(query)

values = cursor.fetchall()
print(values)

cursor.close()
cnx.close()