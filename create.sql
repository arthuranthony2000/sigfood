CREATE TABLE Usuario(
	username VARCHAR(40),
	password VARCHAR(40) NOT NULL,
	tipo INTEGER NOT NULL,
	PRIMARY KEY(username)
);

CREATE TABLE Consumidor(
	cpf VARCHAR(14),
	nome VARCHAR(100) NOT NULL,
	sexo VARCHAR(10),
	idade INTEGER,
	fk_username_usuario VARCHAR(40) NOT NULL,
	PRIMARY KEY(cpf),
	FOREIGN KEY(fk_username_usuario) REFERENCES Usuario(username) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Cartao_Fidelidade(
	codigo SERIAL,
	pontuacao INTEGER NOT NULL,
	cpf_consumidor VARCHAR(14) NOT NULL,
	PRIMARY KEY(codigo),
	FOREIGN KEY(cpf_consumidor) REFERENCES Consumidor(cpf)
);

CREATE TABLE Administrador(
	codigo SERIAL,
	nome VARCHAR(20),
	tipo INTEGER NOT NULL,
	fk_username_usuario VARCHAR(40) NOT NULL,
	PRIMARY KEY(codigo),
	FOREIGN KEY(fk_username_usuario) REFERENCES Usuario(username) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Grupo(
	codigo SERIAL,
	nome VARCHAR(20) NOT NULL,
	descricao TEXT NOT NULL,
	data_criacao DATE NOT NULL,
	PRIMARY KEY(codigo)
);

CREATE TABLE Admin_Grupo(
	codigo SERIAL,
	Data_Admissao DATE NOT NULL,
	Data_Saida DATE,
	fk_codigo_admin INTEGER NOT NULL,
	fk_codigo_grupo INTEGER NOT NULL,
	PRIMARY KEY(codigo),
	FOREIGN KEY(fk_codigo_admin) REFERENCES Administrador(codigo) ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY(fk_codigo_grupo) REFERENCES Grupo(codigo) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Key(
	codigo SERIAL,
	valor VARCHAR(100),
	descricao TEXT,
	codigo_admin INTEGER NOT NULL,
	PRIMARY KEY(codigo),
	FOREIGN KEY(codigo_admin) REFERENCES Administrador(codigo)
);

CREATE TABLE Nota_de_Pagamento(
	codigo SERIAL,
	valor_total FLOAT NOT NULL,
	data_criacao DATE NOT NULL,
	PRIMARY KEY(codigo)
);

CREATE TABLE Pedido(
	codigo SERIAL,
	valor FLOAT NOT NULL,
	hora_inicial TIME NOT NULL,
	hora_final TIME,
	feedback TEXT,
	desconto FLOAT,
	data DATE NOT NULL,
	finalizado BOOLEAN,
	fk_cpf_consumidor VARCHAR(14) NOT NULL,
	fk_username_usuario VARCHAR(20) NOT NULL,
	fk_codigo_nota_de_pagamento INTEGER NOT NULL,
	PRIMARY KEY(codigo),
	FOREIGN KEY(fk_cpf_consumidor) REFERENCES Consumidor(cpf),
	FOREIGN KEY(fk_username_usuario) REFERENCES Usuario(username),
	FOREIGN KEY(fk_codigo_nota_de_pagamento) REFERENCES Nota_de_Pagamento(codigo)
);

CREATE TABLE Categoria(
	codigo SERIAL,
	nome VARCHAR(100) NOT NULL,
	PRIMARY KEY(codigo)

);

CREATE TABLE Cardapio(
	codigo SERIAL,
	nome VARCHAR(40) NOT NULL,
	descricao TEXT NOT NULL,
	valor FLOAT NOT NULL,
	promocao BOOLEAN NOT NULL,
	estrelas INTEGER NOT NULL,
	fk_codigo_categoria INTEGER NOT NULL,
	PRIMARY KEY(codigo),
	FOREIGN KEY(fk_codigo_categoria) REFERENCES Categoria(codigo)
);

CREATE TABLE Combo(
	codigo SERIAL,
	fk_codigo_1_cardapio INTEGER,
	fk_codigo_2_cardapio INTEGER,
	FOREIGN KEY(fk_codigo_1_cardapio) REFERENCES Cardapio(codigo),
	FOREIGN KEY(fk_codigo_2_cardapio) REFERENCES Cardapio(codigo)
);

CREATE TABLE Pedido_Cardapio(
	codigo SERIAL,
	fk_codigo_pedido INTEGER,
	fk_codigo_cardapio INTEGER,
	PRIMARY KEY(codigo),
	FOREIGN KEY(fk_codigo_pedido) REFERENCES Pedido(codigo),
	FOREIGN KEY(fk_codigo_cardapio) REFERENCES Cardapio(codigo)
);


CREATE TABLE Ingrediente(
	codigo SERIAL,
	nome VARCHAR(100) NOT NULL,
	PRIMARY KEY(codigo)
);


CREATE TABLE Cardapio_Ingrediente(
	codigo SERIAL,
	fk_codigo_cardapio INTEGER NOT NULL,
	fk_codigo_ingrediente INTEGER NOT NULL,
	PRIMARY KEY(codigo),
	FOREIGN KEY(fk_codigo_cardapio) REFERENCES Cardapio(codigo),
	FOREIGN KEY(fk_codigo_ingrediente) REFERENCES Ingrediente(codigo)
);














