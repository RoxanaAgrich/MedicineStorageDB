USE MedicineStorageDB
go 
-- Thêm cột Description nếu chưa có
IF COL_LENGTH('Medicine', 'Description') IS NULL
BEGIN
    ALTER TABLE Medicine
    ADD Description NVARCHAR(MAX) NULL;
END;

-- Thêm cột CreatedDate nếu chưa có
IF COL_LENGTH('Medicine', 'CreatedDate') IS NULL
BEGIN
    ALTER TABLE Medicine
    ADD CreatedDate DATETIME NOT NULL 
        CONSTRAINT DF_Medicine_CreatedDate DEFAULT GETDATE();
END;

-- Thêm cột UpdatedDate nếu chưa có
IF COL_LENGTH('Medicine', 'UpdatedDate') IS NULL
BEGIN
    ALTER TABLE Medicine
    ADD UpdatedDate DATETIME NULL;
END;

-- Thêm cột IsActive nếu chưa có
IF COL_LENGTH('Medicine', 'IsActive') IS NULL
BEGIN
    ALTER TABLE Medicine
    ADD IsActive BIT NOT NULL 
        CONSTRAINT DF_Medicine_IsActive DEFAULT 1;
END;

 
