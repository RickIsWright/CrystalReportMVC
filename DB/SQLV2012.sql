USE [master]
GO
/****** Object:  Database [CustomerDB]    Script Date: 6/18/2019 4:24:30 PM ******/
CREATE DATABASE [CustomerDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CustomerDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CustomerDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CustomerDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CustomerDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CustomerDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CustomerDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CustomerDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CustomerDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CustomerDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CustomerDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CustomerDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CustomerDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CustomerDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CustomerDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CustomerDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CustomerDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CustomerDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CustomerDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CustomerDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CustomerDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CustomerDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CustomerDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CustomerDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CustomerDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CustomerDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CustomerDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CustomerDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CustomerDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CustomerDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CustomerDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CustomerDB] SET  MULTI_USER 
GO
ALTER DATABASE [CustomerDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CustomerDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CustomerDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CustomerDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CustomerDB]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 6/18/2019 4:24:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[CustomerEmail] [varchar](50) NULL,
	[CustomerZipCode] [varchar](50) NULL,
	[CustomerCountry] [varchar](50) NULL,
	[CustomerCity] [varchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerEmail], [CustomerZipCode], [CustomerCountry], [CustomerCity]) VALUES (1, N'Rahin', N'rahin@gmail.com', N'1230', N'Bangladesh', N'Dhaka')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerEmail], [CustomerZipCode], [CustomerCountry], [CustomerCity]) VALUES (2, N'Rimon', N'rimon@gmail.com', N'1760', N'Bangladesh', N'Gazipur')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerEmail], [CustomerZipCode], [CustomerCountry], [CustomerCity]) VALUES (3, N'Adnan', N'adnan@gmail.com', N'1520', N'Bangladesh', N'Maymansingha')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerEmail], [CustomerZipCode], [CustomerCountry], [CustomerCity]) VALUES (4, N'Shohan', N'shohan@yahoo.com', N'1863', N'Bangladesh', N'Tangail')
INSERT [dbo].[Customers] ([CustomerID], [CustomerName], [CustomerEmail], [CustomerZipCode], [CustomerCountry], [CustomerCity]) VALUES (5, N'Badhon', N'badhon@gmail.com', N'1365', N'Bangladesh', N'Norail')
USE [master]
GO
ALTER DATABASE [CustomerDB] SET  READ_WRITE 
GO
