-- Define que os próximos comandos serão executados neste banco.
use virtual_system;


-- ==============================================
--      INSERINDO DADOS NA TABELA CLIENTES
-- ==============================================
insert into clientes (nome, idade, cidade) values 
('Maria', 25, 'Sao Paulo'),
('João', 36, 'Curitiba'),
('Clarisse', 18, 'Goias'),
('Bruno', 32, 'Florianópolis'),
('Andrielle', '33', 'Mato Grosso');


-- ==============================================
--      INSERINDO DADOS NA TABELA PRODUTOS
-- ==============================================
insert into produtos (nome, valor_unitario) values 
('NoteBook', 1200.00),
('Teclado', 100.00),
('Mouse', 75.00),
('Headset', 120.00),
('Monitor', 600.00);
