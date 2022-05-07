SELECT F.nome, F.salario, D.descricao
From Departamento D RIGHT OUTER JOIN funcionario F
	ON D.codigo = F.codDepto;