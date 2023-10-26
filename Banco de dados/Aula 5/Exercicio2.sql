CREATE DATABASE estoque_senai;

USE estoque_senai;

CREATE TABLE marcas(
	id_marca INT,
    nome VARCHAR(45),
    descricao VARCHAR(45),
    PRIMARY KEY(id_marca)
);
CREATE TABLE produtos (
	id_produto INT,
    nome VARCHAR(60),
    preco_unitario DOUBLE,
    id_marca INT,
    PRIMARY KEY(id_produto),
    FOREIGN KEY(id_marca) REFERENCES marcas(id_marca)
);

-- Inserindo as marcas na tabela
INSERT INTO marcas (id_marca, nome, descricao)
VALUES (1, "Eudora", "Higiene Pessoal");

INSERT INTO marcas (id_marca, nome, descricao)
VALUES (2, "Logitech", "Tecnologia");

INSERT INTO marcas (id_marca, nome, descricao)
VALUES (3, "Apple", "Teclonogia");

-- Inserindo os produtos das marcas
INSERT INTO produtos (id_produto, nome, preco_unitario, id_marca)
VALUES (001, "Siáge", 88.90, 1);

INSERT INTO produtos (id_produto, nome, preco_unitario, id_marca)
VALUES (002, "G203 LIGHTSYNC RGB", 139.99, 2);

INSERT INTO produtos (id_produto, nome, preco_unitario, id_marca)
VALUES (003, "Iphone 15", 7289.10, 3);

SELECT * FROM produtos;