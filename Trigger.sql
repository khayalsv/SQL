--create table Counter
--(
--Process int
--)

--insert into Counter values(0)

--update Counter set Process=(select COUNT(*) from Lessons)


create trigger ProcessIncrease
on Lessons
after insert
as
update Counter set Process=Process+1



--create trigger ProcessReduce
--on Lessons
--after delete
--as
--update Counter set Process=Process-1  --Useless Trigger