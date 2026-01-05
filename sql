create database virtual_system
character set utf8mb4
collate utf8mb4_unicode_ci;

use virtual_system;

create table clientes(
id_cliente int primary key not null,
nome varchar(50) not null,
idade int not null,
cidade varchar(50) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

create table produtos(
id_produto int primary key,
nome varchar(50) not null,
valor_unitario decimal(10,2) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table pedidos(
id_pedido int primary key,
data_pedido date,
status varchar(20), 
total decimal(10,2),
id_cliente int,
foreign key(id_cliente) references clientes(id_cliente)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table itens_do_pedido(
id_pedido int,
id_produto int,
primary key(id_pedido, id_produto),
foreign key(id_pedido) references pedidos(id_pedido),
foreign key(id_produto) references produtos(id_produto)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
