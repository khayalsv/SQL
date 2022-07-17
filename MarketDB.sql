--create database SellDb

--use SellDb

--create table Category
--(
--Id int identity(1,1) primary key,
--Name nvarchar(50)
--)

--create table Product
--(
--Id int identity(1,1) primary key,
--Name nvarchar(50),
--Brand nvarchar(50),
--CategoryId int,
--Purchase decimal(18,2),
--Selling decimal(18,2),
--Stock smallint check(Stock>0),
--Status bit default '1'
--)


create table Employee
(
Id int identity(1,1) primary key,
Fullname nvarchar(50)
)

create table Customer
(
Id int identity(1,1) primary key,
Name nvarchar(50),
Surname nvarchar(50),
City nvarchar(50),
Balance decimal(18,2)
)

create table Market
(
Id int identity(1,1) primary key,
ProductId int,
CustomerId int,
EmployeeId int,
Total decimal(18,2),
Date smalldatetime
)