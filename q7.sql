DROP TRIGGER IF EXISTS adicionar_passageiro;

CREATE TRIGGER adicionar_passageiro
AFTER INSERT ON cliente_voo FOR EACH ROW
UPDATE voo SET num_passageiros = num_passageiros + 1
WHERE codigo = NEW.voo;

INSERT INTO cliente(nome, endereco) VALUES ('maria 1', 'rua a 1');
INSERT INTO cliente(nome, endereco) VALUES ('maria 2', 'rua a 2');
INSERT INTO cliente(nome, endereco) VALUES ('maria 3', 'rua a 3');
INSERT INTO cliente(nome, endereco) VALUES ('maria 4', 'rua a 4');
INSERT INTO cliente(nome, endereco) VALUES ('maria 5', 'rua a 5');

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (6, 1, 1);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (6, 2, 2);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (6, 3, 3);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (6, 4, 4);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (6, 5, 5);

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (7, 2, 2);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (7, 1, 1);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (7, 3, 3);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (7, 4, 4);

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (8, 3, 3);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (8, 1, 1);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (8, 2, 2);

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (9, 4, 4);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (9, 1, 1);

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (10, 5, 5);

SELECT * FROM voo;