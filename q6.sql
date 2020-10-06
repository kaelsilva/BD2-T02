DROP TRIGGER IF EXISTS adicionar_milhas;

CREATE TRIGGER adicionar_milhas
AFTER INSERT ON cliente_voo FOR EACH ROW
UPDATE milhas SET quantidade = quantidade + (	SELECT distancia 
												FROM voo
												WHERE NEW.voo = voo.codigo
											) / 10
WHERE cliente = NEW.cliente;

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (1, 1, 1);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (1, 2, 2);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (1, 3, 3);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (1, 4, 4);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (1, 5, 5);

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (2, 2, 2);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (2, 1, 1);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (2, 3, 3);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (2, 4, 4);

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (3, 3, 3);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (3, 1, 1);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (3, 2, 2);

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (4, 4, 4);
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (4, 1, 1);

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (5, 5, 5);

SELECT * FROM milhas;