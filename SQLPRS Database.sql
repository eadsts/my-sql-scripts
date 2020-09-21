use master;
go

drop database if exists PRS;
go

create database PRS;
go

use PRS;
go

create table Users (
	Id int not null primary key identity (1,1),
	UserName VARCHAR(20) not null UNIQUE,
	Password VARCHAR(10) not null,
	FirstName VARCHAR(20) not null,
	LastName VARCHAR(20) not null,
	PhoneNumber VARCHAR(12) not null,
	Email VARCHAR(75) not null,
	IsReviewer bit not null DEFAULT 0,
	IsAdmin bit not null DEFAULT 0
	);

insert Users	
	(UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin)
values 
	('UsName', 'Pass', 'Alice', 'Ant', '513-555-1212', 'AliceAnt@yahoo.com', 0, 1),
	('UsName2', 'Pass1', 'Bob', 'Burger', '513-555-1000', 'Bob@yahoo.com', 0, 1),
	('UserName3', 'Pass2', 'Cat', 'Corner', '513-555-2000', 'Cat@yahoo.com',0,1)

select * from Users

create table Vendor (
	Id int not null primary key identity(1,1),
	Code VARCHAR(10) not null UNIQUE,
	Name VARCHAR (255) not null,
	Address VARCHAR (255) not null,
	City VARCHAR (255) not null,
	State VARCHAR (2) not null,
	Zip VARCHAR (5) not null,
	PhoneNumber VARCHAR(12) not null,
	Email VARCHAR(100) not null
);

insert Vendor
	(Code, Name, Address, City, State, Zip, PhoneNumber, Email)

values
	('A', 'A Corp', 'A1 Blvd', 'Ainati', 'AL', '45251', '513-555-1212', 'A1Blvd@yahoo.com'),
	('B', 'B Corp', 'B1 Blvd', 'Binati', 'AL', '45251', '513-555-1212', 'B1Blvd@yahoo.com')

select * from Vendor

create table Product (
	Id int not null primary key identity (1,1),
	VendorId int not null foreign key references Vendor(Id),
	PartNumber VARCHAR(50) not null UNIQUE,
	Name VARCHAR(150) not null,
	Price DECIMAL(10,2) not null,
	Unit VARCHAR(255),
	PhotoPath VARCHAR(255)
);

insert Product
	(VendorId, PartNumber, Name, Price, Unit, PhotoPath)

values
	(1, 'PN1', 'desk chair', '150.00', 'NULL', 'NULL')

insert Product
	(VendorId, PartNumber, Name, Price, Unit, PhotoPath)

values
	(2, 'PN2', 'copy paper', '7.99', 'NULL', 'NULL')

select * from Product

create table Request (
	Id int not null primary key identity(1,1),
	UserId int not null foreign key references Users(Id),
	Description VARCHAR(100) not null,
	Justification VARCHAR(255) not null,
	DateNeeded DATETIME not null,
	DeliveryMode VARCHAR(25) not null,
	Status VARCHAR(20) not null DEFAULT 'NEW',
	Total DECIMAL(10,2) not null DEFAULT 0,
	SubmittedDate DATETIME not null DEFAULT getdate(),
	ReasonforRejection VARCHAR(100)
);

insert Request
	(UserId, Description, Justification, DateNeeded, DeliveryMode, Status, Total, SubmittedDate)

values
	('1', 'need a laptop', 'screen is blank all the time', '2020-09-28','UPS','Pending', '574.99', '2020-09-21')

insert Request
	(UserId, Description, Justification, DateNeeded, DeliveryMode, Status, Total, SubmittedDate)

values
	('2', 'need a phone', 'will not work', '2020-09-28','UPS','Pending', '999.99', '2020-09-21')

insert Request
	(UserId, Description, Justification, DateNeeded, DeliveryMode, Status, Total, SubmittedDate)

values
	('3', 'need a phone', 'will not work', '2020-09-28','UPS','Pending', '999.99', '2020-09-21')
select * from Request

create table LineItem (
	Id int not null primary key identity(1,1),
	RequestId int not null foreign key references Request(Id),
	ProductId int not null foreign key references Product(Id),
	Quantity int not null DEFAULT 1
);

insert LineItem
	(RequestId, ProductId, Quantity)
values 
	(1,1,10),
	(2,2,5)

select * from LineItem