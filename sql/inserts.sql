-- 0 ADMINISTRADOR
-- 1 CONSUMIDOR

-- USUÁRIO

INSERT INTO Usuario
    (username, password, tipo) 
    VALUES
    ('bianca.andreia', '123', 1),
    ('thales.pedro', '123', 1),
    ('valentina.giovana', '123', 1),
    ('miguel.murilo', '123', 1),
    ('gustavo.caio', '123', 1),
    ('sergio.thales', '123', 0),
    ('rosa.marlene', '123', 0),
    ('elias.alexandre', '123', 0),
    ('marli.evelyn', '123', 0),
    ('isabel.patricia', '123', 0);

-- CONSUMIDOR

INSERT INTO Consumidor
    (cpf, nome, sexo, idade, fk_username_usuario) 
    VALUES
    ('466.539.997-26','Bianca Andreia Rocha', 'Feminino', 32, 'bianca.andreia'),
    ('944.345.122-00','Thales Pedro Diogo Assunção', 'Masculino', 32, 'thales.pedro'),
    ('248.934.605-95','Valentina Giovana Corte Real', 'Feminino', 20, 'valentina.giovana'),
    ('037.412.268-74','Miguel Murilo Pires', 'Masculino', 25, 'miguel.murilo'),
    ('148.506.661-16','Gustavo Caio Nunes', 'Masculino', 28, 'gustavo.caio');

-- CARTÃO FIDELIDADE

INSERT INTO Cartao_Fidelidade(pontuacao, cpf_consumidor)
	VALUES
	(30, '466.539.997-26'),
	(10, '944.345.122-00'),
	(40, '248.934.605-95'),
	(50, '037.412.268-74'),
	(40, '148.506.661-16');

-- ADMINISTRADOR

-- 0 AGENTE DE TECNOLOGIA
-- 1 ASSISTENTE ADMINISTRATIVO

INSERT INTO Administrador(nome, tipo, fk_username_usuario)
	VALUES
	('Sérgio Thales Lucca Melo', 0, 'sergio.thales'),
	('Rosa Marlene Giovana Araújo', 0, 'rosa.marlene'),
	('Elias Alexandre Cavalcanti', 0, 'elias.alexandre'),
	('Marli Evelyn Esther Rodrigues', 1, 'marli.evelyn'),
	('Isabel Patrícia Kamilly da Silva', 1, 'isabel.patricia');

-- GRUPO

INSERT INTO Grupo(nome, descricao, data_criacao)
	VALUES
	('Grupo A', 'Grupo Adminstrativo 1', now()),
	('Grupo B', 'Grupo Adminstrativo 2', now()),
	('Grupo C', 'Grupo Adminstrativo 3', now()),
	('Grupo D', 'Grupo Adminstrativo 4', now()),
	('Grupo E', 'Grupo Adminstrativo 5', now());

-- ADMIN GRUPO

INSERT INTO Admin_Grupo(Data_Admissao, fk_codigo_admin, fk_codigo_grupo)
	VALUES
	(now(), 1, 1),
	(now(), 1, 2),
	(now(), 2, 1),
	(now(), 2, 2),
	(now(), 3, 2),
	(now(), 3, 3),
	(now(), 4, 4),
	(now(), 4, 5);

-- CATEGORIA

INSERT INTO Categoria(nome)
	VALUES
	('Categoria A'),
	('Categoria B'),
	('Categoria C'),
	('Categoria D'),
	('Categoria E');

-- CARDÁPIO


INSERT INTO Cardapio(nome, descricao, valor, promocao, estrelas, fk_codigo_categoria) 
	VALUES
	('Prato A', 'Prato Simples 1', 54.23, FALSE, 4, 1),
    	('Prato B', 'Prato Simples 2', 51.23, FALSE, 5, 2),
    	('Prato C', 'Prato Simples 3', 52.23, FALSE, 5, 3),
    	('Prato D', 'Prato Simples 4', 53.23, FALSE, 4, 4),
    	('Prato E', 'Prato Simples 5', 55.23, FALSE, 4, 5);

-- INGREDIENTE

INSERT INTO Ingrediente(nome) 
    VALUES
    ('ingrediente01'), ('ingrediente02'), 
    ('ingrediente03'), ('ingrediente04'), 
    ('ingrediente05'), ('ingrediente06'), 
    ('ingrediente07'), ('ingrediente08');

-- CARDÁPIO_INGREDIENTE

INSERT INTO Cardapio_Ingrediente(fk_codigo_cardapio, fk_codigo_ingrediente)
	VALUES
	(1, 1),
	(1, 2),
	(2, 2),
	(2, 3),
	(3, 3),
	(3, 4),
	(4, 4),
	(4, 5),
	(5, 5),
	(5, 6);

-- COMBO

INSERT INTO Combo(fk_codigo_1_cardapio, fk_codigo_2_cardapio)
	VALUES
	(1, 2),
	(1, 3),
	(2, 3),
	(2, 4),
	(4, 1);

-- KEY

INSERT INTO Key(valor, codigo_admin)
	VALUES
	('a7d3b3c8785fb0c32c222f3d7ddd67af', 1), -- PERMISSÃO 001
	('84da5bb2d468174566581fd4a806f97d', 2), -- PERMISSÃO 002
	('a2b453013abb1da3e1eab65a3f28c338', 3), -- PERMISSÃO 003
	('ce053a95277219c9b3f6724c222a1565', 4), -- PERMISSÃO 004
	('caef1a04e10a29bde33b90d6ef8bae83', 5); -- PERMISSÃO 005
	








