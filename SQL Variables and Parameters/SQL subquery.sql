select *
from Student
where gpa > (select avg(gpa) from student)

select *
from student 
where gpa > (select avg(gpa) from student)
order by gpa desc

select *
from student
where gpa < (select avg(gpa) from student)
order by gpa desc

select *
from student 
where sat > (select avg(SAT) from student)
order by sat desc

select *
from student
where sat < (select avg(sat) from student)
order by sat desc