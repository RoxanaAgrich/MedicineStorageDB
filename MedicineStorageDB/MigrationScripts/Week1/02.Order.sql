USE MedicineStorageDB
GO 
IF COL_LENGTH('Order', 'Note') IS NULL
BEGIN
    ALTER TABLE [Order]
    ADD Note NVARCHAR(MAX) NULL;
END;

IF COL_LENGTH('Order', 'Status') IS NULL
BEGIN
    ALTER TABLE [Order]
    ADD Status INT NOT NULL 
        CONSTRAINT DF_Order_Status DEFAULT 1;
END;

IF COL_LENGTH('Order', 'ExpectedDate') IS NULL
BEGIN
    ALTER TABLE [Order]
    ADD ExpectedDate DATETIME NOT NULL 
        CONSTRAINT DF_Order_ExpectedDate DEFAULT (DATEADD(DAY, 3, GETDATE()));
END;

IF COL_LENGTH('Order', 'PaymentType') IS NULL
BEGIN
    ALTER TABLE [Order]
    ADD PaymentType INT NOT NULL 
        CONSTRAINT DF_Order_PaymentType DEFAULT 2;
END;

IF COL_LENGTH('Order', 'IsPaid') IS NULL
BEGIN
    ALTER TABLE [Order]
    ADD IsPaid BIT NOT NULL 
        CONSTRAINT DF_Order_IsPaid DEFAULT 1;
END;