from models import *
#Conexão

database.connect()

# Inserir uma atividade em algum projeto

Atividade.create( codprojeto = 3, datafim = '2022-07-28', datainicio = '2022-06-30', descricao = 'BD - Atividade 5')


# Atualizar o líder de um projeto

projeto = Projeto.select().where(Projeto.codigo == 3).get()        
projeto.codresponsavel = 2
projeto.save()


# Listar todas os projetos e suas atividades

query = Projeto.select(
        Projeto.codigo,
        Projeto.nome, 
        Projeto.descricao,
        Projeto.codresponsavel,
        Projeto.coddepto,
        Projeto.datainicio, 
        Projeto.datafim,
        Atividade.codigo,
        Atividade.descricao,
        Atividade.codprojeto,
        Atividade.datainicio, 
        Atividade.datafim
        ).join(Atividade).where(Projeto.codigo == Atividade.codprojeto)


for projeto in query:
    print("\nProjeto")
    print(projeto.codigo)
    print(projeto.nome)
    print(projeto.descricao)
    print(projeto.codresponsavel)
    print(projeto.coddepto)
    print(projeto.datainicio.strftime("%d/%m/%Y")) 
    print(projeto.datafim.strftime("%d/%m/%Y"))
    print("\nAtividade")
    print(projeto.atividade.codigo)
    print(projeto.atividade.descricao)
    print(projeto.atividade.codprojeto)
    print(projeto.atividade.datainicio.strftime("%d/%m/%Y"))
    print(projeto.atividade.datafim.strftime("%d/%m/%Y"))
    