USE MedicineStorageDB
GO 
IF COL_LENGTH('User', 'Username') IS NULL
BEGIN
    ALTER TABLE [User]
    ADD Username NVARCHAR(255) NULL;
END;

IF COL_LENGTH('User', 'Email') IS NULL
BEGIN
    ALTER TABLE [User]
    ADD Email NVARCHAR(255) NULL;
END;

IF COL_LENGTH('User', 'Phone') IS NULL
BEGIN
    ALTER TABLE [User]
    ADD Phone NVARCHAR(50) NULL;
END;

IF COL_LENGTH('User', 'Password') IS NULL
BEGIN
    ALTER TABLE [User]
    ADD Password NVARCHAR(255) NULL;
END;

IF COL_LENGTH('User', 'IsActive') IS NULL
BEGIN
    ALTER TABLE [User]
    ADD IsActive BIT NOT NULL 
        CONSTRAINT DF_User_IsActive DEFAULT 1;
END;

IF COL_LENGTH('User', 'Adress') IS NULL
BEGIN
    ALTER TABLE [User]
    ADD Adress NVARCHAR(MAX) NULL;
END;

IF COL_LENGTH('User', 'WardId') IS NULL
BEGIN
    ALTER TABLE [User]
    ADD WardId INT NULL;
END;

IF COL_LENGTH('User', 'DistrictId') IS NULL
BEGIN
    ALTER TABLE [User]
    ADD DistrictId INT NULL;
END;

IF COL_LENGTH('User', 'ProvinceId') IS NULL
BEGIN
    ALTER TABLE [User]
    ADD ProvinceId INT NULL;
END;