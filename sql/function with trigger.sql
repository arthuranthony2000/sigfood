CREATE OR REPLACE FUNCTION tipo_usuario_log_func()
RETURNS TRIGGER AS $$
BEGIN
	INSERT INTO Administrador (nome, tipo, fk_username_usuario)
	VALUES (NEW.nome, NEW.TIPO, NEW.fk_username_usuario);
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tipo_usuario
	AFTER INSERT ON Usuario
	FOR EACH ROW
	EXECUTE PROCEDURE tipo_usuario_log_func();

