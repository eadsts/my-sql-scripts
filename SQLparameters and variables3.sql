declare @studentSAT int = 1000;

select *
	from major
	where minSAT <= @studentSAT

declare @requiredSAT int = 1100;

select * 
	from major
	where MinSAT >= @requiredSAT;