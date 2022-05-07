SELECT p.nome, d.descricao, f.nome 
FROM projeto p, departamento d, funcionario f 
WHERE p.cod_responsavel = f.codigo and p.cod_depto = d.codigo;