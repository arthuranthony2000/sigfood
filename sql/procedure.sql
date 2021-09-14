--Revoga direitos

BEGIN;
CREATE FUNCTION check_pass(username TEXT, password TEXT) SECURITY DEFINER;
REVOKE ALL ON FUNCTION check_pass(uname TEXT, password TEXT) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION check_pass(username TEXT, password TEXT) TO admins;
COMMIT;


-- Insere cartão fidelidade

CREATE OR REPLACE FUNCTION InsereCartao(pontuacao INT, cpf_consumidor TEXT)
      RETURNS void AS $$
      BEGIN
        INSERT INTO Cartao_Fidelidade
         VALUES (pontuacao, cpf_consumidor);
      END;
      $$ LANGUAGE 'plpgsql';
