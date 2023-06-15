CREATE DATABASE rh_empresa;

CREATE TABLE colaboradores(
	id bigint auto_increment,
	nome varchar(255) not null,
	endereco varchar(255) not null,
	idade int,
	salario decimal not null,
	PRIMARY KEY (id)
);

INSERT INTO colaboradores(nome, endereco, idade, salario) 
values ("Maria", "Rua Pinheiros", 34, 1800.00);
INSERT INTO colaboradores(nome, endereco, idade, salario) 
values ("Jonas", "Rua Interlagos", 45, 3100.00);
INSERT INTO colaboradores(nome, endereco, idade, salario) 
values ("Pedro", "Rua Diogo Moreira", 23, 1500.00);
INSERT INTO colaboradores(nome, endereco, idade, salario) 
values ("Henrique", "Rua Quatro", 19, 1200.00);
INSERT INTO colaboradores(nome, endereco, idade, salario) 
values ("Camila", "Rua Cachoeira Cairu", 25, 3500.00);

select * from colaboradores;

select * from colaboradores
where salario > 2000;

select * from colaboradores
where salario < 2000;

update colaboradores set salario = 5000.00
where id = 5;

