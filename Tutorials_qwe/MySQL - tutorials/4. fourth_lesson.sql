use test1;
SET SQL_SAFE_UPDATES = 0;


-- Trigerite funkcii/operacii koito na dadeno sybitie vyrhu tablica View; izvyrshvat nqkakvo deistvie

CREATE TABLE log_table (
    id INT(12),
    username VARCHAR(200)
);


-- ima nashto narecheno anonimni blokove v tqh bez ime na procedura moje da izl=pylnqvash dadeno nesto
-- drop table log_table;
-- drop trigger log_credentials;

delimiter $$
CREATE TRIGGER log_credentials AFTER INSERT ON credentials FOR EACH ROW
	BEGIN 
     INSERT INTO log_table
     values (3, 'indexUser');
END$$
delimiter $$


use test1;



select * from credentials;
