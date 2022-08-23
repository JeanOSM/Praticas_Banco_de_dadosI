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