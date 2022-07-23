select * from Product

create function StockIncrease(@number int)
returns int
as
begin
return @number+23
end

select dbo.StockIncrease(Stock) from Product

select * from Product