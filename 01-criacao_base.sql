CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria_id INT
);

INSERT INTO produtos (nome, preco, categoria_id) VALUES
('Notebook', 3500.00, 1),
('Teclado Mecânico', 350.00, 2),
('Monitor LED', 1100.00, 1);