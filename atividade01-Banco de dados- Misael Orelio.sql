CREATE DATABASE misael_orelio;/*Criando a base de dados*/
USE misael_orelio;/*Usando a base de dados*/
DROP DATABASE misael_orelio; /*Excluindo a base de dados*/
DROP DATABASE IF EXISTS misael_orelio;/*Comando que também exclui a base de dados, 
										porém tem a verificação se existe a base antes de excluir, isso não deixa o sistema quebrar caso não exista base*/

CREATE TABLE estado ( /*Criando a tabela e seus atibutos*/
id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
sigla CHAR(2) UNIQUE
);

aula 02


CREATE TABLE estado  (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
sigla CHAR(2) NOT NULL UNIQUE
);

INSERT INTO estado (nome, sigla) VALUES ('Parana', 'PR');
INSERT INTO estado (nome, sigla) VALUES ('São Paulo', 'SP');
INSERT INTO estado (nome, sigla) VALUES ('Minas Gerais', 'MG');

CREATE TABLE cidade  (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
estado_id INT NOT NULL,
FOREIGN KEY (estado_id) REFERENCES estado (id)
);

INSERT INTO cidade (nome, estado_id) VALUES ('Nova Esperança', 1);
INSERT INTO cidade (nome, estado_id) VALUES ('Jundiaí', 2);
INSERT INTO cidade (nome, estado_id) VALUES ('Uberaba', 3);

CREATE TABLE endereco  (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_rua VARCHAR(255) NOT NULL,
cep VARCHAR(15) NOT NULL,
numero INT NOT NULL,
cidade_id INT NOT NULL,
FOREIGN KEY (cidade_id) REFERENCES cidade (id)
);

INSERT INTO endereco (nome_rua, cep, numero, cidade_id) VALUES ('Rua paraiba', '87600000', 12, 1);
INSERT INTO endereco (nome_rua, cep, numero, cidade_id) VALUES ('Rua Cassava', '87711700', 1234, 2);
INSERT INTO endereco (nome_rua, cep, numero, cidade_id) VALUES ('Rua Pernambuco', '87711600', 5678, 3);
