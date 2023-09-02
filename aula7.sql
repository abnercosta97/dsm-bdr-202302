create database bd_aula07;
\c bd_aula07
create table tbl_fornecedor (cod_fornecedor serial primary key, nome text not null, status integer, cidade text);
create table tbl_peca (cod_peca serial primary key, nome text not null, cor text, preco numeric, cidade text);
create table tbl_estoque (cod_compra serial primary key, 
						 cod_fornecedor integer references tbl_fornecedor(cod_fornecedor),
						cod_peca integer references tbl_peca(cod_peca),
						quantidade integer);
						
insert into tbl_fornecedor(nome,status,cidade) 
values ('A',30,'LONDRES'),('B',20,'PARIS'),('C',10,'PARIS'),('D',10,'LONDRES');

INSERT INTO tbl_peca(nome, cor, preco, cidade) values
('PLACA','AZUL',5,'LONDRES'),('MESA','VERMELHA',10,'PARIS'),('CADERNO','PRETA',14,'ROMA'),
('TESOURA','VERMELHA',12,'LONDRES');

INSERT INTO tbl_estoque(cod_fornecedor, cod_peca, quantidade) values
(1,1,30),(2,1,30),(3,2,10),(3,3,50);

--Listar o nome dos fornecedores(maiusculo) e das peças(minusculo) que se situam na mesma cidade, ordenado pelo nome
select upper(f.nome) , lower(p.nome)
from tbl_fornecedor as f
join tbl_peca as p on f.cidade = p.cidade
order by f.nome , p.nome;
--listar as cidades onde existem fornecedores (sem valores duplicados)
select distinct(cidade)
from tbl_fornecedor;
--Listar o nome e a cor das peças do fornecedor com código 3, ordenado pelo nome da peça
select p.nome, p.cor
from tbl_fornecedor as f
join tbl_estoque as e on f.cod_fornecedor = e.cod_fornecedor
join tbl_peca as p on e.cod_peca = p.cod_peca
where f.cod_fornecedor = 3
order by p.nome;
--Listar o nome e a cidade dos fornecedores com mais de 10 peças.Contar só as peças de código 1. 

--Listar a quantidade total de peças com código 1, fornecidas pelos fornecedores.

--Listar a média dos preços das peças fornecidas pelo fornecedor com código 3.

--lista o valor da pecas mais cara e a mais barata.

--listar a quantidade de peças cadastradas

--listar a quantidade de cidades diferentes onde existem peças cadastradas

-- listar a media dos precos de todas as peças, com somente 1 digito após a virgula.