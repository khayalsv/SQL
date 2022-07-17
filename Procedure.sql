Create Procedure NameList
As
select Name from Student

execute NameList


Drop Procedure NameList


Alter Procedure [dbo].[NameList]
As
select Name from Student where Name='Khayal'

execute NameList


create procedure AddMethod
@name nvarchar(max)=null,
@surname nvarchar(max)=null
As
insert into Student(Name,Surname) values
(@name,@surname)

execute AddMethod 'Faiq','Melikov'