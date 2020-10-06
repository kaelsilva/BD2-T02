DROP TABLE IF EXISTS cartao;
DROP TABLE IF EXISTS cliente_voo;
DROP TABLE IF EXISTS milhas;
DROP TABLE IF EXISTS voo;
DROP TABLE IF EXISTS piloto;
DROP TABLE IF EXISTS cliente;
DROP SEQUENCE IF EXISTS sequencia1;
DROP SEQUENCE IF EXISTS sequencia2;
DROP SEQUENCE IF EXISTS sequencia3;

CREATE SEQUENCE sequencia1;
CREATE SEQUENCE sequencia2;
CREATE SEQUENCE sequencia3;

CREATE TABLE cliente(
	codigo INT DEFAULT (NEXT VALUE FOR sequencia1),
    nome VARCHAR(100),
    endereco VARCHAR(200),
    PRIMARY KEY (codigo)
);

CREATE TABLE piloto(
	codigo INT DEFAULT (NEXT VALUE FOR sequencia2),
    nome VARCHAR(100),
    num_voos INT DEFAULT 0,
    PRIMARY KEY (codigo)
);

CREATE TABLE voo(
	codigo INT DEFAULT (NEXT VALUE FOR sequencia3),
    tipo INT,
    piloto INT,
    num_passageiros INT DEFAULT 0,
    distancia INT,
    PRIMARY KEY (codigo),
    FOREIGN KEY (piloto) REFERENCES piloto(codigo)
);

CREATE TABLE milhas(
	cliente INT,
    quantidade INT DEFAULT 0,
    PRIMARY KEY (cliente),
    FOREIGN KEY (cliente) REFERENCES cliente(codigo)
);

CREATE TABLE cliente_voo(
	cliente INT,
    voo INT,
    classe INT,
    PRIMARY KEY (cliente, voo),
    FOREIGN KEY (cliente) REFERENCES cliente(codigo),
    FOREIGN KEY (voo) REFERENCES voo(codigo)
);