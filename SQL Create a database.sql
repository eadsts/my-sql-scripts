create table Students (

	Id int not null primary key identity (1,1),
	Name varchar(30) not null,
	Email varchar(100)not null,
	Phone varchar(12),
	Course varchar(10)

);

create table Practice (

	Id int not null primary key identity (1,1),
	Name varchar(30) not null,
	Phone varchar(12)

	);

create table Practice1 (
	
	Id int not null primary key identity (1,1),
	Name varchar (30) not null,
	Email varchar (30)

	);

create table Practice2 (
	
	Id int not null primary key identity (1,1),
	Name varchar (30) not null,
	City varchar (30)

	);