/* Adicionando Departamentos */

insert into departamento
(descricao, cod_gerente)
values ( 'Departamento de Matemática', null);

insert into departamento
(descricao, cod_gerente)
values ( 'Departamento de Geografia', null);

insert into departamento
( descricao, cod_gerente)
values ( 'Departamento de História', null);

insert into departamento
( descricao, cod_gerente)
values ('Departamento de Computação', null);

insert into departamento
( descricao, cod_gerente)
values ('Departamento de Sociologia', null);

/* Adicionando Funcionários */

insert into funcionario
(nome, sexo, dtNasc, salario, codDepto)
values ('Pedro', 'M', '2002-05-20', 7000.00, 4);

insert into funcionario
(nome, sexo, dtNasc, salario, codDepto)
values ('Eduarda', 'F', '2001-12-09', 3500.00, 5);

insert into funcionario
(nome, sexo, dtNasc, salario, codDepto)
values ('Renato', 'M', '1989-04-19', 2500.00, 3);

insert into funcionario
(nome, sexo, dtNasc, salario, codDepto)
values ('João', 'M', '1998-06-08', 4000.00, 1);

insert into funcionario
(nome, sexo, dtNasc, salario, codDepto)
values ('Rafael', 'M', '1980-06-08', 4500.00, 2);

/* Adicionando Projetos */
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('APF', 'Analisador de Ponto de Função', 1, 4, '2018-02-26', '2019-06-30');

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('Monitoria', 'Projeto de Monitoria 2019.1', 3, 3, '2019-02-26', '2019-12-30');

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('BD', 'Projeto de Banco de Dados', 4, 1, '2018-02-26', '2018-06-30');

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('Monitoria', 'Projeto de Monitoria 2020.1', 2, 5, '2020-02-26', '2020-12-30');

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
values ('PS', 'Projeto de Sociologia', 5, 2, '2019-02-26', '2019-06-30');

/* Adicionando atividades */
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('APF - Atividade 1','Fazer atividade 1', 4, '2018-02-26', '2018-06-30');
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('BD - Atividade 1','Fazer atividade 2', 1, '2018-02-26', '2018-06-30');
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('PS - Atividade 1','Fazer atividade 3', 2, '2019-02-26', '2019-06-30');

insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('Monitoria - Atividade 1','Fazer atividade 1', 3, '2018-02-26', '2018-06-30');
insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('Monitoria - Atividade 2','Fazer atividade 1', 3, '2018-02-26', '2018-06-30');

/* Adicionando atividade_projeto */
insert into atividade_projeto(cod_projeto, cod_atividade)
values (1,1);
insert into atividade_projeto(cod_projeto, cod_atividade)
values (3,2);
insert into atividade_projeto(cod_projeto, cod_atividade)
values (5,3);
insert into atividade_projeto(cod_projeto, cod_atividade)
values (2,4);
insert into atividade_projeto(cod_projeto, cod_atividade)
values (2,5);