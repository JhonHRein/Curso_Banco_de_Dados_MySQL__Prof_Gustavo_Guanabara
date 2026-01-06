-- ======================================================
-- 1. CRIAÇÃO DO BANCO DE DATOS
-- ======================================================
-- Cria o banco apenas se ele não existir para evitar erros

CREATE DATABASE IF NOT EXISTS virtual_system
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- Define que os próximos comandos serão executados neste banco

USE virtual_system;