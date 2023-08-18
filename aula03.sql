DROP DATABASE IF EXISTS bd_aula03;

CREATE DATABASE bd_aula03;
\c bd_aula03;

CREATE TABLE tbl_cliente (codigo_cliente SERIAL PRIMARY KEY, Nome TEXT NOT NULL,Cidade TEXT,Endereco TEXT);

CREATE TABLE tbl_titulo (codigo_titulo SERIAL PRIMARY KEY, titulo TEXT NOT NULL, descricao TEXT, categoria TEXT CHECK (categoria IN ('DRAMA', 'COMEDIA')));

CREATE TABLE tbl_livros (codigo_livro SERIAL PRIMARY KEY, codigo_titulo INTEGER REFERENCES tbl_titulo(codigo_titulo), status TEXT CHECK (status IN ('DISPONIVEL', 'ALUGADO')));

CREATE TABLE tbl_emprestimo (numero_emprestimo SERIAL PRIMARY KEY, codigo_cliente INTEGER REFERENCES tbl_cliente(codigo_cliente), codigo_livro INTEGER REFERENCES tbl_livros(codigo_livro));

