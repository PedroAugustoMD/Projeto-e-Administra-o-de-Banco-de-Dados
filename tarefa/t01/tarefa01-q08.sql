CREATE VIEW ProjetosDepto(gerente,descricao, projetos) as 
SELECT d.cod_gerente,d.descricao,count(p.cod_depto) 
FROM projeto p RIGHT OUTER JOIN departamento d ON p.cod_depto = d.codigo GROUP BY d.cod_gerente, d.descricao;

SELECT f.nome, n.descricao, n.projetos FROM ProjetosDepto n LEFT OUTER JOIN funcionario f ON f.codigo = n.gerente;