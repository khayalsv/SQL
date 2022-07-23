select * from Product

create function EDV(@price decimal(18,2))
returns decimal(18,2)
as
begin
return @price*1.18
end


select dbo.Edv(Sale) as 'EDV' from Product
