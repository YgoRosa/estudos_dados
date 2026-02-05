-- Tema: SELECT, WHERE, ORDER BY
-- Base: tabela vendas

-- Ver todos os registros
SELECT * FROM vendas;

-- Selecionar colunas específicas
SELECT categoria, valor FROM vendas;

-- Filtrar com WHERE (igualdade)
SELECT * FROM vendas
WHERE categoria = 'Eletronicos';

-- Filtrar com WHERE (maior que)
SELECT * FROM vendas
WHERE valor > 100;

-- Filtrar por data
SELECT * FROM vendas
WHERE data_venda >= '2024-02-01';

-- Combinar condições (AND)
SELECT * FROM vendas
WHERE categoria = 'Livros'
AND valor > 50;

-- Combinar condições (OR)
SELECT * FROM vendas
WHERE categoria = 'Roupas'
OR categoria = 'Livros';

-- Ordenar por valor (crescente)
SELECT * FROM vendas
ORDER BY valor ASC;

-- Ordenar por valor (decrescente)
SELECT * FROM vendas
ORDER BY valor DESC;

-- Ordenar por data
SELECT * FROM vendas
ORDER BY data_venda DESC;

-- WHERE + ORDER BY
SELECT * FROM vendas
WHERE categoria = 'Eletronicos'
ORDER BY valor DESC;
