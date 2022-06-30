import psycopg2
con = psycopg2.connect(host='localhost', database='AtividadesBD',
user='postgres', password='postgres')
cur = con.cursor()