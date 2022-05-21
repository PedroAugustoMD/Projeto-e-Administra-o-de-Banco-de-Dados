CREATE TRIGGER somamilhas AFTER INSERT ON cliente_voo
	FOR EACH ROW
	UPDATE milhas SET quantidade = quantidade + 
    (SELECT distancia FROM voo v, cliente_voo 
    WHERE NEW.voo = v.codigo
    ) / 10
    WHERE cliente = new.cliente;