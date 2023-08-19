DROP DATABASE IF EXISTS bd_aula03;

CREATE DATABASE bd_aula03;
\c bd_aula03;

CREATE domain chk_status text check (value = 'Disponivel' or value = 'Alugado');

CREATE domain chk_categoria text check (value = 'Drama' or value = 'Comedia');

CREATE TABLE tbl_cliente (codigo_cliente integer PRIMARY KEY, Nome TEXT NOT NULL, Cidade TEXT, Endereco TEXT);

CREATE TABLE tbl_titulo (codigo_titulo integer PRIMARY KEY, titulo TEXT NOT NULL, descricao TEXT);

CREATE TABLE tbl_livros (codigo_livro integer PRIMARY KEY, codigo_titulo INTEGER REFERENCES tbl_titulo(codigo_titulo));

CREATE TABLE tbl_emprestimo (numero_emprestimo integer PRIMARY KEY, codigo_cliente INTEGER REFERENCES tbl_cliente(codigo_cliente), codigo_livro INTEGER REFERENCES tbl_livros(codigo_livro));

alter table tbl_titulo add column categoria chk_categoria;

alter table tbl_livros add column status chk_status;


/*
CREATE TABLE tbl_cliente (codigo_cliente integer PRIMARY KEY, Nome TEXT NOT NULL,Cidade TEXT,Endereco TEXT);

CREATE TABLE tbl_titulo (codigo_titulo integer PRIMARY KEY, titulo TEXT NOT NULL, descricao TEXT, categoria TEXT CHECK (categoria IN ('DRAMA', 'COMEDIA')));

CREATE TABLE tbl_livros (codigo_livro integer PRIMARY KEY, codigo_titulo INTEGER REFERENCES tbl_titulo(codigo_titulo), chk_status TEXT CHECK (chk_status IN ('DISPONIVEL', 'ALUGADO')));

CREATE TABLE tbl_emprestimo (numero_emprestimo integer PRIMARY KEY, codigo_cliente INTEGER REFERENCES tbl_cliente(codigo_cliente), codigo_livro INTEGER REFERENCES tbl_livros(codigo_livro));
*/
