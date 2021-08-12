## Requisitos Funcionais:

### RF001 - Manter Usuário
O sistema deve ser capaz de conter uma entidade Usuario, com os atributos username (PK), password e tipo.


### RF002 - Manter Consumidor
O sistema dever ser capaz de conter uma entidade Consumidor, com os atributos cpf (PK), nome, sexo e idade. Um consumidor esta associado a um usuário do sistema.


### RF003 - Manter Pedido
O sistema deve ser capaz de armazenar os pedidos realizados, estes possuem um conjunto de cardápios e estes por sua vez estão associados a vários pedidos. O pedido possui codigo (PK), valor, hora_inicial, hora_final, desconto, data, finalizado, feedback.


### RF004 - Manter Cardápio
O sistema deve ser capaz de armazenar cardápios, isto é, comidas, lanches, dentre outros. Um cardápio possui codigo (PK), nome, descricao, valor, ingredientes, promocao, categoria, estrelas.


### RF005 - Manter Combos
O sistema deve ser capaz de armazenar combo, isto é, um grupo de cardápios que estão em promoção. Um combo possui codigo (PK), nome, descricao, valor.


### RF006 - Manter Administrador
O sistema dever ser capaz de conter uma entidade Administrador, com os atributos codigo (PK), nome, grupo, keys, tipo. Um administrador esta associado a um usuário do sistema. As keys são usadas para dar permisões específicas ao adm em determinados contextos do software. E o grupo são permissões fixas.


### RF007 - Manter Nota de Pagamento
O sistema deve ser capaz de conter uma entidade Nota de Pagamento, cada pedido esta associado a uma nota de pagamento, e esta está associado a um ou vários pedido. Os atributos para esta entidade são: codigo (PK), valorTotal, data_pagamento.


### RF008 - Manter Cartão Fidelidade
O sistema deve ser capaz de conter uma entidade Cartão Fidelidade que será criado automaticamente ao se cadastrar um novo consumidor no sistema, a pontuação pode trazer benefícios para os consumidores, como valor menor nas promoções e combos. Esta entidade possui os atributos: codigo (PK), pontuacao.










