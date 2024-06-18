CREATE database class;
select * from class.sales;
SHOW VARIABLES WHERE Variable_name = 'hostname';
select * from class.sales;
select upper(City) from class.sales;
select lower(City) from class.sales;
select UPPER(Gender), Product_line from class.sales;
select SUM(Quantity) from class.sales;
select COUNT(Quantity) from class.sales;
select Payment, Product_line from class.sales WHERE Product_line LIKE '%a';
Select SUM(Total) from class.sales Where Gender = 'Female';

ALTER TABLE class.sales RENAME COLUMN `Customer type` TO `Customer_type`;
ALTER TABLE class.sales RENAME COLUMN `Product line` TO `Product_line`;
ALTER TABLE class.sales RENAME COLUMN `Tax 5%` TO `Tax_5%`;
ALTER TABLE class.sales RENAME COLUMN `gross margin percentage` TO `gross_margin_percentage`;
ALTER TABLE class.sales RENAME COLUMN `gross income` TO `gross_income`;
select * from class.sales;
# AND, OR BETWEEN
select * from class.sales where Customer_type = 'Member' AND Quantity < 7;
select * from class.sales where Customer_type = 'Member' AND Quantity < 7;
select * from class.sales where Date Between '1/5/2019' AND '1/6/2019';

select * from class.sales where NOT Quantity < 7 AND NOT City = 'Mandalay';
select Unit_price, Product_line from class.sales where Product_line LIKE "__a%";
select sum(Total) from class.sales where Quantity < 5;

# 
select * from new_sql_class.bus-breakdowns-delays__;

select * from class.sales ORDER by Date DESC;
select Min(Quantity) from class.sales;
select max(Quantity) from class.sales;
select avg(Quantity) from class.sales;
select * from class.sales 
order by Quantity ASC;
select * from class.sales;
select avg(Quantity), Gender from class.sales group by Gender;

select City, Customer_type from class.sales
where Total < (select avg(Total) from class.sales);
select * from class.sales;

select count(City) from class.sales;
select Total from class.sales;

select count(Branch) AS noofbranches, City, SUM(Total) from class.sales 
where Total < (Select avg(Total) from class.sales)
Group by City;

Select Max(Total)
From class.sales
Where
Total < (Select Max(Total)
From class.sales
Where
Total < (Select Max(Total)
From class.sales));

select * from class.vgsales;
Update class.vgsales
SET Genre = "Speed"
where Genre = "Racing";

select * from class.vgsales
Where Genre = "Speed";

# Delete clause 
delete from class.vgsales
where NA_Sales = "15.85";

SELECT User FROM mysql.user;
