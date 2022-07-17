--select * from Products

--select * from Products where CategoryID=(select CategoryID from Categories
--where CategoryName='SeaFood') and UnitsInStock>20 and
--SupplierID=(Select SupplierID from Suppliers where City='Osaka')

 
--create procedure Test1
--as
--select * from Orders where EmployeeID in(select EmployeeID from Employees where City='London')
--and ShipVia=3 and ShipCountry='France'

--Exec Test1


--------------------------------------------------------------------


--create view View1 
--as
--select OrderId,CompanyName,FirstName + ' ' + LastName as 'Employee',OrderDate,ShipName,ShipCity,ShipCountry from Orders
--inner join Customers on Orders.CustomerId=Customers.CustomerId
--inner join Employees on Orders.EmployeeID=Employees.EmployeeId

--select * from View1


select * from View2