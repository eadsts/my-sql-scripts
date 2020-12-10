
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

select * from student
select * from major

update student set
majorid = (select id
from major 
where description = 'finance')
where id = 120

select * from student


update student set
majorId = (select id
from major
where description = 'education')
where id = 140

select * from student

