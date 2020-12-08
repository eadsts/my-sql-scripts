select *
from Student
where gpa > (select avg(gpa) from student)

select *
from student
where gpa < (select avg(gpa) from student)

select *
from student
	where SAT > (select avg(SAT) from student)

select * 
from student	
	where SAT < (select avg(SAT) from student)
