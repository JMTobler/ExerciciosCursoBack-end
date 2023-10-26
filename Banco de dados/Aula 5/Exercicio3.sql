CREATE DATABASE entregas_express;

USE entregas_express;

CREATE TABLE paises(
	id_pais INT,
    nome VARCHAR(45),
    latitude VARCHAR(45),
    longitude VARCHAR(45),
    idioma_oficial VARCHAR(45),
    PRIMARY KEY(id_pais)
);

CREATE TABLE unidades_federativas(
	cod_uf INT,
    nome_uf VARCHAR(45),
    abreviacao_uf CHAR(2),
	id_pais INT,
    PRIMARY KEY(cod_uf),
    FOREIGN KEY(id_pais) REFERENCES paises(id_pais)
);

CREATE TABLE municipios(
	id_municipio INT,
    nome VARCHAR(45),
    cod_uf INT,
    PRIMARY KEY(id_municipio),
    FOREIGN KEY(cod_uf) REFERENCES unidades_federativas(cod_uf)
);

-- Inserindo os paises
INSERT INTO paises (id_pais, nome, latitude, longitude, idioma_oficial)
VALUES (1, "Brasil", "Norte +05º16'19", "Norte -60º12'45", "Português");

-- Inserindo as unidades federativas
INSERT INTO unidades_federativas (cod_uf, nome_uf, abreviacao_uf, id_pais)
VALUES (1, "Rio De Janeiro", "RJ", 1);

INSERT INTO unidades_federativas (cod_uf, nome_uf, abreviacao_uf, id_pais)
VALUES (2, "São Paulo", "SP", 1);

INSERT INTO unidades_federativas (cod_uf, nome_uf, abreviacao_uf, id_pais)
VALUES (3, "Minas Gerais", "MG", 1);

-- Inserindo os municipios
INSERT INTO municipios (id_municipio, nome, cod_uf)
VALUES 
	(101, "Barra Do Piraí", 1),
    (102, "Volta Redonda", 1);
    
INSERT INTO municipios (id_municipio, nome, cod_uf)
VALUES
	(201, "Osasco", 2),
    (202, "Mauá", 2);
    
INSERT INTO municipios (id_municipio, nome, cod_uf)
VALUES
	(301, "Betim", 3),
    (302, "Confins", 3);

-- Verificação das tabelas
SELECT * FROM paises;

SELECT * FROM unidades_federativas;

SELECT * FROM municipios;