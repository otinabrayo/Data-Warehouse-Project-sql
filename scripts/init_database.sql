/*
=============================================================
Create Database and Schemas
=============================================================
Purpose:
    This script creates a new 'DataWarehouse' database. 
    If the database already exists, it is deleted and recreated. 
    It also sets up three schemas: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will erase the 'DataWarehouse' database if it exists, 
    permanently deleting all its data. Make sure to back up any important data before proceeding.
*/

-- Drop and recreate the 'DataWarehouse' database if it exists
Use master;

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse
END;
GO

-- Create Database 'Data Warehouse'
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Creating the schemas
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
