declare @studentSAT int = 1000;

select *
	from major
	where minSAT <= @studentSAT


declare @studentgpa float = 3.0;

select *
	from student
	where gpa <= @studentgpa

declare @studentreqgpa float = 3.5
select *
	from student
	where gpa >= @studentreqgpa
	order by gpa