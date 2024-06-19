Select * from class.statenames;

# Like for starting letter
select * from class.statenames
Where Name LIKE "M%";
# Where M is existing
select * from class.statenames
Where Name LIKE "_M_a%";

# total number of babies whose name start with M
select SUM(count) AS total_number_of_babies from class.statenames
Where Name LIKE "M%";
# NOT IN
select * from class.statenames
Where Name Not in ('Emma');
CREATE DAtabase nnew_databaseew_database;
# JOIN
select * from class.sales;
select * from class.salesdatamarknew;
ALTER TABLE class.salesdatamarknew RENAME COLUMN `Invoice ID` TO `Invoice_ID`;
ALTER TABLE class.sales RENAME COLUMN `Invoice ID` TO `Invoice_ID`;
select 
# Cross Join
Select *
FROM class.sales
CROSS Join class.salesdatamarknew
ON sales.Invoice_ID = salesdatamarknew.Invoice_ID;

# Inner Join
Select Payment, Quantity, Time, cogs
FROM class.sales 
Cross Join class.salesdatamarknew
ON sales.Invoice_ID = salesdatamarknew.Invoice_ID
Where Quantity < 20;


# Subquery to find third highest sales revenue
Select Max(Total) As total_revenue
From class.sales
Where
Total < (Select Max(Total)
From class.sales
Where
Total < (Select Max(Total)
From class.sales));

# product line that earn more than average revenue 
select Product_line, Total from class.sales
Where 
Total > (select avg(Total) from class.sales);

# Product line greater average price
select Product_line, Unit_price from class.sales
Where 
Unit_price > (select avg(Unit_price) from class.sales);

# product line which have gross margin percenteage of value greater than avg gross margin perce

select product_line, Quantity from class.sales
where 
Quantity > (select avg(Quantity) from class.sales);

# city where unit unit price of value greater than avg unit price
select city, unit_price from class.sales
where
unit_price > (select avg(unit_price) from class.sales);

# connected table subquery
SELECT Branch, City, Unit_price 
FROM class.sales
WHERE Unit_price > 30 
  AND Branch IN (SELECT Branch FROM class.salesdatamarknew WHERE Unit_price > 30)
ORDER BY Unit_price ASC;
# check if records match 
SELECT Invoice_ID, Customer_type, Unit_price 
FROM class.sales
WHERE Customer_type IN (
    SELECT Customer_type 
    FROM class.salesdatamarknew 
    WHERE Customer_type = 'Normal'
);

#gross income matches
select Invoice_ID, Customer_type, gross_income from class.sales
where gross_income < 20 
AND Invoice_ID in (select Invoice_ID from class.salesdatamarknew 
where gross_income < 20 )
order by gross_income DESC;

#CTE
WITH customer_EXP AS (
    SELECT Customer_type
    FROM class.sales
    WHERE Customer_type = 'Normal'
)
SELECT Invoice_ID, Customer_type, Unit_price
FROM class.sales
WHERE Customer_type IN (SELECT Customer_type FROM customer_EXP);

#gross income matches
WITH random_CTE AS (
select Invoice_ID, Customer_type, gross_income from class.sales
where gross_income < 20
)

select Invoice_ID, Customer_type, gross_income from class.sales
where gross_income AND Invoice_ID in (select Invoice_ID from random_CTE)
order by gross_income DESC;
