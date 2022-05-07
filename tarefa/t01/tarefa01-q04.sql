UPDATE departamento
SET cod_gerente = 1 
WHERE codigo = 4;

CREATE VIEW Gerentes(codigo, nome, salario, codDepto)
AS SELECT codigo, nome, salario, codDepto
FROM funcionario
WHERE codigo IN (SELECT cod_gerente FROM departamento);

SELECT nome, salario, codDepto
FROM funcionario
WHERE codigo NOT IN (SELECT codigo
		FROM Gerentes) ORDER BY codDepto