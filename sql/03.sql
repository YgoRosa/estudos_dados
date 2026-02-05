-- Tema: GROUP BY, HAVING e Subquery simples
-- Base: tabela vendas

-- Total de vendas por categoria
SELECT categoria, SUM(valor) AS total_vendas
FROM vendas
GROUP BY categoria;

-- Média de vendas por categoria
SELECT categoria, AVG(valor) AS media_vendas
FROM vendas
GROUP BY categoria;

-- Quantidade de vendas por categoria
SELECT categoria, COUNT(*) AS qtd_vendas
FROM vendas
GROUP BY categoria;

-- GROUP BY + ORDER BY
SELECT categoria, SUM(valor) AS total
FROM vendas
GROUP BY categoria
ORDER BY total DESC;

-- HAVING (filtro após agrupamento)
-- Categorias com total > 300
SELECT categoria, SUM(valor) AS total
FROM vendas
GROUP BY categoria
HAVING SUM(valor) > 300;

-- HAVING com COUNT
SELECT categoria, COUNT(*) AS qtd
FROM vendas
GROUP BY categoria
HAVING COUNT(*) >= 2;

-- Subquery simples
-- Vendas acima da média geral
SELECT *
FROM vendas
WHERE valor > (
    SELECT AVG(valor)
    FROM vendas
);

-- Subquery com categoria
-- Vendas maiores que a média da própria categoria
SELECT v1.*
FROM vendas v1
WHERE valor > (
    SELECT AVG(v2.valor)
    FROM vendas v2
    WHERE v2.categoria = v1.categoria
);
