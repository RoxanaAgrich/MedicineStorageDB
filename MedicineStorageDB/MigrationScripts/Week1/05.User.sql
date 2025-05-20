USE MedicineStorageDB
go 
-- Bước 1: Kiểm tra nếu cột Role tồn tại và đang là NVARCHAR (hoặc kiểu không phải INT)
IF EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = 'User' AND COLUMN_NAME = 'Role' AND DATA_TYPE <> 'int'
)
BEGIN
    -- Bước 2: Chuẩn hóa dữ liệu thành giá trị số (1 hoặc 2)
    UPDATE [User]
    SET Role = CASE 
        WHEN Role = 'Admin' THEN '1'
        ELSE '2'
    END;

    -- Bước 3: Chuyển kiểu Role từ NVARCHAR → INT, NOT NULL
    ALTER TABLE [User]
    ALTER COLUMN Role INT NOT NULL;
END;