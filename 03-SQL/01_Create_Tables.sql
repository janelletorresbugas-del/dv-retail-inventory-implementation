-- DV Retail Store Inventory System
-- Database Table Creation Script

CREATE TABLE Products (
    ProductID TEXT PRIMARY KEY,
    ProductName TEXT NOT NULL,
    Category TEXT NOT NULL,
    Supplier TEXT,
    UnitPrice REAL NOT NULL,
    ReorderLevel INTEGER NOT NULL
);

CREATE TABLE Inventory (
    InventoryID TEXT PRIMARY KEY,
    ProductID TEXT NOT NULL,
    StockQuantity INTEGER NOT NULL,
    LastUpdated TEXT NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Sales (
    SaleID TEXT PRIMARY KEY,
    ProductID TEXT NOT NULL,
    SaleDate TEXT NOT NULL,
    QuantitySold INTEGER NOT NULL,
    UnitPrice REAL NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);