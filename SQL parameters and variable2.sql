declare @mingpa float = 2.0;
declare @maxgpa float = 3.5;

select firstName, lastName, gpa
	from student
	where gpa >= @mingpa and gpa <= @maxgpa
	order by gpa