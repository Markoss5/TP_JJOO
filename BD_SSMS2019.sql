USE [JJOO]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 21/8/2024 08:32:11 ******/
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
/****** Object:  Table [dbo].[Deportistas]    Script Date: 21/8/2024 08:32:11 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 21/8/2024 08:32:11 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_agregar_deportista]    Script Date: 21/8/2024 08:32:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_agregar_deportista]
@Apellido varchar(200),
@Nombre varchar(200),
@FechaNacimiento date,
@Foto text,
@IdPais int,
@IdDeporte int,
@Logros varchar(500)
AS BEGIN INSERT INTO Deportistas(Apellido, Nombre, FechaNacimiento, Foto, IdPais, IdDeporte, Logros) VALUES (@Apellido, @Nombre, @FechaNacimiento, @Foto, @IdPais, @IdDeporte, @Logros); END


--Elimina el deportista de la base de datos.

GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_deportista]    Script Date: 21/8/2024 08:32:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_eliminar_deportista]
@IdDeportista int
AS BEGIN
DELETE FROM Deportistas WHERE IdDeportista = @IdDeportista; END
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_Deportistas]    Script Date: 21/8/2024 08:32:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Listar_Deportistas]
AS BEGIN SELECT * FROM Deportistas; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deporte]    Script Date: 21/8/2024 08:32:11 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_Deportes]    Script Date: 21/8/2024 08:32:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ver_Deportes]
AS BEGIN SELECT * FROM Deportes; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deportista]    Script Date: 21/8/2024 08:32:11 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_deportistas_segun_deporte]    Script Date: 21/8/2024 08:32:11 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_deportistas_segun_pais]    Script Date: 21/8/2024 08:32:11 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_pais]    Script Date: 21/8/2024 08:32:11 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_Paises]    Script Date: 21/8/2024 08:32:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ListarPaises(): Devuelve un List de Paises
CREATE PROCEDURE [dbo].[sp_ver_Paises]
AS BEGIN
SELECT * from Paises; END
GO
