CREATE DATABASE JJOO;
USE [JJOO]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 15/8/2024 15:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportes](
	[IdDeporte] [int] NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Foto] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportistas]    Script Date: 15/8/2024 15:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportistas](
	[IdDeportista] [int] NOT NULL,
	[Apellido] [varchar](200) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [text] NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdDeporte] [int] NOT NULL,
 CONSTRAINT [PK_Deportistas] PRIMARY KEY CLUSTERED 
(
	[IdDeportista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 15/8/2024 15:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[IdPais] [int] NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Bandera] [text] NOT NULL,
	[FechaFundacion] [date] NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_agregar_deportista]    Script Date: 15/8/2024 15:58:24 ******/
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
@IdDeporte int
AS BEGIN INSERT INTO Deportistas(IdDeportista, Apellido, Nombre, FechaNacimiento, Foto, IdPais, IdDeporte) VALUES (@IdDeportista, @Apellido, @Nombre, @FechaNacimiento, @Foto, @IdPais, @IdDeporte); END


--Elimina el deportista de la base de datos.

GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_deportista]    Script Date: 15/8/2024 15:58:24 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_deporte]    Script Date: 15/8/2024 15:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--VerInfoDeporte(int idDeporte): devuelve un objeto Deporte

CREATE PROCEDURE [dbo].[sp_ver_deporte]
@IdDeporte int
AS BEGIN
SELECT IdDeporte, Nombre, Foto FROM Deportes WHERE IdDeporte = @IdDeporte; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_Deportes]    Script Date: 15/8/2024 15:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ver_Deportes]
AS BEGIN SELECT * FROM Deportes; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deportista]    Script Date: 15/8/2024 15:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--VerInfoDeportista(int idDeportista): Devuelve un objeto Deportista

CREATE PROCEDURE [dbo].[sp_ver_deportista]
@IdDeportista int
AS BEGIN
SELECT IdDeportista, Apellido, Nombre, FechaNacimiento, Foto, IdPais, IdDeporte FROM Deportistas WHERE IdDeportista = @IdDeportista; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deportistas_segun_deporte]    Script Date: 15/8/2024 15:58:24 ******/
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
SELECT dtas.Nombre
FROM Deportistas dtas
INNER JOIN Deportes dtes ON dtas.IdDeporte = @Id_Deporte; END

--ListarDeportistas(int idPais): Devuelve un List de Deportistas en base a un país

GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deportistas_segun_pais]    Script Date: 15/8/2024 15:58:24 ******/
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
SELECT dtas.Nombre
FROM Deportistas dtas
INNER JOIN Paises p ON dtas.IdPais = @Id_Pais; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_pais]    Script Date: 15/8/2024 15:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--VerInfoPais(int idPais): devuelve un objeto Pais

CREATE PROCEDURE [dbo].[sp_ver_pais]
@IdPais int
AS BEGIN
SELECT IdPais, Nombre, Bandera, FechaFundacion FROM Paises WHERE IdPais = @IdPais; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_Paises]    Script Date: 15/8/2024 15:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ListarPaises(): Devuelve un List de Paises
CREATE PROCEDURE [dbo].[sp_ver_Paises]
AS BEGIN
SELECT IdPais, Nombre from Paises; END
GO
