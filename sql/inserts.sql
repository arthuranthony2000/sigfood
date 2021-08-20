-- 0 ADMINISTRADOR
-- 1 CONSUMIDOR

-- CONSUMIDOR

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

INSERT INTO Consumidor
    (cpf, nome, sexo, idade, fk_username_usuario) 
    VALUES
    ('466.539.997-26','Bianca Andreia Rocha', 'Feminino', 32, 'bianca.andreia'),
    ('944.345.122-00','Thales Pedro Diogo Assunção', 'Masculino', 32, 'thales.pedro'),
    ('248.934.605-95','Valentina Giovana Corte Real', 'Feminino', 20, 'valentina.giovana'),
    ('037.412.268-74','Miguel Murilo Pires', 'Masculino', 25, 'miguel.murilo'),
    ('148.506.661-16','Gustavo Caio Nunes', 'Masculino', 28, 'gustavo.caio');


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

INSERT INTO Categoria(nome) VALUES('Categoria A');
INSERT INTO Categoria(nome) VALUES('Categoria B');
INSERT INTO Categoria(nome) VALUES('Categoria C');
INSERT INTO Categoria(nome) VALUES('Categoria D');
INSERT INTO Categoria(nome) VALUES('Categoria E');


INSERT INTO Cardapio(nome, descricao, valor, promocao, estrelas, fk_codigo_categoria) VALUES('Prato A', 'Prato Simples 1', 54.23, FALSE, 1)
    INSERT INTO Cardapio(nome, descricao, valor, promocao, estrelas, fk_codigo_categoria) VALUES('Prato B', 'Prato Simples 2', 51.23, FALSE, 1),
    INSERT INTO Cardapio(nome, descricao, valor, promocao, estrelas, fk_codigo_categoria) VALUES('Prato C', 'Prato Simples 3', 52.23, FALSE, 1),
    INSERT INTO Cardapio(nome, descricao, valor, promocao, estrelas, fk_codigo_categoria) VALUES('Prato D', 'Prato Simples 4', 53.23, FALSE, 1),
    INSERT INTO Cardapio(nome, descricao, valor, promocao, estrelas, fk_codigo_categoria) VALUES('Prato E', 'Prato Simples 5', 55.23, FALSE, 1);









