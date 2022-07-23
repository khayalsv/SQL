--create trigger Increase
--on Product
--after insert
--as
--update Stock set TotalProduct+=1


--drop trigger Increase


create trigger Increase
on Product
after insert
as
declare @stocktotal int
select @stocktotal=Stock from inserted
update TBLStock set TotalProduct+=@stocktotal