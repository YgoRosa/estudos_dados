CREATE DATABASE estudos_sql;
USE estudos_sql;

CREATE TABLE vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    categoria VARCHAR(50),
    valor DECIMAL(10, 2),
    data_venda DATE
);
