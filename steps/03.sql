DROP PROCEDURE IF EXISTS generate;
DELIMITER //
CREATE PROCEDURE generate()
BEGIN
DECLARE i INT DEFAULT 0;
WHILE (i <= 1000000) DO
    INSERT INTO `search`
        SET f1=CONCAT(lipsum(2000, 2000, 0)),
            f2=CONCAT(lipsum(2000, 2000, 0)),
            f3=CONCAT(lipsum(2000, 2000, 0)),
            f4=CONCAT(lipsum(2000, 2000, 0)),
            f5=CONCAT(lipsum(2000, 2000, 0));
    SET i = i+1;
END WHILE;
END;
//