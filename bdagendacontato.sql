create database agendadecontatos;
use agendadecontatos;

create table tipocontato(
codigo INT NOT NULL AUTO_INCREMENT primary key,
descricao VARCHAR(100));

create table contato(
codigo INT NOT NULL AUTO_INCREMENT primary KEY,
nome VARCHAR(100) NOT NULL,
endereco VARCHAR(100) NOT NULL,
bairro VARCHAR(100) NOT NULL,
cidade VARCHAR (50) NOT NULL,
estado VARCHAR(2) NOT NULL,
telefone VARCHAR(100) NOT NULL,
codigotipocontato INT NOT NULL);

ALTER TABLE contato ADD CONSTRAINT fk_tipocontato FOREIGN KEY (codigotipocontato) REFERENCES tipocontato (codigo) ;