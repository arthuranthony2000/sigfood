
-- ### consultas simples

-- 01. Encontre o username de todos os usuários 

SELECT username
FROM usuario;

-- 02. Encontre o nome de todos os administradores

SELECT nome 
FROM administrador;

-- 03. Encontre o nome de todos os consumidores

SELECT nome
FROM consumidor;

-- 04. Encontre o nome de todos os pratos do cardápio

SELECT nome
FROM cardapio;

-- 05. Encontre o nome de todos os ingredientes

SELECT nome
FROM ingrediente;

-- 06. Encontre todos os pedidos

SELECT *
FROM pedido;

-- 07. Encontre todas as notas de pagamento

SELECT *
FROM nota_de_pagamento;

-- 08. Encontre o nome de todas as categorias

SELECT nome
FROM categoria;

-- 09. Encontre todos os consumidores do sexo masculino

SELECT *
FROM consumidor
WHERE sexo = 'Masculino';

-- 10. Encontre o nome de todos os grupos

SELECT nome
FROM grupo;

-- ### consultas complexas

-- 11. Encontre o username de todos os usuários que são administradores

SELECT u.username
FROM usuario u
INNER JOIN administrador a
ON u.username = a.fk_username_usuario

-- 12. Encontre o username de todos os usuários que são consumidores

SELECT u.username
FROM usuario u
INNER JOIN consumidor c
ON u.username = c.fk_username_usuario;

-- 13. Encontre todos os administradores que fazem parte do grupo A

SELECT * FROM administrador a
INNER JOIN (SELECT ag.fk_codigo_admin FROM admin_grupo ag
INNER JOIN grupo g
ON ag.fk_codigo_grupo = g.codigo
WHERE g.nome = 'Grupo A') adm_group
ON a.codigo = adm_group.fk_codigo_admin;

-- 14. Encontre o nome dos consumidores que consumiram o prato A

SELECT co.nome FROM consumidor co
WHERE co.cpf IN (
SELECT pe.fk_cpf_consumidor FROM pedido pe
WHERE pe.codigo IN (SELECT fk_codigo_pedido FROM pedido_cardapio pc
WHERE pc.fk_codigo_cardapio = (SELECT ca.codigo FROM cardapio ca
WHERE ca.nome = 'Prato A')));

-- 15. Encontre quais ingredientes fazem parte do prato A

SELECT ig.nome FROM ingrediente ig
WHERE ig.codigo IN (SELECT ci.fk_codigo_ingrediente FROM cardapio_ingrediente ci
WHERE ci.fk_codigo_cardapio = (SELECT ca.codigo FROM cardapio ca WHERE ca.nome = 'Prato A'));










