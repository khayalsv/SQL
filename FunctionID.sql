create function ProductInfo(@ProductId int)
returns Table
as
return select * from Product where Id=@ProductId



select * from dbo.ProductInfo(4)