update student set
	firstname = 'Joseph'
	where id = 500

	-- or where id in (500,501) if I have another Joe Smith with id 501


	select * from student
	order by id desc
	--	where firstname = 'Joe'