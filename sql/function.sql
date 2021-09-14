--Verificador para usuario e senha!

CREATE FUNCTION check_pass(username TEXT, password TEXT)
RETURNS BOOLEAN AS $$
DECLARE passed BOOLEAN;
BEGIN
        SELECT  (pwd = $2) INTO passed
        FROM    Usuario
        WHERE   username = $1;

        RETURN passed;
END;
$$  LANGUAGE plpgsql
    SECURITY DEFINER SET search_path = administrador, pg_temp;

-- Contador de usuarios por idade

CREATE FUNCTION contador_usuarios(idade1 INT, idade2 INT)
RETURNS INT
LANGUAGE plpgsql AS $$
DECLARE
   contador INTEGER;
BEGIN
   SELECT count(*) 
   INTO contador
   FROM Usuarios
   WHERE idade BETWEEN idade1 and idade2;
   
   RETURN contador;
END;
$$;
