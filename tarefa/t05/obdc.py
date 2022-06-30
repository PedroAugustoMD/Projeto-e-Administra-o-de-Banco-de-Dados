import psycopg2

#Conexão

con = psycopg2.connect(host='localhost', database='AtividadesBD',
user='postgres', password='postgres')
cur = con.cursor()

# Inserir uma atividade em algum projeto

cur.execute("insert into atividade(descricao, codProjeto, dataInicio, dataFim) values('BD - Atividade 3', 3, '2022-06-30', '2022-07-28');")