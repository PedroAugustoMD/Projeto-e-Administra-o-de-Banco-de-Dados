CREATE TRIGGER add_passageiro AFTER INSERT ON cliente_voo
	FOR EACH ROW
	UPDATE voo v SET num_passageiros = num_passageiros + 1
    where v.codigo = NEW.voo;