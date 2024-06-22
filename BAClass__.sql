# Create a Database
Create database BA_class;

# Create a table 
Create table BA_class.todays_classe (
student_id int primary key not null,
student_name VARCHAR(100),
age int );

# retrieve data
select age, student_name from BA_class.todays_class;

# insert data
insert into ba_class.todays_class (student_id, student_name, age)
values
(1,'Ammar',12),
(2,'Amamr Jam',13);

# put 15 rows
insert into ba_class.todays_class (student_id, student_name, age)
values
(3,'Nayab',14),
(4, 'ali',17),
(5, 'simran',20),
(6, 'zeynab',14),
(7,'erik',16),
(8,'tina',11),
(9,'saim',18),
(10,'wendy',19),
(11,'rida',23),
(12,'kelly',15),
(13,'fret',18),
(14,'deli',19),
(15,'qais',13);

# Edit age  
update ba_class.todays_class
set age = 21
where student_id = 15;

select * from ba_class.todays_class;


update ba_class.todays_class
set age = 19
where age = 14;

# where 
select * from ba_class.todays_class
where age < 12;

# Min
select min(age) from ba_class.todays_class;