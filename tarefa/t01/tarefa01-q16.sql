CREATE VIEW Responsaveis(codigo,nomeFuncionario, salario) as 
SELECT f.codigo,f.nome, f.salario 
FROM funcionario f, projeto p WHERE (f.codigo = p.cod_responsavel and f.codigo IN (SELECT cod_gerente from departamento));

SELECT DISTINCT f.nome FROM funcionario f, Responsaveis r, projeto p WHERE (f.codigo = r.codigo) OR  ((f.codigo = p.cod_responsavel) AND (f.salario > r.salario))