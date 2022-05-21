CREATE TRIGGER add_voo AFTER INSERT ON voo
	FOR EACH ROW
	UPDATE piloto p SET num_voos = num_voos + 1
    where p.codigo = NEW.piloto;
