CREATE TABLE `USER_TB` (
  `USER_ID` INT NOT NULL AUTO_INCREMENT,
  `USERNAME` VARCHAR(45) NOT NULL,
  `PASSWORD` INT NOT NULL,
  `NAME` VARCHAR(45) NOT NULL,
  `EMAIL` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`USER_ID`));
  
create view USER_VIEW as 
SELECT
    `USER_ID`,
    `USERNAME`,
    `PASSWORD`,
    `NAME`,
    `EMAIL`
FROM
    `USER_TB`USER_TB
WEHRE
	`USER_ID` BETWEEN 1 AND 200;
    
select
	*
from 
	USER_VIEW
where
	USERNAME like 'a%'