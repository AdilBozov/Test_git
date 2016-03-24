-- This is coment in SQL language

-- Create database 

create database tutorials;


-- Select which database to use

USE tutorials;

-- creata table in Mysql
create table car
(
id int(11),
tires varchar(255),
paint varchar(255)
);

-- To see your table 

Select * from car;

-- to see just 1  column

select id from car;

-- to select 1 or more columns

select id,tires from car;


-- Creata table fields types
-- int, VARCHAR(String), date, float, 


-- Insert into tables


INSERT INTO car 
values (2, 'BMW', 'Some VALUE');

-- There is Rollback and COMMIT in SQL language

-- Select * - oznachava selektni mi vsichko ot tablicata (vsichki poleta)
Select * from car;

-- Select with where clause

select * from car where
car.id = 2;

select count(*) from car; -- broi vsichki redove count(*) from tablename



create table gsm
(
id int(11),
gsm_name varchar(200),
gsm_patent varchar(200),
price float(10)
);

insert into gsm (id, gsm_name, gsm_patent, price)
values (1, 'Nokia', 'Nokia patent', 2.555);

insert into gsm (id, gsm_name, gsm_patent, price)
values (2, 'Sony', 'Sony patent', 2.555);

-- To delete table use drop command

-- drop table gsm;
select * from gsm
where gsm.price like '2.555'
and gsm.gsm_name = 'Sony';


select distinct(id ) from car; -- distinct for UNIQUE columns
select * from car;

-- drop database test;



-- Trigers, CUrsors, Array, Logical Operator, Table Join, Agregate Functions, Procedure Fucntion, Subquery
-- Cast function Operators Functions, Jobs, Procedures, Privilege, Data Dictionary



-- to do da se napravqt 10 tina tablici monitori, motori, telefoni, jeni, deca, pytishta, 
-- da se insertne nqkakva proizvolna informaciq
-- da se uprajnqt syotvetnite selecti za dostypvane na neobhodimata informaciq
-- da se izpolzva drop samo vednyj :D

-- ?? kak da vidim cqlata baza s vsichki tablici
-- ?? kak se dobavq nova kolona vyv veche syzdadena tablica
-- ?? zashto izpylnqva komandata a ne pokazva rezultat a prazna tablica
-- ?? moje li da se pravi s edin select tyrsene v nqkolko tablici



create table monitor
(
id int(10),
pixel int(100),
rezolutions varchar(10),
size varchar(10)
-- ???? dayDdate date
);


create table monitor_date
(
id int(10),
pixel int(100),
rezolutions varchar(10),
size varchar(10),
 dayDdate date
);

select * from monitor;
select distinct (pixel) from monitor;
select count(*) from monitor;

-- ??????  select distinct (id, id) from monitor, motori;

use tutorials;
select * from monitor;
select id from monitor;
select pixel from monitor;
select id, pixel from monitor;
select rezolutions, id, size from monitor;

select * from monitor
where monitor.id = 2
and monitor.pixel = 243;

select * from monitor
where monitor.id like 2
and monitor.pixel like 243;
-- ???????????????????????????
select * from monitor
where monitor.id like '%3%'
and monitor.rezolutions  ='biiig12';
-- ????????????????????????????
select * from monitor, motori
where monitor.id = 1
and monitor.size like '34incha34'
and motori.model 
and motori.id = 2;

insert into monitor(id, pixel, rezolutions, size)
value (2, 253, 'biiig12', '34incha34');

create table motori
(
id int(10),
model varchar(20),
gumi varchar(20)
);

insert into motori(id, model, gumi)
value (3, 'aaaaa', 'rrrrrrr');

select * from motori;

create table telefoni
(
id int(10),
model varchar(15),
display varchar(20)
);

insert into telefoni(id, model, display)
value(3, 'samsing','GY$%)');

select * from telefoni;



create table jeni
(
id int(10),
kosa varchar(150),
kraka varchar(150),
ochi varchar(150)
);

select * from jeni;

create table deca
(
id int(10),
ryst varchar(15),
godini varchar(15),
sex varchar(5)
);

select *from deca;

select * from tutorials; 

create database test;

use test1;
use tutorials;
select * from credentials;

describe credentials;

drop database test;


describe tutorials;