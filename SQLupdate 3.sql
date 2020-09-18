update student set
	gpa = gpa + 0.1

where sat >= 1000 and sat <= 1300
-- or sat between 1000 and 1300

select * from student
/* update a student's gpa by 0.1 if the sat is between 1000 and 1300*/