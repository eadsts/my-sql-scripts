
update student set 
majorid = (select id 
	from major 
	where description = 'accounting')
	where id = 110;

select *
	from student
	where id = 110
	-- returns id number of 2

--update greg gould majorid to accounting