-- ==============================================
-- ARQUIVO: 04_inserts.sql
-- OBJETIVO: Inserir dados para testes no banco
-- BANCO: virtual_system
-- ==============================================

USE virtual_system;

-- ==============================================
-- INSERINDO DADOS NA TABELA CLIENTES
-- ==============================================
INSERT INTO clientes (nome, idade, cidade) VALUES
('Maria', 25, 'Sao Paulo'),
('João', 36, 'Curitiba'),
('Clarisse', 18, 'Goias'),
('Bruno', 32, 'Florianópolis'),
('Andrielle', 33, 'Mato Grosso');

-- ==============================================
-- INSERINDO DADOS NA TABELA PRODUTOS
-- ==============================================
INSERT INTO produtos (nome, valor_unitario) VALUES
('NoteBook', 1200.00),
('Teclado', 100.00),
('Mouse', 75.00),
('Headset', 120.00),
('Monitor', 600.00);

-- ==============================================
-- INSERINDO DADOS NA TABELA PEDIDOS
-- ==============================================
INSERT INTO pedidos (id_cliente, data_pedido, status) VALUES
(1, '2026-01-07', 'Finalizado'),
(2, '2026-01-06', 'Em Aberto'),
(3, '2025-12-20', 'Finalizado'),
(4, '2025-10-14', 'Cancelado'),
(5, '2024-04-12', 'Finalizado');

-- ==============================================
-- INSERINDO DADOS NA TABELA ITENS_DO_PEDIDO
-- ==============================================
INSERT INTO itens_do_pedido (id_pedido, id_produto, quantidade, valor_unitario) VALUES
(1, 2, 1, 100.00),
(1, 1, 1, 1200.00),
(2, 4, 2, 120.00),
(3, 5, 1, 600.00),
(3, 2, 1, 100.00),
(4, 1, 1, 1200.00),
(5, 3, 1, 75.00);

