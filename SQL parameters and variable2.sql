declare @mingpa float = 2.0;
declare @maxgpa float = 3.5;

select firstName, lastName, gpa
	from student
	where gpa >= @mingpa and gpa <= @maxgpa
	order by gpa

declare @minsat int = 1000;
declare @maxsat int = 1300;

select firstName, lastName, SAT
	from student
		where SAT >= @minsat and SAT <= @maxsat
		order by SAT;

select * 
from student