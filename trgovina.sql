use master
go
drop database if exists trgovina;
go
create database trgovina;
go
use trgovina;

create table racuni(
sifra int not null primary key identity (1,1),
broj varchar(10) not null,
kupac varchar(100) null
);

create table proizvodi(
sifra int not null primary key identity (1,1),
naziv varchar(50) not null,
cijena decimal(18,2) not null
);

create table stavke (
racun int not null references racuni(sifra),
proizvod int  not null   references proizvodi,
kolicina decimal (5,3) not null
);