declare @firstname varchar(30) = 'Eric';
declare @gpa float = 2.0;

set @gpa = @gpa + 0.5;

select * 
from student
where gpa = @gpa