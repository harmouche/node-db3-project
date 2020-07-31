-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT product.ProductName,
       category.CategoryName
  FROM product
       JOIN
       category ON product.CategoryId = category.Id
 GROUP BY product.ProductName;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT [order].Id,
       shipper.CompanyName
  FROM [order]
       JOIN
       shipper ON [order].ShipVia = shipper.Id
 WHERE [order].OrderDate < '2012-08-09'
 GROUP BY [order].Id;
;


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT product.ProductName,
       orderdetail.Quantity
  FROM product
       JOIN
       orderdetail ON product.Id = orderdetail.ProductId
 WHERE orderdetail.OrderId = 10251
 ORDER BY product.ProductName;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [order].Id as "OrderID",
       customer.CompanyName as "Customer's Company Name",
       employee.LastName as "Employee's LastName"
  FROM [order]
       JOIN
       customer ON customer.Id = [order].CustomerId,
       employee ON employee.Id = [order].EmployeeId
ORDER BY [order].Id;
