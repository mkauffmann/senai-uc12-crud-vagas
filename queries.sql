create database empregos;

use empregos;


create table if not exists vagas (
idvagas int not null auto_increment,
descricao varchar(45) not null,
req_obrigatorios varchar(45) not null,
req_desejaveis varchar(45) null,
remuneracao float not null,
aberta bit not null,
beneficios varchar(45) not null,
local_trabalho varchar(45) not null,
primary key (idvagas)
);