-- the contents of the table product
select * 
from Products;

-- the values of the ID (primary key) of products
SELECT ID
from Products;

-- the values of the contactname and contacttitle fields of customer
SELECT ContactName,ContactTitle
FROM Customers;


-- the employees with a NULL ReportsTo
SELECT *
from Employees
WHERE ReportsTo is NULL;

-- the total number of orders
SELECT count(ID)
from Orders;

-- the number of orders for each customer
SELECT CustomerId, COUNT(Id) AS NumberOfOrders
FROM Orders
GROUP BY CustomerId;


-- for each customer, the number of orders such that ShipVia is 2.
SELECT CustomerId, COUNT(Id) AS NumberOfOrders
FROM Orders
WHERE ShipVia = 2
GROUP BY CustomerId;

-- the customers that are in Mexico and do not have a fax.

select *
from Customers
where Country = "Mexico" AND Fax is NULL;
