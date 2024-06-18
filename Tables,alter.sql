Create Database classnew;
Create table classnew.random_table (
id int NOT NULL,
name varchar(100)
);
CREATE TABLE classnew.CLIENTS_Ammar (
    Client_ID INT NOT NULL,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Postal_Address VARCHAR(100),
    State_Address CHAR(100)
);
insert into classnew.CLIENTS_Ammar (Client_ID, First_Name, Last_Name, Postal_Address, State_Address)
values
(1,'ammar','jamshed','poka','werd');

SELECT 
    First_Name, Postal_Address
FROM
    classnew.CLIENTS_Ammar;
UPDATE classnew.CLIENTS_Ammar 
SET 
    First_Name = 'Darek'
WHERE
    Client_ID = 1;

SELECT 
    *
FROM
    classnew.CLIENTS_Ammar;
   
DELETE 
FROM
    classnew.CLIENTS_Ammar WHERE Client_ID = 1;
    
Alter table classnew.CLIENTS_Ammar
ADD age int;

Alter table classnew.CLIENTS_Ammar
RENAME COLUMN 
age TO agenew;

Alter table classnew.CLIENTS_Ammar
DROP agenew;

Alter table classnew.CLIENTS_Ammar
modify Postal_Address INT;

Truncate table classnew.CLIENTS_Ammar;

DROP Table classnew.CLIENTS_Ammar;