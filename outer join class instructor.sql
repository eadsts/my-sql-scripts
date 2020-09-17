select c.*, i.Lastname 
from class c
left join instructor i
on i.id = c.InstructorId