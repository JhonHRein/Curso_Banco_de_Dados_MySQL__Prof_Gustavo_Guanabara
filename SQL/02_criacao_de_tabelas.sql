-- ======================================================
-- 2. TABELAS INDEPENDENTES (Sem Chaves Estrangeiras)
-- ======================================================

-- Tabela de Clientes: Armazena dados básicos de quem compra

CREATE TABLE clientes(
    id_cliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT, -- ID automático e único
    nome VARCHAR(50) NOT NULL,                          -- Nome obrigatório
    idade INT NOT NULL,                                 -- Idade obrigatória
    cidade VARCHAR(50) NOT NULL                         -- Cidade obrigatória
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

-- Tabela de Produtos: Armazena o catálogo de itens à venda

CREATE TABLE produtos(
    id_produto INT PRIMARY KEY AUTO_INCREMENT,          -- ID automático
    nome VARCHAR(50) NOT NULL,                          -- Nome do produto
    valor_unitario DECIMAL(10,2) NOT NULL               -- Preço com 2 casas decimais
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ======================================================
-- 3. TABELAS DEPENDENTES (Com Chaves Estrangeiras)
-- ======================================================

-- Tabela de Pedidos: Registra o cabeçalho da venda
-- Depende da tabela 'clientes' (precisa de um id_cliente válido)

create table pedidos(
id_pedido int primary key auto_increment,
id_cliente int,
data_pedido date,
status varchar(20),
foreign key (id_cliente) references clientes(id_cliente)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table itens_do_pedido(
id_pedido int,
id_produto int,
quantidade int,
valor_unitario decimal(10,2),
primary key(id_pedido, id_produto),
foreign key (id_pedido) references pedidos(id_pedido),
foreign key (id_produto) references produtos(id_produto)
)Engine=innodb default charset=utf8mb4 collate=utf8mb4_unicode_ci;
