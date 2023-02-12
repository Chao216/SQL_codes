# install connector with python3 -m pip install mysql-connector-python

import mysql.connector

cnx = mysql.connector.connect(host="127.0.0.1", user="chao", password = "693693", database="playground")

cursor = cnx.cursor()

query = (
    """SELECT * FROM string_table;
    """
)

cursor.execute(query)
values= cursor.fetchall()
print(values)

for i in values:
    print(i)

for i in values:
    for node in i:
        print(node)

cursor.close()
cnx.close()