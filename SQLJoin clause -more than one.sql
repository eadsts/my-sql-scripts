select *
	from student s
		join studentclassrel sc
			on sc.studentId = s.id
			join class c
			on c.id = sc.classid