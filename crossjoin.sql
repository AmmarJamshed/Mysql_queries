Select * From class.emp; 
select * from classnew.empaction;
# Cross Join
Select * From class.emp CROSS Join classnew.empaction 
On empaction.EmpID = emp.EmpID
WHERE DepID = 8 AND MgrID = 43;

Select *
From classnew.empaction;
