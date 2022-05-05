# Banco de Dados


> [`Dependência MySql: mysql1`](https://pub.dev/packages/mysql1)


## Conceitos
> - `Transactions:` é um conceito aplicado apenas nas instruções de manipulações como insert por exemplo, nas instruções de select por exemplo não são aplicadas.
>  - abrir: abrir uma conexão 
>  - commit: efetivar a transação
>  - hallback



> `Script Banco de Dados - MySql`
```sh 
create database dart_mysql;
use dart_mysql;
create table aluno(id int not null auto_increment, nome varchar(200),primary key (id));
create table conta_corrent( id int not null primary key auto_increment, saldo decimal(10,2));
create table tira_dinheiro( id int not null primary key auto_increment, data_saque datetime default now());
```