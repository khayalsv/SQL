create trigger Reduce
on Product
after delete
as
declare @stocktotal int
select @stocktotal=stock from deleted
update TBLStock set TotalProduct=TotalProduct-@stocktotal