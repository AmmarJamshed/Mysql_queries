CREATE database New_SQL_Class;
DROP database New_SQL_Class;
Create table New_SQL_Class.new_class (
id int NOT NULL,
cust_name Varchar(80),
age int );

Insert into New_SQL_Class.new_class (id,cust_name,age)
Values (1,'Ammar',12);

Select * from New_SQL_Class.new_classes;

Delete from New_SQL_Class.new_class where id = 1;

Alter table New_SQL_Class.new_class
RENAME COLUMN cust_name TO customer_name;

Alter table New_SQL_Class.new_class
DROP age;

Alter table New_SQL_Class.new_class
MODIFY customer_name int;
Alter table New_SQL_Class.new_class
MODIFY customer_name Varchar(100);

select salary,emp_name from emp.emp
where emp_name like 'A%';

DROP table New_SQL_Class.new_class;

Rename table New_SQL_Class.new_class to New_SQL_Class.new_classes;

select * from class.salesrecords;

select lower(Country) from class.salesrecords;
select upper(Country) from class.salesrecords;

select * from class.salesrecords
where lower(Country) = 'rwanda';
select count(Order_ID) from class.salesrecords;
Alter table class.salesrecords
RENAME COLUMN `Order ID` TO `Order_ID`;
Alter table class.salesrecords
RENAME COLUMN `Total Revenue` TO `Total_Revenue`;
Alter table class.salesrecords
RENAME COLUMN `Order Priority` TO `Order_Priority`;
Alter table class.salesrecords
RENAME COLUMN `Order Date` TO `Order_Date`;

select Max(Total_Revenue) from class.salesrecords;
select avg(Total_Revenue) from class.salesrecords;
select sum(Total_Revenue) from class.salesrecords;

SELECT FORMAT(Total_Revenue, 0) AS formatted_column1 FROM class.salesrecords;

select Order_ID, Total_Revenue, COUNT(*) from class.salesrecords 
GROUP BY Order_ID, Total_Revenue;

select * from class.salesrecords;

Alter table class.salesrecords
RENAME COLUMN `Units Sold` TO `Units_Sold`;

select Order_Date, Units_sold from class.salesrecords;

select * from class.salesrecords where Order_Date is Null;

select * from class.salesrecords where Order_Date is Not Null;
select * from new_sql_class.electric_vehicle_population_data;
select * from class.salesrecords 
where Order_Priority = 'M' 
Order by Total_Revenue ASC;

Select Order_ID, Order_Date from class.salesrecords
Where Order_Date = '4/30/2012';

select * from class.salesrecords
WHERE Order_Date = '5/28/2010' AND Units_Sold > 9000;

select * from class.salesrecords
WHERE Order_Date = '5/28/2010' OR Units_Sold > 9000;

select * from class.salesrecords
WHERE NOT Order_Date = '5/28/2010' AND NOT Units_Sold > 9000;

# A in 2nd
select * from class.salesrecords
Where Country LIKE '_a%';
# A in 3rd
select * from class.salesrecords
Where Country LIKE '__a%';

# Between range
select * from class.salesrecords
where Order_Date between '2/1/2013' AND '5/22/2017';

Create database new_name;

select * from classnew.student_prediction;
Alter table classnew.student_prediction
RENAME COLUMN `ï»¿STUDENTID` TO `STUDENT_ID`;

Alter table classnew.student_prediction
RENAME COLUMN `#_SIBLINGS` TO `SIBLINGS`;
Alter table classnew.student_prediction
RENAME COLUMN `COURSE ID` TO `COURSE_ID`;
select * from  classnew.student_prediction
where STUDENT_ID AND AGE AND GENDER IS NULL;

select Count(STUDENT_ID) from classnew.student_prediction
Where SIBLINGS > 2;
Select count(STUDENT_ID) from classnew.student_prediction;
select AGE, GENDER from classnew.student_prediction
group by GENDER;

select * from class.sales 
WHERE Product_line = "Health and Beauty" OR Quantity > 5 OR Rating > 5 OR gross_income > 10;

select MAX(Quantity) from class.sales;
SELECT * FROM class.sales WHERE City LIKE 'a%';


