-- 1 The customers whose country is Italy, France or Austria.
SELECT *
FROM Customers
WHERE country IN ('Italy', 'France', 'Austria');


-- 2 The customers whose address contains the word 'rue'.

SELECT Address
FROM Customers
WHERE address LIKE '%rue%';

-- 3 The customers whose City is at least 5 characters long.

SELECT City
FROM Customers
where length(City)>5;

-- 4 The products with ID larger than 20.

SELECT *
FROM Products
where ID >20;


-- 5 The (unique) customers IDs that have placed at least an order.

SELECT *
FROM Orders
group by CustomerId;



-- 6 The customers IDs that have placed at least 150 orders.

SELECT CustomerId
FROM Orders
GROUP BY CustomerID
HAVING COUNT(CustomerId) >= 150;


-- 7 For each order, the total amount of products (quantities) sold.

SELECT OrderId, SUM(quantity) As "total quantity"
FROM OrderDetails
group by OrderId;
-- For each order, the total amount of products (quantities) sold and the average discount offered if non-zero. The result must be one table.

SELECT OrderId, SUM(quantity) As "total quantity" , avg(discount) As "Average"
FROM OrderDetails
where Discount>0
group by OrderId;

-- For each order, the total price (in units).

SELECT ProductId,avg(quantity)
from OrderDetails

-- For each product, the total amount of units sold.
-- For each product, the average units sold per order.
