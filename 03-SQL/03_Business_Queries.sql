-- DV Retail Store Inventory System
-- Business Reporting Queries

-- 1. View all products
SELECT
    ProductID,
    ProductName,
    Category,
    Supplier,
    UnitPrice,
    ReorderLevel
FROM Products
ORDER BY ProductID;


-- 2. View current inventory
SELECT
    p.ProductID,
    p.ProductName,
    p.Category,
    i.StockQuantity,
    i.LastUpdated
FROM Products p
JOIN Inventory i
    ON p.ProductID = i.ProductID
ORDER BY p.ProductID;


-- 3. Identify low-stock products
SELECT
    p.ProductID,
    p.ProductName,
    p.Category,
    i.StockQuantity,
    p.ReorderLevel
FROM Products p
JOIN Inventory i
    ON p.ProductID = i.ProductID
WHERE i.StockQuantity <= p.ReorderLevel
ORDER BY i.StockQuantity ASC;


-- 4. Sales by product
SELECT
    p.ProductName,
    SUM(s.QuantitySold) AS TotalQuantitySold,
    SUM(s.QuantitySold * s.UnitPrice) AS TotalSales
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY TotalSales DESC;


-- 5. Total sales
SELECT
    SUM(QuantitySold * UnitPrice) AS TotalSales
FROM Sales;


-- 6. Sales by category
SELECT
    p.Category,
    SUM(s.QuantitySold) AS TotalQuantitySold,
    SUM(s.QuantitySold * s.UnitPrice) AS TotalSales
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalSales DESC;


-- 7. Inventory value by product
SELECT
    p.ProductName,
    i.StockQuantity,
    p.UnitPrice,
    i.StockQuantity * p.UnitPrice AS InventoryValue
FROM Inventory i
JOIN Products p
    ON i.ProductID = p.ProductID
ORDER BY InventoryValue DESC;


-- 8. Total inventory value
SELECT
    SUM(i.StockQuantity * p.UnitPrice) AS TotalInventoryValue
FROM Inventory i
JOIN Products p
    ON i.ProductID = p.ProductID;