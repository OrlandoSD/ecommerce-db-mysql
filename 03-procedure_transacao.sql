USE ecommerce;
DELIMITER //

CREATE PROCEDURE sp_transacao_savepoint()
BEGIN
    DECLARE erro BOOL DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
        SET erro = TRUE;

    START TRANSACTION;
    SAVEPOINT ponto1;

    -- Atualiza
    UPDATE produtos SET preco = preco * 0.95 WHERE categoria_id = 2;

    -- Simula erro (inserindo NULL)
    INSERT INTO produtos (nome, preco) VALUES (NULL, 100.00);

    IF erro THEN
        ROLLBACK TO ponto1;
        SELECT 'Erro ocorreu. Rollback parcial executado.' AS status;
    ELSE
        COMMIT;
        SELECT 'Transação finalizada com sucesso!' AS status;
    END IF;
END //

DELIMITER ;