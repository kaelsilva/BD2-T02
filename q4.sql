DROP TRIGGER IF EXISTS criar_milhas;

CREATE TRIGGER criar_milhas
AFTER INSERT ON cliente FOR EACH ROW
INSERT INTO milhas(cliente, quantidade) VALUES (NEW.codigo, 0);

INSERT INTO cliente(nome, endereco) VALUES ('pedro 1', 'rua x 1');
INSERT INTO cliente(nome, endereco) VALUES ('pedro 2', 'rua x 2');
INSERT INTO cliente(nome, endereco) VALUES ('pedro 3', 'rua x 3');
INSERT INTO cliente(nome, endereco) VALUES ('pedro 4', 'rua x 4');
INSERT INTO cliente(nome, endereco) VALUES ('pedro 5', 'rua x 5');

SELECT * FROM milhas;