select m.description as 'Major', count(majorId)
	from major m
	join majorclassrel mc
		on mc.majorid = m.id
		join class c
		on c.id = mc.classid
	group by m.Description