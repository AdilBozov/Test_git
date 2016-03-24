-- ddl and dml 

-- ddl data definition language ; alter, create, drop ,truncate
-- dml data manipulation language call, delete
-- insert replace select update, subquery

-- DDL opisva tablicite (syzdavane, modifikaciq)
-- DML manipulira dannite v tablicite
-- DML - SELECT, INSERT, UPDATE, DELETE , DROP

-- Two kinds of SQL queries DDL and DML scripts

create table laptop
(
id int(11),
laptop_name varchar(255),
laptop_price float(11)

);

insert into laptop (id, laptop_name, laptop_price)
values (1, 'laptop_name', 12.121),
(2, 'hp', 4.2134),
(3, 'lenovo', 4.454);

-- truncate to empty data in table

truncate table laptop;

select * From laptop;

select * from laptop lp group by lp.laptop_price desc; -- asc, desc grupirane

-- lp se naricha alias ili psevdonim (neshto kato shorcut kym tablicata)

 -- order by 
 
 select * from laptop order by 1 asc;
 
 select count(*), lp.laptop_name from laptop lp group by 1 desc;
 -- order by pri slojen select, grpup by pri po prost select za grupirane po kolona (kogato iskame vsichki koloni da vijdame) 
 
 select  id as nomer from laptop; -- preimenuvane na kolona
 
 
 select * from laptop l group by l.id having l.id =2; -- * star means select all
 
 select * from laptop limit 2; -- limit ogranichava kolko broq redova iskash da vidish
 
 select * from laptop where laptop.id between 2 and 3;

 
 select * from laptop lp where lp.id = 1
 and lp.laptop_name = 12.121; -- and select the conditions to be both true; or select the conditions and only one must be true
 
select * From laptop;
 
 select * from laptop l where l.id in (1,2); -- in include all variables in can be varchar, int and etc
 
 insert into laptop
 values (1, 'na gosho shtaigata', 1.32323); 

 select * From laptop;
 
 select * from laptop l where l.id not in (1); -- not in izvejda viscki bez oboznacenite v selecta
 
 
 select distinct(laptop_name) from laptop; -- distinct pokazva SAMO i edinstveno unikalnite redove , nomera
 
describe laptop; -- pokazva kolonite i tehnite tipove

use tutorials;
select * From laptop;
 select distinct(id),laptop_name, laptop_specs from laptop as lp -- ?????
 where exists (select * from laptop where lp.id = laptop.id -- ????
 and lp.laptop_specs = 0); -- subquery vlojen sleect -- ?????
 
 select distinct(id)from laptop ;
 -- upate
 

 
 update laptop
 set laptop_name = 'karucar'
 where laptop_name = 'laptop_name';
 
 
 -- to disable safe mode on Mysql Benchmark 
 
 SET SQL_SAFE_UPDATES = 0;
 
 select * from laptop;
 
 -- delete
 -- NIKOGA NE POLAZVA delete ili UPDAE BEZ WHERE KLAUZI
 delete from laptop
 where id = 1;
 
 select * from laptop;
 
 -- alter table 
 
 alter table laptop 
 add column laptop_specs varchar(255) after laptop_price;
 
 alter table laptop
 drop column laptop_price; 
 
 alter table laptop
 modify column laptop_specs varchar(11);
 
 update laptop
 set laptop_specs = 'some specs'
 where id = 2;

use tutorials; 

select * from laptop;


lock table laptop read; -- lock table for write
lock table laptop write; -- unlock table for write

UNLOCK TABLES;

insert into laptop
values (1, '22221sadfasd', 3);

update  laptop
 set laptop_name = 'raboti we typak.';
 
 select * from monitor;
 
 
