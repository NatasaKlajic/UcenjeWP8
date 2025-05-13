use master
go
drop database if exists frizerskisalon;
go
create database frizerskisalon;
go
use frizerskisalon;



create table djelatnica (
sifra int not null primary key identity (1,1),
ime varchar (30) not null,
prezime varchar (30) not null,
);

create table korisnik (
sifra int not null primary key identity (1,1),
ime varchar (30) not null,
prezime varchar (30) not null,
kontakt varchar (30) not null,
vrijemeposjeta datetime not null
);

create table usluga (
sifra int not null primary key identity (1,1),
naziv varchar (30) not null,
opis varchar (30) null,
cijena decimal (18,2) not null
);

create table posjeta (
sifra int,
sifradjelatnica int not null references djelatnica (sifra),
sifrakorisnik int not null references korisnik(sifra),
sifrausluga int not null references usluga (sifra)
);