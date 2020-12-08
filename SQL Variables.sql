 declare @firstname varchar(30) = 'Eric';
declare @gpa float = 2.0;

set @gpa = @gpa + 0.7;

select * 
from student
where gpa = @gpa

select * 
from student

declare @practicegpa float = 1.7;
set @practicegpa = @practicegpa + 1.5;

select *
from student
	where gpa = @practicegpa;

declare @x integer = 200;
set @x = @x + 1000;
select *
from student
	where SAT = @x;