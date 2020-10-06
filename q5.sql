DROP TRIGGER IF EXISTS adicionar_voo;

CREATE TRIGGER adicionar_voo
AFTER INSERT ON voo FOR EACH ROW
UPDATE piloto
SET num_voos = num_voos + 1
WHERE NEW.piloto = piloto.codigo;

INSERT INTO piloto(nome) VALUES ('joão 1');
INSERT INTO piloto(nome) VALUES ('joão 2');
INSERT INTO piloto(nome) VALUES ('joão 3');
INSERT INTO piloto(nome) VALUES ('joão 4');
INSERT INTO piloto(nome) VALUES ('joão 5');

INSERT INTO voo(tipo, piloto, distancia) VALUES (1, 1, 1000);
INSERT INTO voo(tipo, piloto, distancia) VALUES (2, 1, 1500);
INSERT INTO voo(tipo, piloto, distancia) VALUES (3, 1, 2000);
INSERT INTO voo(tipo, piloto, distancia) VALUES (4, 1, 2500);
INSERT INTO voo(tipo, piloto, distancia) VALUES (5, 1, 3000);

INSERT INTO voo(tipo, piloto, distancia) VALUES (1, 2, 1000);
INSERT INTO voo(tipo, piloto, distancia) VALUES (2, 2, 1500);
INSERT INTO voo(tipo, piloto, distancia) VALUES (3, 2, 2000);
INSERT INTO voo(tipo, piloto, distancia) VALUES (4, 2, 2500);

INSERT INTO voo(tipo, piloto, distancia) VALUES (1, 3, 1000);
INSERT INTO voo(tipo, piloto, distancia) VALUES (2, 3, 1500);
INSERT INTO voo(tipo, piloto, distancia) VALUES (3, 3, 2000);

INSERT INTO voo(tipo, piloto, distancia) VALUES (1, 4, 1000);
INSERT INTO voo(tipo, piloto, distancia) VALUES (2, 4, 1500);

INSERT INTO voo(tipo, piloto, distancia) VALUES (1, 5, 1000);

SELECT * FROM piloto;