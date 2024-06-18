select * from class.sales;

select * from class.sales
WHERE City = 'Yangon' AND Gender = 'Male';

select Unit_price from class.sales
where Quantity < 10;
ALTER TABLE class.sales RENAME COLUMN `Unit price` TO `Unit_price`;
