

use test1;
select * from credentials;
select * from log_table;


describe log_table;

delimiter $$
CREATE TRIGGER log_credentials AFTER INSERT ON credentials FOR EACH ROW
	BEGIN 
     INSERT INTO log_table
     values (3, 'indexUser');
END$$
delimiter $$


delimiter $$
CREATE TRIGGER get_credentials BEFORE INSERT ON credentials FOR EACH ROW
	BEGIN 
    DECLARE new_username varchar(40);
    SET  new_username = OLD.username;
    
     INSERT INTO log_table
     values (3, 'indexUser');
END$$
delimiter $$

-- trigger hvashta samoto sybitie vyrhu dadena tablica s primera po nagore hvashta SYBITIETO "INSERT"
-- Ako izpolzvame INSERT v tablica credentials vliza v begina i hvashta napisanoto v nego



