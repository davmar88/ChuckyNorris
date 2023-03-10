USE [master]
GO
/****** Object:  Database [C:\CHUCKJOKES.MDF]    Script Date: 2023/02/24 09:31:44 ******/
CREATE DATABASE [C:\CHUCKJOKES.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'chuckjokes', FILENAME = N'C:\CHUCKJOKES.MDF' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'chuckjokes_log', FILENAME = N'C:\chuckjokes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\CHUCKJOKES.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET RECOVERY FULL 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET QUERY_STORE = OFF
GO
USE [C:\CHUCKJOKES.MDF]
GO
/****** Object:  Table [dbo].[joke_tb]    Script Date: 2023/02/24 09:31:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[joke_tb](
	[jokeid] [int] IDENTITY(1,1) NOT NULL,
	[categories] [nvarchar](max) NULL,
	[created_at] [nvarchar](max) NULL,
	[icon_url] [nvarchar](max) NULL,
	[id] [nvarchar](max) NOT NULL,
	[updated_at] [nvarchar](max) NULL,
	[url] [nvarchar](max) NULL,
	[value] [nvarchar](max) NOT NULL,
	[is_favorite] [tinyint] NOT NULL,
	[date_downloaded] [nvarchar](max) NULL,
 CONSTRAINT [PK_joke_tb] PRIMARY KEY CLUSTERED 
(
	[jokeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[joke_tb] ON 
GO
INSERT [dbo].[joke_tb] ([jokeid], [categories], [created_at], [icon_url], [id], [updated_at], [url], [value], [is_favorite], [date_downloaded]) VALUES (1, NULL, N'2020-01-05 13:42:28.664997', N'https://assets.chucknorris.host/img/avatar/chuck-norris.png', N'MCE-FP3KQSWx_xFKw70eJQ', N'2020-01-05 13:42:28.664997', N'https://api.chucknorris.io/jokes/MCE-FP3KQSWx_xFKw70eJQ', N'dummydata1', 1, N'2023/02/23')
GO
INSERT [dbo].[joke_tb] ([jokeid], [categories], [created_at], [icon_url], [id], [updated_at], [url], [value], [is_favorite], [date_downloaded]) VALUES (8, NULL, N'2020-01-05 13:42:28.664997', N'test', N'test', N'test', N'test', N'DummyJokeData2 from database', 1, N'2023/02/24')
GO
SET IDENTITY_INSERT [dbo].[joke_tb] OFF
GO
USE [master]
GO
ALTER DATABASE [C:\CHUCKJOKES.MDF] SET  READ_WRITE 
GO
