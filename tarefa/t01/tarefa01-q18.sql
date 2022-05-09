SELECT f.nome , d.descricao FROM funcionario f, departamento d
WHERE f.salario IN(SELECT MAX(f.salario)
    FROM funcionario f LEFT OUTER JOIN departamento d
    ON  f.codDepto = d.codigo GROUP BY d.codigo
) AND f.codDepto = d.codigo
GROUP BY f.salario, f.nome, d.descricao
ORDER BY f.salario;