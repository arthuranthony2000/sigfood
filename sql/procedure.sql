BEGIN;
CREATE FUNCTION check_pass(username TEXT, password TEXT) SECURITY DEFINER;
REVOKE ALL ON FUNCTION check_pass(uname TEXT, password TEXT) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION check_pass(username TEXT, password TEXT) TO admins;
COMMIT;


-- função sem retorno (basicamente)a