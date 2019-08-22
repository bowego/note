DROP PROCEDURE IF EXISTS insertNames;
DELIMITER //
CREATE PROCEDURE insertNames(IN xing VARCHAR(40),IN ming VARCHAR(40),IN ming2 VARCHAR(40),IN colCount INT)
BEGIN
	DECLARE xl INT;
	DECLARE ml INT;
	DECLARE m2l INT;
	DECLARE i INT;
	DECLARE j INT;
	DECLARE k INT;
	DECLARE cnt INT;
	SET xL=LENGTH(xing)/3;
	SET ml=LENGTH(ming)/3;
	SET m2l=LENGTH(ming2)/3;
	SET cnt=1;
	WHILE cnt<=colCount
	DO
		SET cnt=cnt+1;
		SET i=FLOOR(RAND()*xl)+1;
		SET j=FLOOR(RAND()*ml)+1;
		SET k=FLOOR(RAND()*m2l)+1;
		INSERT INTO USER VALUES(NULL,CONCAT(SUBSTRING(xing,i,1),SUBSTRING(ming,j,1),SUBSTRING(ming2,k,1)),FLOOR(1000+RAND()*8999));
	END WHILE;
END//
DELIMITER ;

//
CALL insertNames("赵钱孙李周吴郑王冯陈褚卫蒋沈韩杨朱秦尤许何吕施张孔曹严华金魏陶姜戚谢邹喻柏水窦章",
"帝高阳之苗裔朕皇考迁伯庸摄提贞于孟陬惟庚寅吾以降皇览揆余初度肇锡余以嘉名名余曰正",
"扈江离与辟芷兮纫秋兰以为汩余若将不及兮恐年岁之不吾与朝搴阰之木兰兮夕揽洲之宿莽日月忽其不淹兮春与秋其代序",1000);

