-- Joins
-- Cross Join, Self Join, Inner, Left and Right join, Outer Join
use test1;
select parents.id, grandparents.id from parents cross JOIN  grandparents order by 2 desc; 
-- 2 e nomera na kolonata koqto iskash da sortirash
-- Corss Join ti pravi join ti pravi prisyedinqvane na koloni 
-- samo che rezultatite sa x*y (x*y na tablicite na kolonite)

-- inner join mejdu dve tablici ili poveche tablici kato kolonite koito sravnqvat sa 
-- ot samite tablici

select * from parents;
select * From grandparents;

SELECT 
    grandparents.name_grandparents, parents.name_parents
FROM
    parents,
    grandparents
    where (grandparents.id = parents.id);
    
SELECT 
   *
FROM
    parents,
    grandparents
    where (grandparents.id = parents.id+1);
    
    -- self join
    -- ideqta e da se selektira po drugo pole ot tablicata
    select * from parents p
    where p.id <> p.id_parents; -- <> tova e razlichno 
    
    
    -- Left and RIGHT Joins
    -- Ideqta na left i right joins e da obedini vsichki vyzmojni namereni koloni ot ednata i ot drugata tablica
    -- ako ne nameri nqkoq kolona q izpisva null
    select * from parents
    RIGHT JOIN grandparents
    ON   grandparents.id+1 =  parents.id;
    
    
-- Outer join
-- outer join e protivopolojnost na Cross join pokazva unikallnite redove samo, ako ima mnogo varianti pokazva vsichkite
-- ne e zadyljitelno poletata po koito se filtrira selekta da sa ot tablicite
  -- https://dev.mysql.com/worklog/task/?id=1604
SELECT 
    *
FROM
    parents
        RIGHT JOIN
    grandparents ON grandparents.id  = parents.id 
UNION SELECT 
    *
FROM
    parents
        LEFT JOIN
    grandparents ON grandparents.id +1 = parents.id;
  
    
    -- UNION moje da se polzva i v Inner join UNION ALL
    select ABS(-151151); -- modul vinagi dava polojitelno chislo ;
    
    -- TODO da se napishat 4 proceduri sybirane izvajdane umnojenie i delenie deistviq svyrzani sys nqkakvi tablici
    -- Da se uprajnqt razlichnite joinove
    
    
    
    -- Next time : Triggers, Functions, Subsrings, Primary, FOreighn Key, Regular Expression
    -- Index Cursor Loops, If; Exeptions
    
use test1;

select sum(id) from kin;



SHOW GRANTS FOR 'root'@'localhost';


GRANT ALL PRIVILEGES ON `%`.* TO '[test1]'@'[localhost]' IDENTIFIED BY '[root]' WITH GRANT OPTION;


SELECT user, host FROM mysql.user;
 
GRANT SELECT ON jobs.* TO 'root'@'localhost';

select * from kin;

CREATE USER 'dbuser'@'localhost' IDENTIFIED BY 'root';

-- Just create new username
GRANT ALL PRIVILEGES ON *.* TO 'dbuser'@'localhost'
		WITH GRANT OPTION;
        
        
CREATE table credentials(
id  int(5) not null unique,
username varchar(255),
password varchar(255)

);

select * from credentials;
-- drop table credentials;

select * from car;