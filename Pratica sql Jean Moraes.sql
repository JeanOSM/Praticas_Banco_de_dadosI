CREATE DATABASE centro_de_distribuicao_data_base; /**COMANDO PARA CRIAR A BASE DE DADOS**/
DROP DATABASE centro_de_distribuicao_data_base; /** COMANDO PARA EXCLUIR A BASE DE DADOS**/
CREATE DATABASE centro_de_distribuicao; /**COMANDO PARA CRIAR A BASE DE DADOS**/
USE centro_de_distribuicao; /**COMANDO PARA USAR O BANCO DE DADOS CRIADO*/
DROP DATABASE IF EXISTS centro_de_distribuicao; /**COMANDO CASO EXISTA A BASE DE DADOS EXCLUI.**/

CREATE DATABASE jeanMoraes;
USE  jeanMoraes;
/**PARA CRIAR A TABELA SEMPRE TER PELO MENOS UMA COLUNA E USAR OS PARENTESES PARA ABRIR E FECHAR A TABELA**/
CREATE TABLE estado ( 
id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT
, nome VARCHAR (100) NOT NULL 
, sigla CHAR (2)  
);


Aula 29/08


CREATE TABLE estado  (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_estado VARCHAR(255) NOT NULL,
sigla CHAR(2) NOT NULL UNIQUE
);

INSERT INTO estado (nome_estado, sigla) VALUES ('Parana', 'PR');
INSERT INTO estado (nome_estado, sigla) VALUES ('São Paulo', 'SP');
INSERT INTO estado (nome_estado, sigla) VALUES ('Minas Gerais', 'MG');

CREATE TABLE cidade  (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_cidade VARCHAR(255) NOT NULL,
estado_id INT NOT NULL,
FOREIGN KEY (estado_id) REFERENCES estado (id)
);

INSERT INTO cidade (nome_cidade, estado_id) VALUES ('Paranavaí', 1);
INSERT INTO cidade (nome_cidade, estado_id) VALUES ('Jundiaí', 2);
INSERT INTO cidade (nome_cidade, estado_id) VALUES ('Uberaba', 3);

CREATE TABLE endereco  (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_rua VARCHAR(255) NOT NULL,
cep VARCHAR(15) NOT NULL,
numero INT NOT NULL,
cidade_id INT NOT NULL,
FOREIGN KEY (cidade_id) REFERENCES cidade (id)
);
