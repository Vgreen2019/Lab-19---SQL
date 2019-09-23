USE Northwind;

--1
SELECT * FROM Customers

--2
SELECT DISTINCT Country FROM Customers

--3
SELECT * FROM Customers
WHERE CustomerID LIKE '%BI%'

--4
SELECT TOP 100 *
FROM Orders

--5
SELECT * FROM Customers
WHERE PostalCode = '1010'
OR PostalCode = '3012'
OR PostalCode = '12209'
OR PostalCode = '05023'

--6
SELECT * FROM Orders
WHERE NOT ShipRegion IS NULL

--7
SELECT * FROM Customers
ORDER BY Country, City ASC

--8
INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, [Address], City, Region, PostalCode, Country, Phone, Fax)
VALUES ('HTDT', 'Quicken Loans', 'Victoria Green', 'PC Vendor Analyst', 'PO BOX 202070','Detroit', 'SW', '48202', 'USA', '313-373-0455', '248-248-5566');

--9
UPDATE Orders
SET ShipRegion = 'EuroZone'
WHERE ShipCountry = 'France'

--10
DELETE FROM [Order Details]
WHERE Quantity = 1

--11
SELECT MIN(Quantity) as MinQuantity
FROM [Order Details] 

SELECT MAX(Quantity) as MaxQuantity
FROM [Order Details] 

SELECT AVG(Quantity) as AvgQuantity
FROM [Order Details] 

--12
SELECT MIN(Quantity) as Min_Grouped_Quantity
FROM [Order Details]
GROUP BY OrderID

SELECT MAX(Quantity) as Max_Grouped_Quantity
FROM [Order Details] 
GROUP BY OrderID

SELECT AVG(Quantity) as Avg_Grouped_Quantity
FROM [Order Details] 
GROUP BY OrderID

--13
SELECT * FROM Orders
WHERE OrderID = 10290

--14 
--INNER JOIN
SELECT * FROM Orders as o INNER JOIN Customers on o.CustomerID = Customers.CustomerID

--LEFT JOIN
SELECT o.OrderDate, c.Address FROM Orders as o LEFT JOIN Customers as c on o.CustomerID = c.CustomerID

--RIGHT JOIN
SELECT o.OrderDate, c.Address FROM Orders as o RIGHT JOIN Customers as c on o.CustomerID = c.CustomerID

--15
SELECT FirstName FROM Employees
WHERE ReportsTo IS NULL

--16
SELECT * FROM Employees
WHERE ReportsTo LIKE '%Andrew%'

