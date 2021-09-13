CREATE VIEW cpf_consumidor AS SELECT pe.fk_cpf_consumidor FROM pedido pe 
	WHERE pe.codigo IN (
		SELECT fk_codigo_pedido FROM pedido_cardapio pc
		WHERE pc.fk_codigo_cardapio = (
			SELECT ca.codigo FROM cardapio ca
			WHERE ca.nome = 'Prato A'));

SELECT co.nome 
FROM consumidor co, cpf_consumidor cc
WHERE co.cpf IN (cc.fk_cpf_consumidor);



CREATE VIEW cardapio AS SELECT ci.fk_codigo_ingrediente FROM cardapio_ingrediente ci WHERE ci.fk_codigo_cardapio = (SELECT ca.codigo FROM cardapio ca WHERE ca.nome = 'Prato A')

SELECT ig.nome FROM ingrediente ig, cardapio c
WHERE ig.codigo IN (c.fk_codigo_ingrediente);


