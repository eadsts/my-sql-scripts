declare @mingpa float = 2.0;
declare @maxgpa float = 3.5;

select firstName, lastName, gpa
	from student
	where gpa >= @mingpa and gpa <= @maxgpa
	order by gpa

declare @minsat int = 1000;
declare @maxsat int = 1400;

select firstname, lastname, sat
	from student
	where sat >= @minsat and sat <= @maxsat
	order by sat desc