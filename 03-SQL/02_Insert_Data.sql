-- DV Retail Store Inventory System
-- Sample Data Insertion Script

-- Products
INSERT INTO Products
(ProductID, ProductName, Category, Supplier, UnitPrice, ReorderLevel)
VALUES
('P001', 'Premium Rice 5kg', 'Grocery', 'Supplier A', 320.00, 10),
('P002', 'Coffee 250g', 'Grocery', 'Supplier B', 180.00, 15),
('P003', 'Bath Soap', 'Personal Care', 'Supplier C', 75.00, 10),
('P004', 'Shampoo 250ml', 'Personal Care', 'Supplier C', 145.00, 10),
('P005', 'USB Cable', 'Electronics', 'Supplier D', 120.00, 8),
('P006', 'Wireless Mouse', 'Electronics', 'Supplier D', 450.00, 5),
('P007', 'Notebook', 'Stationery', 'Supplier E', 55.00, 20),
('P008', 'Ballpen', 'Stationery', 'Supplier E', 25.00, 30),
('P009', 'Mineral Water 1L', 'Beverage', 'Supplier F', 35.00, 15),
('P010', 'Biscuits', 'Grocery', 'Supplier B', 50.00, 20);

-- Inventory
INSERT INTO Inventory
(InventoryID, ProductID, StockQuantity, LastUpdated)
VALUES
('INV001', 'P001', 25, '2026-09-01'),
('INV002', 'P002', 8, '2026-09-01'),
('INV003', 'P003', 35, '2026-09-01'),
('INV004', 'P004', 5, '2026-09-01'),
('INV005', 'P005', 12, '2026-09-01'),
('INV006', 'P006', 3, '2026-09-01'),
('INV007', 'P007', 45, '2026-09-01'),
('INV008', 'P008', 50, '2026-09-01'),
('INV009', 'P009', 10, '2026-09-01'),
('INV010', 'P010', 25, '2026-09-01');

-- Sales
INSERT INTO Sales
(SaleID, ProductID, SaleDate, QuantitySold, UnitPrice)
VALUES
('S001', 'P001', '2026-09-01', 3, 320.00),
('S002', 'P002', '2026-09-01', 2, 180.00),
('S003', 'P003', '2026-09-02', 5, 75.00),
('S004', 'P001', '2026-09-02', 2, 320.00),
('S005', 'P005', '2026-09-03', 4, 120.00),
('S006', 'P006', '2026-09-03', 2, 450.00),
('S007', 'P007', '2026-09-04', 10, 55.00),
('S008', 'P008', '2026-09-04', 8, 25.00),
('S009', 'P009', '2026-09-05', 6, 35.00),
('S010', 'P010', '2026-09-05', 5, 50.00);