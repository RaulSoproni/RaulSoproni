
--Exercise 01: Retrieve All Orders for Individual Customers

select p.FirstName
     , p.MiddleName
     , p.LastName
     , p.PersonType
     , soh.OrderDate
     , soh.TotalDue
  from Sales.SalesOrderHeader soh
  join Sales.Customer c
	  on soh.CustomerID = c.CustomerID
  join Person.Person p
    on p.BusinessEntityID = c.PersonID

	--Exercise 02: Retrieve the product names and corresponding categories

	select p.Name as ProductName
     , pc.Name as CategoryName
  from Production.Product p 
  join Production.ProductSubcategory ps
    on p.ProductSubcategoryID = ps.ProductSubcategoryID
  join Production.ProductCategory pc 
	on ps.ProductCategoryID = pc.ProductCategoryID;

	--Exercise 03: Retrieve a specific product

	select p.[Name] as ProductName
     , pv.Quantity
  from Production.Product p
  join Production.ProductInventory pv
    on p.ProductID = pv.ProductID
  join Production.[Location] l
    on pv.LocationID = l.LocationID
 where l.[Name] = 'Subassembly'
   and pv.Shelf = 'W'	
   and pv.Bin = 9 

