--use Northwind

--select * from [Order Details]

--declare @maxprice nvarchar(20)
--set @maxprice=(select max(UnitPrice) from [Order Details])
--select @maxprice



select * from Products

declare @stock int
select @stock=max(UnitsInStock) from Products
select * from Products where UnitsInStock=@stock
