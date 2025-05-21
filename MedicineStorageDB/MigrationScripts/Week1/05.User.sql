USE [MedicineStorageDB]
GO
IF EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = 'User' AND COLUMN_NAME = 'Role' AND DATA_TYPE <> 'int'
)
BEGIN
    UPDATE [User]
    SET [Role] = CASE 
        WHEN [Role] = 'Admin' THEN '1'
        ELSE '2'
    END;

    ALTER TABLE [User]
    ALTER COLUMN Role INT NOT NULL;
END;