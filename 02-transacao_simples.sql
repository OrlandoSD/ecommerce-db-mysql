USE ecommerce;

SET autocommit = 0;

START TRANSACTION;

UPDATE produtos SET preco = preco * 1.05 WHERE categoria_id = 1;
INSERT INTO produtos (nome, preco, categoria_id) VALUES ('Webcam FullHD', 299.90, 2);

-- COMMIT OU ROLLBACK
COMMIT;