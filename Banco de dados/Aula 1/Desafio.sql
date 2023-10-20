CREATE DATABASE biblioteca_livros;

USE biblioteca_livros;

CREATE TABLE livros (
		autor VARCHAR(60),
        titulo VARCHAR(60),
        preco FLOAT,
        lancamento DATE
);

INSERT INTO livros (autor, titulo, preco, lancamento)
VALUES ("Stephen Hawking", "Uma breve história do tempo", 39.99, "2015-01-13"),
("Robert T Kiyosaki", "Pai rico Pai pobre", 62.98, "2018-09-05"),
("Yuval Noah Harari", "Sapiens - uma breve historia da humanidade", 69.90, "2015-01-01");

SELECT * FROM livros;