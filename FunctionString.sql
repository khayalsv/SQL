alter function LowerLetter(@name nvarchar(20))
returns nvarchar(20)
as
begin
return lower(@name)
end

select dbo.LowerLetter(Name) from Product