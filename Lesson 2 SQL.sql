--1. Selecting Data:
--Write a query to select all the columns from the Person.Person table.

SELECT *
FROM Person.Person

--2. Filtering Data:
--Write a query to find all the persons whose first name is "Ken" from the Person.Person table.

SELECT * 
FROM Person.Person
WHERE FirstName = 'Ken';

--3. Ordering Data:
--Write a query to select all the columns from the Production.Product table, ordered by Name in ascending order.

SELECT
*
FROM Production.Product
ORDER BY Name ASC;

--4. Limiting Results:
--Write a query to select the top 5 most expensive products from the Production.Product table.

SELECT top 5 --with ties (ia egalitatile)
*
FROM Production.Product
ORDER BY ListPrice DESC

--5. Calculations:
--Write a query to calculate the average list price of all the products in the Production.Product table.

SELECT AVG(ListPrice) AS AvgListPrice
FROM Production.Product


--6. Using Aggregate Functions:
--Write a query to find the maximum, minimum, and average ListPrice from the Production.Product table.

SELECT MAX(ListPrice), MIN(ListPrice), AVG(ListPrice)
FROM Production.Product;


--7. Using Aliases:
--Write a query to select the ListPrice column as Price from the Production.Product table.

SELECT ListPrice AS Price
FROM Production.Product;


--8. Using DISTINCT:
--Write a query to select distinct Color values from the Production.Product table.

SELECT DISTINCT 
Color 
FROM Production.Product;

--9. Counting Records:
--Write a query to count the number of records in the Person.Person table.

SELECT COUNT(*)
FROM Person.Person

