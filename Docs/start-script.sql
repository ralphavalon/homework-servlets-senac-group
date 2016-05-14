create database livrariadigital;
use livrariadigital;

create table livros (
id BIGINT NOT NULL AUTO_INCREMENT,
titulo VARCHAR(255),
autor VARCHAR(255),
editora VARCHAR(255),
email VARCHAR(255),
dataLancamento DATE,
primary key (id)
);

insert into livros(titulo, autor, editora, email, dataLancamento) values ('Java Book', 'Author Um', 'Editora Um', 'Email@email.com', NOW());
insert into livros(titulo, autor, editora, email, dataLancamento) values ('Python Book', 'Author Dois', 'Editora Dois', 'Email@email.com', NOW());
insert into livros(titulo, autor, editora, email, dataLancamento) values ('Javascript Book', 'Author Tres', 'Editora Tres', 'Email@email.com', NOW());