declare @studentSAT int = 1000;

select *
	from major
	where minSAT <= @studentSAT