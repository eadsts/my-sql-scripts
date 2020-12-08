declare @lowsat int = 1100;
declare @highsat int = 1200;

select * 
from student
where sat >= @lowsat and sat <= @highsat;

declare @lowestsat int = 1000;
declare @highestsat int = 1300;

select *
from student
	where sat >= @lowestsat and sat <= @highestsat;

declare @lsat int = 800;
declare @hsat int = 1400;
select *
from student	
	where sat >= @lsat and sat <= @hsat;

select *
from student
	where sat >= 1100;