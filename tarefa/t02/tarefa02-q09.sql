INSERT INTO cliente(nome, endereco)
VALUES ("Pedro",  "Beco da facada");

INSERT INTO milhas(cliente, quantidade)
VALUES (1,  50);


CREATE TRIGGER adicionarCartaoMilhagem AFTER
UPDATE ON cliente
FOR EACH ROW 
INSERT INTO milhas(cliente, quantidade)
VALUES(OLD.codigo, 0) ;
#Erro de chave primária duplicada em milhas

#Solução
CREATE TRIGGER adicionarCartaoMilhagem AFTER
UPDATE ON cliente
FOR EACH ROW 
UPDATE milhas m SET quantidade = 0
where m.cliente = OLD.codigo;
