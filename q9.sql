DROP TABLE IF EXISTS cartao;
DROP TRIGGER IF EXISTS cartao_milhagem;

CREATE TABLE cartao (
	id INT AUTO_INCREMENT,
    cliente INT,
    PRIMARY KEY (id),
    FOREIGN KEY (cliente) REFERENCES cliente(codigo)
);

CREATE TRIGGER cartao_milhagem 
AFTER UPDATE ON cliente FOR EACH ROW
INSERT INTO cartao(cliente) VALUES (NEW.codigo);

UPDATE cliente
SET nome = 'ronaldo 1'
WHERE codigo = 1;

SELECT * FROM cartao;