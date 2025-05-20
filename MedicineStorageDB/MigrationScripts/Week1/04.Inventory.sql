USE [MedicineStorageDB]
GO
IF NOT EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES 
    WHERE TABLE_NAME = 'Inventory' AND TABLE_SCHEMA = 'dbo'
)
BEGIN
    CREATE TABLE Inventory (
        Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        MedicineId INT NOT NULL UNIQUE,
        QuantityInStock INT NOT NULL,
        LastUpdated DATETIME NOT NULL
    );
END
GO
IF NOT EXISTS (SELECT 1 FROM dbo.Inventory WHERE MedicineId = 1)
INSERT INTO dbo.Inventory (MedicineId, QuantityInStock, LastUpdated)
VALUES (1 , 100, GETDATE());

GO
IF NOT EXISTS (SELECT 1 FROM dbo.Inventory WHERE MedicineId = 3)
INSERT INTO dbo.Inventory (MedicineId, QuantityInStock, LastUpdated)
VALUES (3 , 120, GETDATE());

GO
IF NOT EXISTS (SELECT 1 FROM dbo.Inventory WHERE MedicineId = 4)
INSERT INTO dbo.Inventory (MedicineId, QuantityInStock, LastUpdated)
VALUES (4 , 150, GETDATE());

GO
IF NOT EXISTS (SELECT 1 FROM dbo.Inventory WHERE MedicineId = 5)
INSERT INTO dbo.Inventory (MedicineId, QuantityInStock, LastUpdated)
VALUES (5 , 130, GETDATE());

GO
IF NOT EXISTS (SELECT 1 FROM dbo.Inventory WHERE MedicineId = 6)
INSERT INTO dbo.Inventory (MedicineId, QuantityInStock, LastUpdated)
VALUES (6 ,  90, GETDATE());

GO
IF NOT EXISTS (SELECT 1 FROM dbo.Inventory WHERE MedicineId = 7)
INSERT INTO dbo.Inventory (MedicineId, QuantityInStock, LastUpdated)
VALUES (7 , 110, GETDATE());

GO
IF NOT EXISTS (SELECT 1 FROM dbo.Inventory WHERE MedicineId = 8)
INSERT INTO dbo.Inventory (MedicineId, QuantityInStock, LastUpdated)
VALUES (8 ,  80, GETDATE());

GO
IF NOT EXISTS (SELECT 1 FROM dbo.Inventory WHERE MedicineId = 9)
INSERT INTO dbo.Inventory (MedicineId, QuantityInStock, LastUpdated)
VALUES (9 , 140, GETDATE());

GO
IF NOT EXISTS (SELECT 1 FROM dbo.Inventory WHERE MedicineId = 10)
INSERT INTO dbo.Inventory (MedicineId, QuantityInStock, LastUpdated)
VALUES (10, 160, GETDATE());

GO
IF NOT EXISTS (SELECT 1 FROM dbo.Inventory WHERE MedicineId = 11)
INSERT INTO dbo.Inventory (MedicineId, QuantityInStock, LastUpdated)
VALUES (11, 100, GETDATE());

GO