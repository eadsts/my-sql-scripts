declare @lowsat int = 1100;
declare @highsat int = 1200;

select * 
from student
where sat >= @lowsat and sat <= @highsat;

declare @lowestsat int = 700;
declare @highestsat int = 1200;

select *
from student
where sat >= @lowestsat and sat <= @highestsat;

declare @lowgpa int = 3.0;
declare @highgpa int = 4.0;

select * 
from student
where gpa >= @lowgpa and gpa <= @highgpa;