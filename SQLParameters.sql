declare @lowsat int = 1100;
declare @highsat int = 1200;

select * 
from student
where sat >= @lowsat and sat <= @highsat;