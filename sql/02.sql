-- Tema: INNER JOIN e LEFT JOIN
-- Criando tabelas auxiliares para treino

-- Tabela de clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

-- Tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    valor DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Inserts de exemplo
INSERT INTO clientes (nome) VALUES
('Ana'),
('Bruno'),
('Carlos');

INSERT INTO pedidos (cliente_id, valor) VALUES
(1, 200.00),
(1, 150.00),
(2, 300.00);

-- INNER JOIN
-- Mostra só quem tem pedido
SELECT c.nome, p.valor
FROM clientes c
INNER JOIN pedidos p
ON c.id = p.cliente_id;

-- INNER JOIN com filtro
SELECT c.nome, p.valor
FROM clientes c
INNER JOIN pedidos p
ON c.id = p.cliente_id
WHERE p.valor > 180;

-- LEFT JOIN
-- Mostra todos os clientes, mesmo sem pedido
SELECT c.nome, p.valor
FROM clientes c
LEFT JOIN pedidos p
ON c.id = p.cliente_id;

-- LEFT JOIN + WHERE (cuidado: pode virar INNER)
SELECT c.nome, p.valor
FROM clientes c
LEFT JOIN pedidos p
ON c.id = p.cliente_id
WHERE p.valor IS NULL;
-- Aqui mostra só clientes sem pedidos
