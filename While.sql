--declare @counter int
--set @counter=1

--while @counter<=5
--begin
--print 'Hello Sql lesson'
--set @counter=@counter+1
--end

--------------------------------------------------

--declare @i int
--set @i=0

--while @i<10
--begin 
--set @i+=1
--print @i
--end

------------------------------------------------

--declare @total int,@counter int
--set @counter=1
--set @total=0
--while(@counter<10)
--begin
--set @total+=@counter
--set @counter+=1
--end
--print '1 between 10 numbers total'
--print @total


------------------------------------------------

waitfor delay '00:00:02'
select * from Student