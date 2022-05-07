CREATE VIEW AtividadesFuncionario(nomeFuncionario,numAtividades) as 
SELECT f.nome, count(a.cod_responsavel) 
FROM funcionario f, atividade a WHERE a.cod_responsavel = f.codigo GROUP BY f.nome;

SELECT * from AtividadesFuncionario
