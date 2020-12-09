select *
	from student s
		join studentclassrel sc
			on sc.studentId = s.id
			join class c
			on c.id = sc.classid

select *
from student
select *
from class
select * 
from StudentClassRel

select *
from student s
left join StudentClassRel sc
on s.id = sc.StudentId
left join class c
on c.id = sc.ClassId

select *
from student s
left join StudentClassRel sc
on s.id = sc.StudentId
left join class c
on c.id = sc.ClassId