-- ==============================================
-- ARQUIVO: 05_consultas.sql
-- OBJETIVO: Consultas SQL para análise do negócio
-- BANCO: virtual_system
-- ==============================================

USE virtual_system;

-- ==============================================
-- 1. Listar todos os pedidos
-- ==============================================
SELECT * 
FROM pedidos;

-- ==============================================
-- 2. Listar produtos vinculados aos pedidos
-- ==============================================
SELECT 
    id_pedido,
    id_produto
FROM itens_do_pedido;

-- ==============================================
-- 3. Calcular o total de cada pedido
-- ==============================================
SELECT 
    id_pedido,
    SUM(quantidade * valor_unitario) AS total_geral
FROM itens_do_pedido
GROUP BY id_pedido;

-- ==============================================
-- 4. Listar clientes que já realizaram pedidos
-- ==============================================
SELECT DISTINCT 
    c.nome
FROM clientes c
JOIN pedidos p 
    ON c.id_cliente = p.id_cliente;

-- ==============================================
-- 5. Relatório de produtos mais vendidos
-- ==============================================
SELECT 
    pr.nome AS produto,
    SUM(i.quantidade) AS total_vendido
FROM produtos pr
JOIN itens_do_pedido i 
    ON pr.id_produto = i.id_produto
GROUP BY pr.nome
ORDER BY total_vendido DESC;
