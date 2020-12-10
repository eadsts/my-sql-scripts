select lastname, 'A' as 'ABC'
	from student
	where sat > 1200
union 
select lastname, 'B' as 'ABC'
	from student
	where sat <= 1200 and sat > 1000
union
select lastname, 'C' as 'ABC'
	from student
	where sat <= 1000

select * from student

select lastname, 'A+' as 'Final Grade'
	from student
	where gpa >= 4.0

union
select lastname, 'A' as 'Final Grade'
	from student
	where gpa >= 3.5 and gpa < 4.0

union 
select lastname, 'A-' as 'Final Grade'
	from student
	where gpa > 3.0 and gpa < 3.5

union 
select lastname, 'B+' as 'Final Grade'
	from student 
	where gpa = 3.0

union 
select lastname, 'B' as 'Final Grade'
	from student
	where gpa >= 2.5 and gpa < 3.0

union 
select lastname, 'B-' as 'Final Grade'
	from student
	where gpa > 2.0 and gpa < 2.5

union 
select lastname, 'C+' as 'Final Grade'
	from student 
	where gpa = 2.0

union 
select lastname, 'C' as 'Final Grade'
	from student
	where gpa >= 1.5 and gpa < 2.0

union 
select lastname, 'C-' as 'Final Grade'
	from student
	where gpa > 1.0 and gpa < 1.5