CREATE DATABASE bibliotecas;

use bibliotecas;

CREATE TABLE livros(
	id_livros INT,
    titulo VARCHAR(45),
    lancamento INT,
    primary key(id_livros)
);

CREATE TABLE editora(
	id_editora INT,
    nome VARCHAR(45),
    cnpj CHAR(14),
    primary key(id_editora)
);
