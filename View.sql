--create view Test1
--as
--select * from Student

--select * from Test1

alter view Test1
as
select * from Student where Id<4  --update view

select * from Test1
