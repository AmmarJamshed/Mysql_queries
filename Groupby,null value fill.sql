# Add column
Alter table class.vgsales
ADD cust_rate int;

select * from class.vgsales;
# Fill new column with Random values
UPDATE class.vgsales
SET cust_rate = FLOOR(RAND() * 100) -- Adjust 100 to your desired maximum random value
WHERE new_column > 10; -- Specify your condition to selectively update rows

# null values
select NA_Sales, cust_rate from class.vgsales
where cust_rate is null;

# null value filling
UPDATE class.vgsales
SET cust_rate = (
    SELECT AVG(NA_sales))
WHERE cust_rate IS NULL;


DROP Table class.hr;
select * from classnew.salesdata;
Truncate table classnew.salesdata;

select * from class.bigmacprice;

select * from class.vgsales;
#LIKE 
select Genre from class.vgsales
where Genre Like '%__o_';
#LIKE 
select Genre from class.vgsales
where Genre Like '%o';

# find out Genres and their american sales wheere A is the third letter in the genre  
#find out Genres and their JP sales wheere y is the third last letter in the genre 
SELECT Genre, NA_sales FROM class.vgsales
WHERE SUBSTRING(Genre, 3, 1) = 'A';

#single row function
select (dollar_ex)*0.05 from class.bigmacprice;

# multiple row function
select count(name) from class.bigmacprice;

select sum(dollar_price) from class.bigmacprice;
select avg(dollar_price) from class.bigmacprice;
# date function
SELECT DATE('2024-02-28 15:35:00');
select Date(date) from class.bigmacprice;
# Upper
select upper(name) from class.bigmacprice;
#Lower 
select lower(name) from class.bigmacprice;

select * from classnew.student_prediction;

select * from new_name.items;

select asin, brand, title from new_name.items
where lower(brand) = 'nokia';

select title, count(*) from new_name.items
where brand = 'Motorola'
Group by title;

select * from class.global_education;
Alter table class.global_education
RENAME COLUMN `Countries and areas` TO `Countries_and_areas`;

select Countries_and_areas, OOSR_Pre0Primary_Age_Female, Completion_Rate_Primary_Female, Completion_Rate_Upper_Secondary_Female, Completion_Rate_Lower_Secondary_Female  from class.global_education
WHERE Completion_Rate_Primary_Female > 50 AND Completion_Rate_Upper_Secondary_Female > 50 AND Completion_Rate_Lower_Secondary_Female > 50;

select Count(Countries_and_areas) from class.global_education 
Where Completion_Rate_Primary_Female > 50;

select avg(Primary_End_Proficiency_Math) from class.global_education
WHERE OOSR_Pre0Primary_Age_Female > 15;

SELECT COUNT(DISTINCT OOSR_Pre0Primary_Age_Female) FROM class.global_education;
