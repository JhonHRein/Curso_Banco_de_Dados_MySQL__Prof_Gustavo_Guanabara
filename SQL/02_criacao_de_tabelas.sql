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
CREATE TABLE pedidos(
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,           -- ID do pedido
    data_pedido DATE,                                   -- Data da compra
    status VARCHAR(20),                                 -- Ex: 'Pendente', 'Pago'
    total DECIMAL(10,2),                                -- Valor total da nota
    id_cliente INT,                                     -- Campo para o relacionamento
    FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente) -- Liga pedido ao cliente
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela Itens_do_Pedido: Tabela de unificação (Muitos-para-Muitos)
-- Liga vários produtos a um único pedido
CREATE TABLE itens_do_pedido(
    id_pedido INT,                                      -- Referência ao pedido
    id_produto INT,                                     -- Referência ao produto
    PRIMARY KEY(id_pedido, id_produto),                 -- Chave composta (impede produto duplicado no mesmo pedido)
    FOREIGN KEY(id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY(id_produto) REFERENCES produtos(id_produto)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;