USE [master]
GO
/****** Object:  Database [BancoGobi]    Script Date: 13/09/2024 10:54:16 ******/
CREATE DATABASE [BancoGobi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BancoGobi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\BancoGobi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BancoGobi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\BancoGobi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BancoGobi] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BancoGobi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BancoGobi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BancoGobi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BancoGobi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BancoGobi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BancoGobi] SET ARITHABORT OFF 
GO
ALTER DATABASE [BancoGobi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BancoGobi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BancoGobi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BancoGobi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BancoGobi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BancoGobi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BancoGobi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BancoGobi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BancoGobi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BancoGobi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BancoGobi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BancoGobi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BancoGobi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BancoGobi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BancoGobi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BancoGobi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BancoGobi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BancoGobi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BancoGobi] SET  MULTI_USER 
GO
ALTER DATABASE [BancoGobi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BancoGobi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BancoGobi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BancoGobi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BancoGobi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BancoGobi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BancoGobi] SET QUERY_STORE = ON
GO
ALTER DATABASE [BancoGobi] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BancoGobi]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/09/2024 10:54:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TodoItem]    Script Date: 13/09/2024 10:54:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TodoItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Completed] [bit] NOT NULL,
	[Finish] [bit] NOT NULL,
 CONSTRAINT [PK_TodoItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [BancoGobi] SET  READ_WRITE 
GO
