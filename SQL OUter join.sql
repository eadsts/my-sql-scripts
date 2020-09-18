select *
	from instructor i
		left join class c
		on c.instructorid = i.id