CREATE TRIGGER add_milhas AFTER INSERT ON cliente
	FOR EACH ROW
	INSERT INTO milhas SET cliente=NEW.codigo, quantidade=0;