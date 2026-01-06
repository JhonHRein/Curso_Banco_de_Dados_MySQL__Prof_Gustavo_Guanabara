-- ==============================================
-- ARQUIVO: 03_relacionamentos.sql
-- ==============================================

-- Neste projeto, os relacionamentos entre as tabelas
-- foram definidos diretamente no momento da criação
-- das tabelas, utilizando FOREIGN KEY no CREATE TABLE.

-- Relacionamentos existentes:
-- pedidos.id_cliente → clientes.id_cliente
-- itens_do_pedido.id_pedido → pedidos.id_pedido
-- itens_do_pedido.id_produto → produtos.id_produto
