USE [master]
GO

/****** Object:  Database [akka_persistence_tests]    Script Date: 08.04.2016 08:04:00 ******/
CREATE DATABASE [akka_persistence_tests]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'akka_persistence_tests', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\akka_persistence_tests.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'akka_persistence_tests_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\akka_persistence_tests_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [akka_persistence_tests] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [akka_persistence_tests].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [akka_persistence_tests] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET ARITHABORT OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [akka_persistence_tests] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [akka_persistence_tests] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET  DISABLE_BROKER 
GO

ALTER DATABASE [akka_persistence_tests] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [akka_persistence_tests] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [akka_persistence_tests] SET  MULTI_USER 
GO

ALTER DATABASE [akka_persistence_tests] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [akka_persistence_tests] SET DB_CHAINING OFF 
GO

ALTER DATABASE [akka_persistence_tests] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [akka_persistence_tests] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [akka_persistence_tests] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [akka_persistence_tests] SET  READ_WRITE 
GO


