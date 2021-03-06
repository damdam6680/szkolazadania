#szefy 4,7,8
create database if not exists firma_dmb character set UTF8mb4 collate utf8mb4_bin;
use firma_dmb;
create table if not exists zespoly(ID_ZESP int auto_increment primary key not null,nazwa char(40) not null unique,adres char(100));
create table if not exists pracownicy(nazwa char(40) unique primary key,placa_od int,placa_do int);
create table if not exists etaty(ID_PRAC int auto_increment primary key not null,nazwisko char(40) not null,imie char(40) not null,etat char(40),id_szefa int not null,zatrudniony date not null,placa_pod int, placa_dod int,ID_ZESP int);

insert into zespoly(nazwa,adres) values ('programisci_ab','mieszka 1'),('sprzedarz','krakowska 13'),('pomoc_techniczna','krakowska 13'),('adminstracja','mieszka 1'),('webadmin','rzeromskiego 123'),('programisci_b','mieszka 2'),('programisci_c','mieszka 3 '),('dzial_zakazny','lwowska 13'),('szefostwo','3 krolow'),('adminserwera','toda howarda 33');
insert into pracownicy(nazwa,placa_od,placa_do) values ('programista','5000','10000'),('sprzedawca','4500',6000),('technik','2500','4500'),('szef','1000000','10000000'),('administrator_serwera','5404','21337'),('administrator_strony','5000','7000'),('dzial_zakazny','9','15'),('administracja','50000','70000');
insert into etaty(nazwisko,imie,etat,id_szefa,zatrudniony,placa_pod,placa_dod) values ('małysz','tomek','programista','4','2020-10-26','5000','400'),('tarkowski','tymke','sprzedawca','8','2020-09-23','4500','200'),('psikuta','wojtek','programista','4',' 2020-10-29','5000','400'),('przywara','kuba','technik','4',' 2020-11-09','2500','500'),('Zawadzki','Alex','admniserwera','4','2020-11-19','5404','450'),('Głowacka','Miłosz','webadmin','4',' 2020-12-24','5000','15'),('Kaźmierczak','Marcin','dzial_zakazny','9','2020-09-11','9','1000'),('Urbańska','Patryk','sprzedawca','8','2020-10-26','4500','500'),('Tomaszewski','Bruno','technik','4',' 2020-12-17','2500','300'),('Bąk','Kryspin','sprzedawca','8',' 2020-10-05','4500','1000');
                                                                                                                             
                                                                                                                             #1#SELECT pracownicy.nazwisko,pracownicy.imie,etaty.nazwa,etaty.placa_od,etaty.placa_do FROM firma_4h.pracownicy join etaty on etaty.nazwa = pracownicy.etat

#2#select p.id_zesp,sum(p.placa_pod) from pracownicy as p join zespoly as z on p.id_zesp = z.id_zesp group  by 1;

#3#select p.nazwisko,p.placa_pod from pracownicy as p where p.placa_pod > 4100

#4#select p.id_zesp,p.etat,z.nazwa from pracownicy as p join zespoly as z on p.id_zesp = z.id_zesp group  by 1;

#5#select p.nazwisko from pracownicy as p join zespoly as z on p.id_zesp = z.id_zesp where z.adres = "Czudec";

#6#select p.nazwisko,z.adres,z.nazwa from pracownicy as p join zespoly as z on p.id_zesp = z.id_zesp group by 1 having sum(p.placa_pod) > 100;

#7#select p.nazwisko, p.etat, p.placa_pod,z.nazwa from pracownicy as p join zespoly as z on z.id_zesp = p.id_zesp  where p.etat not like "KPP" order by 3 desc

#8#select p.nazwisko,p.etat,z.nazwa from pracownicy as p join zespoly as z on z.id_zesp = p.id_zesp where p.etat in ("KPP","Portier") and  p.placa_dod < 2000

#9#select p.nazwisko as pra,s.nazwisko as szef from pracownicy p join pracownicy s on p.id_szefa = s.id_prac;

#10#select p.id_zesp,sum(p.placa_pod),count(p.nazwisko) from pracownicy as p join zespoly as z on p.id_zesp = z.id_zesp group  by 1;
