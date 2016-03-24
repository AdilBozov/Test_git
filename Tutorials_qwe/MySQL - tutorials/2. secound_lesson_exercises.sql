create database test1;

use test1;

create table people
(
id int(10),
name_people varchar(20),
age int(3),
year_of_birth int(4),
id_people int(1) -- ima ogranichenie za 5 simvola, no kogato go vyvejdam s value ne mi dava greshka che sa poveche ot 5 simvola

);

drop table people;

desc  people;
/* 

TINYINT = 1 byte (8 bit)
SMALLINT = 2 bytes (16 bit)
MEDIUMINT = 3 bytes (24 bit)
INT = 4 bytes (32 bit)  2^ 32-1 = 2^31 = 2147483648*5
BIGINT = 8 bytes (64 bit).
*/
select * from people;

insert into people
value(8, 'Juli', 23, 1991, 2147483647);

 create table parents
 (
 id int(5),
 name_parents varchar(15),
 id_parents int(10)
 );
 
 select * from parents;
 
insert into parents
value(4, 'Nikola', 444444);

create table grandparents
(
id int(5),
name_grandparents varchar(10),
id_grandparents int(7)
);

select * from grandparents;

insert into grandparents
value(5, 'Petyr', 555555);

create table first_cousin
(
id int(5),
name_first varchar(10),
id_first int(5)
);

select * from first_cousin;

insert into first_cousin
value (5, 'Juli', 55555);

create table kin
(
id int(10),
name_kin varchar(9),
di_kin int(5)
);

select * from kin;

insert into kin
value(5, 'MAriqna', 555555);

-- add colom

SET SQL_SAFE_UPDATES = 0;

alter table people
add column sex varchar(15) after id_people;

select * from people;



update people
set sex = 'woman'
where id = 7;

use test1;

lock table people read;
lock table people write;

unlock tables;

 update people
 set people.age = 55
 where people.id = 8; -- pkkazva che e izpylneno i unlock tables a promqna v tablicata ne se vijda

alter table people
modify column people.id_people varchar(30);

alter table people
drop column people.sex;

alter table people
add column sex varchar(10) after age; 


select * from people lp group by lp.age desc;

select * from people;

select * from people order by 4 asc;

select id as id_id from people; -- ?? zashto kato se izpylni komandata kato dadem select da vidim cqlata tablica kolonata ID ne e preimenuvana na ID-ID

select * from people P group by P.id = 6; -- pokazva pyrviq i tyrseniq red

select * from people limit 4; -- pokazva kolkoto reda iskash da vidish


select * from people p where p.id between 2 and 5; -- pokazva kolonite  mejdu koito nomera sme mu zadali po tablicata

select * from people p where p.id = 1;

select * from people p where p.id in (3,5,4); -- pokazva redovete s ni=omer na ID koeto sme mu zadali

select * from people p where p.id not in (1,2,5); -- pokazva redovete bez tezi koito sme zadali po ID

select  distinct(id) from people; -- pokazva unikalnite nomera v edna kolona ako ima povratqshti se gi reje

describe people; -- pokazva imenata na kolonite kakto i tehnite tipove i zadadeni dyljini

-- select distinct(id), name_people, age from people as p
-- where exists (select * from people 
-- where p.people = people.id and p.id = 0 );

