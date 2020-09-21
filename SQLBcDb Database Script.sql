use master;
go

drop database if exists BcDb;
go

create database BcDb;
go

use BcDb;
go

create table Customers (
	Id int not null primary key identity(1,1),
	Code varchar(10) not null UNIQUE,
	Name varchar(30) not null,
	Sales decimal(9,2) not null DEFAULT 0,
	Active bit not null DEFAULT 1,
	Created datetime not null DEFAULT getdate()
	);
	
insert Customers
	(Code, Name, Sales)
values 
	('1', 'A Corp', 10000),
	('2', 'B Corp', 5000),
	('3', 'C Corp', 3000)
insert Customers 
	(Code, Name) 
Values
	('4', 'D Corp');
 

select * from customers

create table Orders (
	Id int not null primary key identity(1,1),
	Description varchar(30) not null,
	Total decimal(9,2) not null DEFAULT 0,
	CustomerId int not null foreign key references Customers(Id)
	);

insert Orders
	(Description, Total, CustomerId)
values 
	('paper', 1000.00, 1),
	('computer', 2000.00, 2);

select * from Orders

