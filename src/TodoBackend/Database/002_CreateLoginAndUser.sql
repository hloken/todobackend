USE [master]
GO

CREATE LOGIN [akkadotnet] WITH PASSWORD=N'akkadotnet', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER SERVER ROLE [dbcreator] ADD MEMBER [akkadotnet]
GO


USE [akka_persistence_tests]
GO

CREATE USER [akkadotnet] FOR LOGIN [akkadotnet] WITH DEFAULT_SCHEMA=[dbo]
GO

EXEC sp_addrolemember N'db_owner', N'akkadotnet'
GO