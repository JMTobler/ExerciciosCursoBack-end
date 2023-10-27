CREATE DATABASE senai_bp;

USE senai_bp;

CREATE TABLE cursos(
	cod_curso INT,
    nome_curso VARCHAR(100),
    PRIMARY KEY(cod_curso)
);
CREATE TABLE alunos(
	cod_aluno INT,
    nome VARCHAR(45),
    sobrenome VARCHAR(45),
    data_nascimento DATE,
    cod_curso INT,
    PRIMARY KEY(cod_aluno),
    FOREIGN KEY(cod_curso) REFERENCES cursos(cod_curso)
);

INSERT INTO `cursos`
VALUES
	(101, "Introdução ao Desenvolvimento de Projetos"),
    (102, "Inglês Técnico Aplicado ao Desenvolvimento de Sistemas"),
    (103, "Higiene do Alimento: Microbiologia de Alimentos"),
    (104, "Ferramentas Digitais de Gestão"),
    (105, "Introdução a IOT para Manutenção Industrial"),
    (106, "Introdução à Indústria 4"),
    (107, "Administrador de Banco de Dados"),
    (108, "Programador Back-end");
    
    INSERT INTO `alunos`
    VALUES (1100, "João Marcelo", "Silva Tobler Mastrangelo", "2000-02-09", 108);
    
    SELECT nome, data_nascimento FROM alunos;
    
    SELECT * FROM cursos;
    
    SELECT nome, sobrenome FROM alunos ORDER BY nome;
    
    SELECT nome, data_nascimento FROM alunos ORDER BY data_nascimento DESC LIMIT 1;
    
    SELECT nome, data_nascimento FROM alunos ORDER BY data_nascimento LIMIT 1;
    
    SELECT * FROM alunos WHERE YEAR(data_nascimento) > '1998' ORDER BY data_nascimento;
    
    SELECT * FROM alunos WHERE YEAR(CURDATE()) - YEAR(data_nascimento) < 18 AND cod_curso = 106;
    
    SELECT * FROM alunos WHERE (YEAR(CURDATE()) - YEAR(data_nascimento) < 18) AND (cod_curso = 106 OR cod_curso = 104) ORDER BY cod_curso;
    
    SELECT * FROM cursos WHERE nome_curso = "Administrador de Banco De Dados" or nome_curso = "Introdução à Indústria 4";