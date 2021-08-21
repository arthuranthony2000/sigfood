
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
-- 07. Encontre todas as notas de pagamento
-- 08. Encontre o nome de todas as categorias
-- 09. Encontre todos os consumidores do sexo masculino
-- 10. Encontre o nome de todos os grupos

-- ### consultas complexas

-- 11. Encontre o nome de todos os usuários

SELECT nome
FROM usuario u
INNER JOIN consumidor AS c
ON u.username = c.fk_username_usuario
INNER JOIN administrador AS a
ON u.username = a.fk_username_usuario

-- 12. Encontre o username de todos os administradores
-- 13. Encontre o nome e username dos consumidores
-- 14. Encontre o nome dos consumidores que consumiram o prato A
-- 15. Encontre qual ingrediente tem o prato A