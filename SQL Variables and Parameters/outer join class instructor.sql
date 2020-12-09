select c.*, i.Lastname 
from class c
left join instructor i
on i.id = c.InstructorId

select *
from class
select *
from Instructor

select *
from class c
join instructor i
on i.id = c.InstructorId

--left join shows NULL
select *
from class c
left join instructor i
on i.id = c.InstructorId

select c.*, i.lastName
from class c
left join instructor i
on c.InstructorId = i.Id

select c.*, i.lastName
from class c
left join instructor i
on c.InstructorId = i.Id
