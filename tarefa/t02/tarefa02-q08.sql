CREATE TRIGGER deletarPassageiros BEFORE
DELETE on voo 
for each ROW 
DELETE FROM cliente_voo c 
WHERE c.voo = OLD.codigo;

CREATE TRIGGER deletarPiloto BEFORE
DELETE on voo 
for each ROW 
DELETE FROM piloto c 
WHERE p.codigo = OLD.piloto;

