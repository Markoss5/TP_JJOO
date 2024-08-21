USE [master]
GO
/****** Object:  Database [JJOO]    Script Date: 20/8/2024 21:25:12 ******/
CREATE DATABASE [JJOO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JJOO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\JJOO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JJOO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\JJOO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [JJOO] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JJOO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JJOO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JJOO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JJOO] SET ARITHABORT OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JJOO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JJOO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JJOO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JJOO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JJOO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JJOO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JJOO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JJOO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JJOO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JJOO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JJOO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JJOO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JJOO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JJOO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JJOO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JJOO] SET RECOVERY FULL 
GO
ALTER DATABASE [JJOO] SET  MULTI_USER 
GO
ALTER DATABASE [JJOO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JJOO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JJOO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JJOO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JJOO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JJOO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'JJOO', N'ON'
GO
ALTER DATABASE [JJOO] SET QUERY_STORE = ON
GO
ALTER DATABASE [JJOO] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [JJOO]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 20/8/2024 21:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportes](
	[IdDeporte] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Foto] [text] NOT NULL,
	[Descripcion] [varchar](255) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportistas]    Script Date: 20/8/2024 21:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportistas](
	[IdDeportista] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](200) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [text] NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdDeporte] [int] NOT NULL,
	[Logros] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Deportistas] PRIMARY KEY CLUSTERED 
(
	[IdDeportista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 20/8/2024 21:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Bandera] [text] NOT NULL,
	[FechaFundacion] [date] NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_agregar_deportista]    Script Date: 20/8/2024 21:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Agregar un deportista a la base de datos

CREATE PROCEDURE [dbo].[sp_agregar_deportista] 
@IdDeportista int,
@Apellido varchar(200),
@Nombre varchar(200),
@FechaNacimiento date,
@Foto text,
@IdPais int,
@IdDeporte int,
@Logros varchar(500)
AS BEGIN INSERT INTO Deportistas(IdDeportista, Apellido, Nombre, FechaNacimiento, Foto, IdPais, IdDeporte, Logros) VALUES (@IdDeportista, @Apellido, @Nombre, @FechaNacimiento, @Foto, @IdPais, @IdDeporte, @Logros); END


--Elimina el deportista de la base de datos.

GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_deportista]    Script Date: 20/8/2024 21:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Agregar un deportista a la base de datos

--CREATE PROCEDURE sp_agregar_deportista 
--@IdDeportista int,
--@Apellido varchar(200),
--@Nombre varchar(200),
--@FechaNacimiento date,
--@Foto text,
--@IdPais int,
--@IdDeporte int
--AS BEGIN INSERT INTO Deportistas(IdDeportista, Apellido, Nombre, FechaNacimiento, Foto, IdPais, IdDeporte) VALUES (@IdDeportista, @Apellido, @Nombre, @FechaNacimiento, @Foto, @IdPais, @IdDeporte); END


--Elimina el deportista de la base de datos.

CREATE PROCEDURE [dbo].[sp_eliminar_deportista]
@IdDeportista int
AS BEGIN
DELETE FROM Deportistas WHERE IdDeportista = @IdDeportista; END
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_Deportistas]    Script Date: 20/8/2024 21:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Listar_Deportistas]
AS BEGIN SELECT * FROM Deportistas; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deporte]    Script Date: 20/8/2024 21:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--VerInfoDeporte(int idDeporte): devuelve un objeto Deporte

CREATE PROCEDURE [dbo].[sp_ver_deporte]
@IdDeporte int
AS BEGIN
SELECT * FROM Deportes WHERE IdDeporte = @IdDeporte; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_Deportes]    Script Date: 20/8/2024 21:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ver_Deportes]
AS BEGIN SELECT * FROM Deportes; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deportista]    Script Date: 20/8/2024 21:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--VerInfoDeportista(int idDeportista): Devuelve un objeto Deportista

CREATE PROCEDURE [dbo].[sp_ver_deportista]
@IdDeportista int
AS BEGIN
SELECT * FROM Deportistas WHERE IdDeportista = @IdDeportista; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deportistas_segun_deporte]    Script Date: 20/8/2024 21:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ListarPaises(): Devuelve un List de Paises
--CREATE PROCEDURE sp_ver_Paises
--AS BEGIN
--SELECT IdPais, Nombre from Paises; END

--ListarDeportistas(int idDeporte): Devuelve un List de Deportistas en base a un deporte
CREATE PROCEDURE [dbo].[sp_ver_deportistas_segun_deporte]
@Id_Deporte int
AS BEGIN
SELECT *
FROM Deportistas dtas
INNER JOIN Deportes dtes ON dtas.IdDeporte = @Id_Deporte; END

--ListarDeportistas(int idPais): Devuelve un List de Deportistas en base a un país

GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deportistas_segun_pais]    Script Date: 20/8/2024 21:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ListarPaises(): Devuelve un List de Paises
--CREATE PROCEDURE sp_ver_Paises
--AS BEGIN
--SELECT IdPais, Nombre from Paises; END

--ListarDeportistas(int idDeporte): Devuelve un List de Deportistas en base a un deporte
--CREATE PROCEDURE sp_ver_deportistas_segun_deporte
--@Id_Deporte int
--AS BEGIN
--SELECT dtas.Nombre
--FROM Deportistas dtas
--INNER JOIN Deportes dtes ON dtas.IdDeporte = @Id_Deporte; END

--ListarDeportistas(int idPais): Devuelve un List de Deportistas en base a un país
CREATE PROCEDURE [dbo].[sp_ver_deportistas_segun_pais]
@Id_Pais int
AS BEGIN
SELECT *
FROM Deportistas dtas
INNER JOIN Paises p ON dtas.IdPais = @Id_Pais; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_pais]    Script Date: 20/8/2024 21:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--VerInfoPais(int idPais): devuelve un objeto Pais

CREATE PROCEDURE [dbo].[sp_ver_pais]
@IdPais int
AS BEGIN
SELECT * FROM Paises WHERE IdPais = @IdPais; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_Paises]    Script Date: 20/8/2024 21:25:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ListarPaises(): Devuelve un List de Paises
CREATE PROCEDURE [dbo].[sp_ver_Paises]
AS BEGIN
SELECT * from Paises; END
GO
USE [master]
GO
ALTER DATABASE [JJOO] SET  READ_WRITE 
GO
