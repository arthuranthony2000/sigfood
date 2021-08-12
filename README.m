Nome da Equipe: Grupo 2

Membros da Equipe: Arthur, Flavio, Adalberto, Maicon e Pedro.

Nome/Tema do Projeto: Sistema Alimentar (SIGFOOD).

Descrição: Sistema alimentar para lanchonetes (SIGFOOD). Este tem como finalidade proporcionar de forma simples a gerência de uma lanchonete, facilitando através de forma automatizada as regras de negócio associada a ambientes de comuns de alimentação. O sistema é capaz de armazenar cardápios, combos, cartão fidelidade para descontos para os clientes, um ambiente administrativo para controle de sistema e a emissão de notas de pagamentos. Este possui uma interface simplificada, com uma organização por tipo de usuário, na qual se encontram os atendentes, administradores e clientes. Além de proporcionar um painel contendo dados estatísticos relacionados as vendas, possibilidando um direcionamento mercalógico para a empresa que possuir este software.


Requisitos Funcionais:

RF001 - Manter Usuário
Decrição: O sistema deve ser capaz de conter uma entidade Usuario, com os atributos username (PK), password e tipo.


RF002 - Manter Consumidor
Descrição: O sistema dever ser capaz de conter uma entidade Consumidor, com os atributos cpf (PK), nome, sexo e idade. Um consumidor esta associado a um usuário do sistema.


RF003 - Manter Pedido
Descrição: O sistema deve ser capaz de armazenar os pedidos realizados, estes possuem um conjunto de cardápios, e estes por sua vez estão associados a vários pedidos. O pedido possui codigo (PK), valor, hora_inicial, hora_final, desconto, data, finalizado, feedback.


RF004 - Manter Cardápio
Descrição: O sistema deve ser capaz de armazenar cardápios, isto é, comidas, lanches, dentre outros. Um cardápio possui codigo (PK), nome, descricao, valor, ingredientes, promocao, categoria, estrelas.


RF005 - Manter Combos
Descrição: O sistema deve ser capaz de armazenar combo, isto é, um grupo de cardápios que estão em promoção. Um combo possui codigo (PK), nome, descricao, valor.


RF006 - Manter Administrador
Descrição: O sistema dever ser capaz de conter uma entidade Administrador, com os atributos codigo (PK), nome, grupo, keys, tipo. Um administrador esta associado a um usuário do sistema. As keys são usadas para dar permisões específicas ao adm em determinados contextos do software. E o grupo são permissões fixas.


RF007 - Manter Nota de Pagamento
Descrição: O sistema deve ser capaz de conter uma entidade Nota de Pagamento, cada pedido esta associado a uma nota de pagamento, e esta está associado a um ou vários pedido. Os atributos para esta entidade são: codigo (PK), valorTotal, data_pagamento.


RF008 - Manter Cartão Fidelidade
Descrição: O sistema deve ser capaz de conter uma entidade Cartão Fidelidade que será criado automaticamente ao se cadastrar um novo consumidor no sistema, a pontuação pode trazer benefícios para os consumidores, como valor menor nas promoções e combos. Esta entidade possui os atributos: codigo (PK), pontuacao.



















