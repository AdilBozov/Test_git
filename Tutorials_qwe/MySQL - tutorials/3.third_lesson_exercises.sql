use test1;

select * from kin;
select * from parents;


SELECT 
    kin.name_kin, parents.name_parents
FROM
    parents
        CROSS JOIN
    kin
ORDER BY 2 DESC; -- selektira vsqko vsqko ime ot zadadena kolona s vsichki imena ot drugata kolona i obratnoto ako zadadem da selectira po pyrva kolona

SELECT 
    kin.name_kin, parents.name_parents
FROM
    kin
        INNER JOIN
    parents
ORDER BY 2 DESC;

SELECT 
    kin.name_kin, parents.name_parents, people.name_people
FROM
    kin
        INNER JOIN
    parents
        CROSS JOIN
    people
ORDER BY 3 DESC; -- ??? nemoga da razbera kak tochno gi selectira

SELECT 
    kin.name_kin, parents.name_parents
FROM
    kin
        CROSS JOIN
    parents
ORDER BY 2 DESC; -- ?? ne mi e qsno kakvo se sluchva tochno

SET SQL_SAFE_UPDATES = 0;

DELETE FROM kin 
WHERE
    id = 5;

SELECT 
    kin.name_kin, parents.name_parents
FROM
    kin,
    parents
WHERE
    (kin.id = parents.id);
    
SELECT 
    *
FROM
    kin,
    parents
WHERE
    (kin.id = parents.id+1);
    
SELECT 
    *
FROM
    kin,
    parents
WHERE
    kin.id
ORDER BY 2 ASC; -- ??????? zashto pokazva takyv rezultat 

-- select parents.name_parents, kin.name_kin from parents p, kin k where p.name_parents <> k.name_kin;

SELECT 
    *
FROM
    parents p,
    kin k
WHERE
    p.name_parents <> k.name_kin;
    
SELECT 
    *
FROM
    kin
        RIGHT JOIN
    parents ON parents.id - 1 = kin.id + 1;


SELECT 
    *
FROM
    kin
        left JOIN
    parents ON parents.id - 1 = kin.id + 1;
    
    select * from kin;
    
SELECT 
    name_kin, name_parents
FROM
    kin k
        LEFT OUTER JOIN
    parents p ON k.id = p.id;-- ?? zashto

SELECT 
    *
FROM
    kin k
        LEFT OUTER JOIN
    parents p ON k.id = p.id;

SELECT 
    name_kin
FROM
    kin k
        LEFT JOIN
    parents p ON k.id = p.id 
UNION SELECT 
    name_parents
FROM
    kin k
        RIGHT JOIN
    parents p ON k.id = p.id;

select * from kin;

-- ?? ima li nachin za dostypvane na otdelnite kledtki kato pri masivite s indeksi pri procedurite

use test1;

-- ------------------------------------------------------------------------------------------------
-- trenirame s baza tutorials za vryzka i cykane s php
use tutorials;


create table register
(
id int(5) not null unique,
username varchar(255),
password varchar(255)
);

select * from gsm;

-- declare sum1 int(15);
-- vyprosa e v PHP
select sum(monitor.id)
from monitor;

-- ------------------------

select * from motori;
