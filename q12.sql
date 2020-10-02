DROP TABLE IF EXISTS client;

CREATE TABLE client (
	id INT DEFAULT (NEXT VALUE FOR sekwenzia),
    name VARCHAR(100),
    PRIMARY KEY (id)
);

INSERT INTO client(name) VALUES('cliente 1');

SELECT * FROM client;