
select *
from orders o
join OrderLines l
on o.id = l.OrderId
join Customers c
on c.id = o.CustomerId

select * 
from orders
select * 
from orderLines
select * 
from Customers

select *
from orders o
	join orderLines l
	on o.id = l.orderId
	join customers c
	on c.id = o.customerId

select *
from orders o
	join OrderLines l
	on o.id = l.orderId
	join Customers c
	on c.id = o.CustomerId

	select *
	from orders o
	join OrderLines l
	on o.id = l.OrderId
	join customers c 
	on c.id = o.customerId