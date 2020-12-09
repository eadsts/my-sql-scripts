select m.description as 'Major', count(majorId)
	from major m
	join majorclassrel mc
		on mc.majorid = m.id
		join class c
		on c.id = mc.classid
	group by m.Description



select *
from major m
left join majorclassrel mc
on m.id = mc.MajorId
left join class c
on c.id = mc.ClassId

select m.Description as 'Major', count(majorId)
from major m
join MajorClassRel mc
on m.id = mc.MajorId
join class c 
on c.id = mc.ClassId
group by m.Description

select m.description as 'Major', count(majorId)
from major m
join MajorClassRel mc
on m.id = mc.MajorId
join class c
on c.id = mc.ClassId
group by m.Description