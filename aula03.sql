drop database IF EXISTS bd_aula03;

create database bd_aula03;

\c bd_aula03;

create table tbl_cliente(codigo_cliente INTEGER PRIMARY KEY, Nome NOT NULL, Cidade text, Endereco text);

create table tbl_titulo(codigo_titulo INTEGER PRIMARY KEY, titulo NOT NULL, descricao text, categoria IN(DRAMA, COMEDIA));

create table tbl_emprestimo(numero_emprestimo INTEGER PRIMARY KEY, codigo_cliente FOREIGN KEY, codigo_livro FOREIGN KEY);

create table tbl_livros(codigo_livro INTEGER PRIMARY KEY, codigo_titulo FOREIGN KEY, status IN(DISPONIVEL, ALUGADO));

/* drop database IF EXISTS bd_aula03;

create database bd_aula03;

/*\c bd_aula03;*/

create table tbl_cliente(codigo_cliente INTEGER PRIMARY KEY, Nome NOTNULL, Cidade text, Endereco text);

create table tbl_titulo(codigo_titulo integer PRIMARY KEY, titulo NOTNULL, descricao text);

create table tbl_emprestimo(numero_emprestimo integer PRIMARY KEY, FOREIGN KEY(codigo_cliente, codigo_livro) );

create table tbl_livros(codigo_livro integer PRIMARY KEY, codigo_titulo FOREIGN KEY);*/

--tes
