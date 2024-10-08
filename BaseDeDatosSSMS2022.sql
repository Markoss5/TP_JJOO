USE [master]
GO
/****** Object:  Database [JJOO]    Script Date: 22/8/2024 23:26:05 ******/
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
/****** Object:  Table [dbo].[Deportes]    Script Date: 22/8/2024 23:26:07 ******/
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
/****** Object:  Table [dbo].[Deportistas]    Script Date: 22/8/2024 23:26:07 ******/
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
/****** Object:  Table [dbo].[Paises]    Script Date: 22/8/2024 23:26:07 ******/
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
SET IDENTITY_INSERT [dbo].[Deportes] ON 

INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (1, N'Skateboard', N'https://phantom-marca.unidadeditorial.es/e3e522142ccfebcc7a4f08a4672ff60c/f/webp/assets/multimedia/imagenes/2021/07/25/16271789591835.jpg', N'El skateboarding es una actividad deportiva y recreativa donde los patinadores montan y realizan trucos sobre una tabla llamada skateboard.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (2, N'Natación ', N'https://media.a24.com/p/2b8ef7880a0f2f4972a076a29e38798c/adjuntos/296/imagenes/008/760/0008760071/1200x675/smart/juegos-olimpicos-natacionpng.png', N'La natación es el arte de sostenerse y avanzar, usando los brazos y las piernas, sobre o bajo el agua.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (3, N'Triatlón', N'https://triatletasenred.sport.es/wp-content/uploads/pekin-2.jpg', N'El triatlon es una competición individual que comprende tres pruebas específicas, especialmente la de natación, carrera a pie y ciclismo en carretera')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (4, N'Atletismo', N'https://hips.hearstapps.com/hmg-prod/images/minimas-atletismo-juegos-olimpicos-paris-2024-1671533472.jpeg', N'El atletismo es un deporte de competencias individuales y por equipos, que abarca un gran número de pruebas que pueden tener lugar en pista cubierta o al aire libre.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (5, N'Fútbol', N'https://files.antena2.com/antena2/public/styles/imagen_despliegue/public/2019-02/james_0.jpg.webp?VersionId=9U_RdS0xGyVwyjONub6W4wbXFRpykYdg&itok=_yBt7zwG', N'El fútbol es un deporte de equipo en el que dos equipos de once jugadores cada uno intentan marcar goles en la portería del adversario usando principalmente los pies.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (6, N'Baloncesto', N'https://phantom-marca-mx.unidadeditorial.es/cac33bf9261da4a9f0f0cf9afc2356ee/resize/1200/f/webp/mx/assets/multimedia/imagenes/2023/12/20/17030956821093.jpg', N'El baloncesto es un deporte en el que dos equipos de cinco jugadores cada uno intentan anotar puntos encestando una pelota en el aro del equipo contrario.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (7, N'Voleibol', N'https://e00-xlk-ue-marca.uecdn.es/uploads/2024/07/15/17026359977576.jpeg', N'El voleibol es un deporte en el que dos equipos de seis jugadores intentan pasar un balón por encima de una red para que toque el suelo del campo contrario.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (8, N'Tenis', N'https://www.atptour.com/-/media/images/news/2017-photo-upload/winston-salem-2024-carreno-miercoles.jpg', N'El tenis es un deporte en el que se utilizan raquetas para golpear una pelota sobre una red, con el objetivo de que el rival no pueda devolverla.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (9, N'Ciclismo', N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Military_cyclists_in_pace_line.jpg/1200px-Military_cyclists_in_pace_line.jpg', N'El ciclismo es un deporte en el que los atletas compiten montando bicicletas en carreras en carretera, pista o montaña.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (10, N'Golf', N'https://i0.wp.com/deporteargentinoplus.com.ar/wp-content/uploads/2024/08/golf-juegos-olimpicos-paris-alejandro-tosti.jpg?fit=600%2C400&ssl=1', N'El golf es un deporte en el que los jugadores intentan introducir una pelota en una serie de hoyos en el menor número de golpes posible.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (11, N'Rugby', N'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/primary/lu63j0xbf8e59ayvqjbi', N'El rugby es un deporte de equipo en el que los jugadores intentan llevar un balón ovalado a la zona de anotación del adversario mediante carreras, pases y tackles.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (12, N'Esquí', N'https://www.civitatis.com/blog/wp-content/uploads/2021/10/estaciones-esqui-mundo.jpg', N'El esquí es un deporte en el que los atletas descienden por pendientes de nieve utilizando esquís para deslizarse.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (13, N'Boxeo', N'https://s2.sportstatics.com/relevo/www/multimedia/202309/13/media/cortadas/boxeo-olimpico-RO2IqmUamyDZVVAsnmlw8yM-1200x648@Relevo.jpeg', N'El boxeo es un deporte de combate en el que dos personas se enfrentan en un ring intentando golpearse con guantes en un número determinado de asaltos.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (14, N'Judo', N'https://medac.es/sites/default/files/blog/destacadas/tecnicas-de-judo.jpg', N'El judo es un arte marcial en el que los practicantes utilizan técnicas de lanzamiento y de control en el suelo para someter al adversario.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (15, N'Lucha libre', N'https://storage.googleapis.com/static.elsoldemexico.com.mx/elesto/2023/09/La-Lucha-Libre-cumplira-90-anos-en-nuestro-pais.png', N'La lucha libre es un deporte de combate en el que los competidores utilizan técnicas de agarre y derribo para vencer a su oponente en un combate.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (16, N'Surf', N'https://img.olympics.com/images/image/private/t_social_share_thumb/f_auto/primary/npvokfsuku44obof2abt', N'El surf es un deporte en el que los atletas montan olas en una tabla, utilizando el movimiento del agua para deslizarse y realizar maniobras.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (17, N'Hockey sobre hielo', N'https://dims.apnews.com/dims4/default/4cd500f/2147483647/strip/false/crop/3000x2000+0+0/resize/1486x991!/quality/90/?url=https%3A%2F%2Fstorage.googleapis.com%2Fafs-prod%2Fmedia%2Fe809d516b9b54047a678837cd12cb6af%2F3000.jpeg', N'El hockey sobre hielo es un deporte de equipo en el que dos equipos de seis jugadores intentan marcar goles en la portería rival utilizando un disco de goma.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (18, N'Karate', N'https://phantom-marca.unidadeditorial.es/d191a6cfd960521a56534ced60af42bc/resize/1200/f/webp/assets/multimedia/imagenes/2023/10/18/16976294751377.jpg', N'El karate es un arte marcial en el que se utilizan técnicas de golpeo, patadas y bloqueos para defenderse y atacar al oponente.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (19, N'Taekwondo', N'https://phantom-marca.unidadeditorial.es/d191a6cfd960521a56534ced60af42bc/resize/1200/f/webp/assets/multimedia/imagenes/2023/10/18/16976294751377.jpg', N'El taekwondo es un arte marcial coreano que se centra en técnicas de patadas y golpes rápidos, así como en formas o katas.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (20, N'Gimnasia artística', N'https://concepto.de/wp-content/uploads/2022/04/gimnasia-artistica-e1649648850992.jpg', N'La gimnasia artística es un deporte en el que los atletas realizan rutinas acrobáticas y de fuerza en diferentes aparatos, como la barra fija y el suelo.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (21, N'Skateboarding', N'https://phantom-marca.unidadeditorial.es/e3e522142ccfebcc7a4f08a4672ff60c/f/webp/assets/multimedia/imagenes/2021/07/25/16271789591835.jpg', N'El skateboarding es un deporte en el que los practicantes realizan trucos y maniobras sobre una tabla con ruedas.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (22, N'Softbol', N'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/primary/ysgf7dtufhcks3gr9tve', N'El softbol es un deporte similar al béisbol, pero con una pelota más grande y se juega en un campo con bases y un bate.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (23, N'Handbol', N'https://img.olympics.com/images/image/private/t_social_share_thumb/f_auto/primary/lxaqle6x0ho1li421tkg', N'El handbol es un deporte en el que dos equipos de siete jugadores intentan marcar goles lanzando un balón a la portería rival con las manos.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (24, N'Pesas', N'https://media.tycsports.com/files/2021/07/13/306476/halterofilia-juegos-olimpicos_862x485.jpg', N'El levantamiento de pesas es un deporte en el que los atletas levantan cargas pesadas en diferentes movimientos para obtener la máxima fuerza y técnica.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (25, N'Bádminton', N'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/v1537106227/primary/qywhtgshophwcheja7fu', N'El bádminton es un deporte de raqueta en el que los jugadores intentan pasar un volante sobre una red, evitando que el adversario lo devuelva.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (26, N'Esgrima', N'https://img.asmedia.epimg.net/resizer/v2/QHWQDRRJ6NKH3BLQMKDVEHWMHA.jpg?auth=34f36403734e211ea0ae526b8e51d63bb181fea38d5d106299051eab7f0bebe9&width=644&height=362&smart=true', N'La esgrima es un deporte de combate en el que los competidores utilizan espadas para tocar al adversario en un área determinada del cuerpo.')
SET IDENTITY_INSERT [dbo].[Deportes] OFF
GO
SET IDENTITY_INSERT [dbo].[Deportistas] ON 

INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (1, N'Uchimura', N'Kohei', CAST(N'1989-01-03' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Kohei_Uchimura_%282011%29.jpg/220px-Kohei_Uchimura_%282011%29.jpg', 1, 20, N'Medalla de oro en gimnasia artística en Londres 2012')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (2, N'Phelps', N'Michael', CAST(N'1985-06-30' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Michael_Phelps_August_2016.jpg/800px-Michael_Phelps_August_2016.jpg', 3, 2, N'28 medallas olímpicas, 23 de oro')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (3, N'Bolt', N'Usain', CAST(N'1986-08-21' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Usain_Bolt_after_4_%C3%97_100_m_Rio_2016.jpg/423px-Usain_Bolt_after_4_%C3%97_100_m_Rio_2016.jpg', 9, 4, N'Tres medallas de oro en 100m en Beijing, Londres y Río')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (4, N'Biles', N'Simone', CAST(N'1997-03-14' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/7/74/Simone_Biles_Rio_2016e.jpg', 3, 20, N'Cuatro medallas de oro en Río 2016')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (5, N'Freeman', N'Cathy', CAST(N'1973-02-16' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/e/e6/Cathy_Freeman_%28cropped%29.jpg', 5, 4, N'Oro en 400m en Sídney 2000')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (6, N'Pelé', N'Edson', CAST(N'1940-10-23' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/5/5e/Pele_con_brasil_%28cropped%29.jpg', 37, 5, N'Campeón del mundo en 1958, 1962 y 1970')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (7, N'Jordan', N'Michael', CAST(N'1963-02-17' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/a/ae/Michael_Jordan_in_2014.jpg', 3, 6, N'Dos medallas de oro olímpicas en baloncesto')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (8, N'Raducanu', N'Emma', CAST(N'2002-11-13' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/0/0f/Transylvania_Open-Day_2-Emma_R%C4%83ducanu_%26_Gabriela_Ruse_-_practice_%2851626332071%29_%28cropped%29.jpg', 23, 8, N'Ganadora del US Open 2021')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (9, N'Sagan', N'Peter', CAST(N'1990-01-26' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/5/52/Peter_Sagan_TDF2022.jpg', 23, 9, N'Tres veces campeón mundial de ciclismo')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (10, N'Woods', N'Tiger', CAST(N'1975-12-30' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/3/3e/Tiger_Woods_in_May_2019.jpg', 3, 10, N'15 majors en golf')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (11, N'McCaw', N'Richie', CAST(N'1980-12-31' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/8/88/Richie_McCaw_2011.jpg', 23, 11, N'Dos veces campeón del mundo de rugby')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (12, N'Vonn', N'Lindsey', CAST(N'1984-10-18' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/a/af/LindseyVonnApr10-3.jpg', 3, 12, N'Oro en descenso en Vancouver 2010')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (13, N'Ali', N'Muhammad', CAST(N'1942-01-17' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/8/89/Muhammad_Ali_NYWTS.jpg', 3, 13, N'Medalla de oro en Roma 1960')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (14, N'Matsumoto', N'Kaori', CAST(N'1987-09-11' AS Date), N'https://imgs.search.brave.com/OCjasXeadvTLixybtAX-ZQa_fqhm7wXXigRTNsiS22A/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTA5/NTI5MzAyMC9lcy9m/b3RvL2thb3JpLW1h/dHN1bW90by10aGUt/MjAxMi1sb25kb24t/b2x5bXBpYy13b21l/bnMtNTcta2lsb2dy/YW0tanVkby1nb2xk/LW1lZGFsaXN0LXBv/c2VzLWZvci1hLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1x/RDFBczlJS1duMnQw/Unh4TjdmNGdNTHUw/cUtsWktBNFotUHc2/TmhKa2p3PQ', 1, 14, N'Oro en judo en Londres 2012')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (15, N'López', N'Mijaín', CAST(N'1982-08-20' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/1/19/Mija%C3%ADn_L%C3%B3pez%2C_2020_Summer_Olympics_quarterfinal.jpg', 60, 15, N'Tres medallas de oro en lucha grecorromana')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (16, N'Moore', N'Carissa', CAST(N'1992-08-27' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/3/38/CarissaMoore2.jpg', 5, 16, N'Oro en surf en Tokio 2020')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (17, N'Crosby', N'Sidney', CAST(N'1987-08-07' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/f/f6/Sidney_Crosby_2013-02-02.JPG', 46, 17, N'Oro en hockey sobre hielo en Vancouver 2010 y Sochi 2014')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (18, N'Saito', N'Ryo', CAST(N'1996-09-15' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/7/71/Ryo_Saito.jpg', 1, 18, N'Medalla de plata en karate en Tokio 2020')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (19, N'Ohno', N'Apolo', CAST(N'1982-05-22' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/f/ff/ApoloOhno.jpg', 3, 20, N'Ocho medallas en Juegos Olímpicos de Invierno en patinaje de velocidad')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (20, N'Yuto', N'Horigome', CAST(N'1999-01-07' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/5/59/Yuto_Horigome_%28JAP%29_2022.jpg', 1, 21, N'Oro en skateboarding en Tokio 2020')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (21, N'Abbott', N'Monica', CAST(N'1985-07-28' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/e/e0/Monica_Abbott.jpg', 3, 22, N'Plata en softbol en Tokio 2020')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (22, N'Liu', N'Shiying', CAST(N'1993-09-24' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/0/0a/Liu_Shiying_at_the_2019_Athletissima_meet.jpg', 50, 4, N'Oro en lanzamiento de jabalina en Tokio 2020')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (23, N'Axelsen', N'Viktor', CAST(N'1994-01-04' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/c/cb/Viktor_Axelsen_%28DEN%29_2010.jpg', 8, 25, N'Oro en bádminton en Tokio 2020')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (24, N'Kumar', N'Ravi', CAST(N'1997-12-31' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/f/ff/Ravi_Kumar_Dahiya.jpg', 7, 15, N'Plata en lucha libre en Tokio 2020')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (25, N'Kipchoge', N'Eliud', CAST(N'1984-11-05' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/a/ad/Eliud_Kipchoge_%28KEN%29_2015.jpg', 19, 4, N'Dos veces campeón olímpico en maratón')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (26, N'LeDecky', N'Katie', CAST(N'1997-03-17' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/f/fc/Katie_Ledecky_at_the_2023_Golden_Goggle_Awards_%28cropped%29.jpg', 3, 2, N'7 medallas olímpicas en natación, 6 de oro')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (27, N'Ledecka', N'Ester', CAST(N'1995-03-23' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/a/ad/2017_Audi_FIS_Ski_Weltcup_Garmisch-Partenkirchen_Damen_-_Ester_Ledecka_-_by_2eight_-_8SC0528.jpg', 50, 12, N'Doble oro en esquí y snowboard en Pyeongchang 2018')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (28, N'Suzuki', N'Ichiro', CAST(N'1973-10-22' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/f/fe/Ichiro_Suzuki_-_Minnesota_Twins_-_Opening_Day_vs_Seattle_Mariners_%2827394574508%29_%28Cropped%29.jpg', 1, 5, N'Medalla de plata en béisbol en Atlanta 1996')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (29, N'Williams', N'Serena', CAST(N'1981-09-26' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/4/4b/Serena_Williams_at_2013_US_Open.jpg', 3, 8, N'4 medallas de oro en tenis')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (30, N'Murray', N'Andy', CAST(N'1987-05-15' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/6/6d/Murray_A._REN21_%281%29_%2851602037818%29.jpg', 23, 8, N'Dos medallas de oro en Londres 2012 y Río 2016')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (31, N'Garin', N'Cristian', CAST(N'1996-05-30' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/e/e4/Garin_WM19_%281%29_%2848521991327%29.jpg', 49, 8, N'Medalla de bronce en Tokio 2020')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (32, N'Chopra', N'Neeraj', CAST(N'1997-12-24' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/f/fb/Neeraj_Chopra_Olympic_gold_medalist.jpg', 7, 4, N'Oro en lanzamiento de jabalina en Tokio 2020')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (33, N'Shcherbakova', N'Anna', CAST(N'2004-03-28' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/f/f6/Anna_Shcherbakova_%28RUS%29_2020.jpg', 10, 12, N'Oro en patinaje artístico en Pekín 2022')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (34, N'Williams', N'Ted', CAST(N'1970-06-11' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/4/48/1939_Ted_Williams.png', 3, 5, N'Campeón mundial de béisbol en Atlanta 1996')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (35, N'Wu', N'Dajing', CAST(N'1994-07-24' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/c/c7/Moscow_2015_Relay_Men_After_Heat_2_%289%29.JPG', 50, 17, N'Oro en patinaje de velocidad en Pyeongchang 2018')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (36, N'Rojas', N'Yulimar', CAST(N'1995-10-21' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/5/5d/Yulimar_Rojas_-_Triple_saut_Femmes_%2848614911652%29_%28cropped%29.jpg', 20, 4, N'Oro en salto triple en Tokio 2020')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (37, N'Garnett', N'Kevin', CAST(N'1976-05-19' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/6/60/Kevin_Garnett_2008-01-13.jpg', 3, 6, N'Medalla de oro en baloncesto en Sídney 2000')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (38, N'Durant', N'Kevin', CAST(N'1988-09-29' AS Date), N'https://upload.wikimedia.org/wikipedia/commons/3/3a/Kevin_Durant_%28Wizards_v._Warriors%2C_1-24-2019%29_%28cropped%29.jpg', 3, 6, N'Tres medallas de oro en baloncesto en 2012, 2016 y 2020')
SET IDENTITY_INSERT [dbo].[Deportistas] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (1, N'Japon', N'https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg', CAST(N'0660-02-11' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (2, N'Kenia', N'https://upload.wikimedia.org/wikipedia/commons/4/49/Flag_of_Kenya.svg', CAST(N'1963-12-12' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (3, N'Estados Unidos', N'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/800px-Flag_of_the_United_States.svg.png', CAST(N'1776-07-04' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (4, N'Hungría', N'https://wikiwandv2-19431.kxcdn.com/_next/image?url=https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Flag_of_Hungary.svg/langes-640px-Flag_of_Hungary.svg.png&w=640&q=50', CAST(N'1918-10-31' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (5, N'Australia', N'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/800px-Flag_of_Australia_%28converted%29.svg.png', CAST(N'1901-01-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (6, N'Bermuda', N'https://upload.wikimedia.org/wikipedia/commons/b/bf/Flag_of_Bermuda.svg', CAST(N'1612-03-08' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (7, N'India', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCnQXo7eUZqYL9_br-pTPTkbowPp_JvvFdqw&s', CAST(N'1950-01-26' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (8, N'Suecia', N'https://upload.wikimedia.org/wikipedia/en/4/4c/Flag_of_Sweden.svg', CAST(N'1523-06-06' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (9, N'Jamaica', N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Jamaica.svg/800px-Flag_of_Jamaica.svg.png', CAST(N'1962-08-06' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (10, N'Ucrania', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOkxOEW_qI2en58FR3X0e5ARXJY5yu2xR3ZA&s', CAST(N'1991-08-24' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (11, N'Baréin', N'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flag_of_Bahrain.svg/640px-Flag_of_Bahrain.svg.png', CAST(N'1971-08-15' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (12, N'Afganistán', N'https://flagcdn.com/af.svg', CAST(N'1919-08-19' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (13, N'Albania', N'https://flagcdn.com/al.svg', CAST(N'1912-11-28' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (14, N'Alemania', N'https://flagcdn.com/de.svg', CAST(N'1871-01-18' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (15, N'Andorra', N'https://flagcdn.com/ad.svg', CAST(N'1278-09-08' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (16, N'Angola', N'https://flagcdn.com/ao.svg', CAST(N'1975-11-11' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (17, N'Antigua y Barbuda', N'https://flagcdn.com/ag.svg', CAST(N'1981-11-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (18, N'Arabia Saudita', N'https://flagcdn.com/sa.svg', CAST(N'1932-09-23' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (19, N'Argelia', N'https://flagcdn.com/dz.svg', CAST(N'1962-07-05' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (20, N'Argentina', N'https://flagcdn.com/ar.svg', CAST(N'1816-07-09' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (21, N'Armenia', N'https://flagcdn.com/am.svg', CAST(N'1991-09-21' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (22, N'Australia', N'https://flagcdn.com/au.svg', CAST(N'1901-01-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (23, N'Austria', N'https://flagcdn.com/at.svg', CAST(N'1955-12-26' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (24, N'Azerbaiyán', N'https://flagcdn.com/az.svg', CAST(N'1918-05-28' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (25, N'Bahamas', N'https://flagcdn.com/bs.svg', CAST(N'1973-07-10' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (26, N'Bangladés', N'https://flagcdn.com/bd.svg', CAST(N'1971-12-16' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (27, N'Barbados', N'https://flagcdn.com/bb.svg', CAST(N'1966-11-30' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (28, N'Baréin', N'https://flagcdn.com/bh.svg', CAST(N'1971-08-15' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (29, N'Bélgica', N'https://flagcdn.com/be.svg', CAST(N'1830-10-04' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (30, N'Belice', N'https://flagcdn.com/bz.svg', CAST(N'1981-09-21' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (31, N'Benín', N'https://flagcdn.com/bj.svg', CAST(N'1960-08-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (32, N'Bielorrusia', N'https://flagcdn.com/by.svg', CAST(N'1991-08-25' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (33, N'Birmania', N'https://flagcdn.com/mm.svg', CAST(N'1948-01-04' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (34, N'Bolivia', N'https://flagcdn.com/bo.svg', CAST(N'1825-08-06' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (35, N'Bosnia y Herzegovina', N'https://flagcdn.com/ba.svg', CAST(N'1992-03-03' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (36, N'Botsuana', N'https://flagcdn.com/bw.svg', CAST(N'1966-09-30' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (37, N'Brasil', N'https://flagcdn.com/br.svg', CAST(N'1822-09-07' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (38, N'Brunéi', N'https://flagcdn.com/bn.svg', CAST(N'1984-01-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (39, N'Bulgaria', N'https://flagcdn.com/bg.svg', CAST(N'1908-09-22' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (40, N'Burkina Faso', N'https://flagcdn.com/bf.svg', CAST(N'1960-08-05' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (41, N'Burundi', N'https://flagcdn.com/bi.svg', CAST(N'1962-07-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (42, N'Bután', N'https://flagcdn.com/bt.svg', CAST(N'1907-12-17' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (43, N'Cabo Verde', N'https://flagcdn.com/cv.svg', CAST(N'1975-07-05' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (44, N'Camboya', N'https://flagcdn.com/kh.svg', CAST(N'1953-11-09' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (45, N'Camerún', N'https://flagcdn.com/cm.svg', CAST(N'1960-01-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (46, N'Canadá', N'https://flagcdn.com/ca.svg', CAST(N'1867-07-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (47, N'Catar', N'https://flagcdn.com/qa.svg', CAST(N'1971-09-03' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (48, N'Chad', N'https://flagcdn.com/td.svg', CAST(N'1960-08-11' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (49, N'Chile', N'https://flagcdn.com/cl.svg', CAST(N'1818-02-12' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (50, N'China', N'https://flagcdn.com/cn.svg', CAST(N'1949-10-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (51, N'Chipre', N'https://flagcdn.com/cy.svg', CAST(N'1960-08-16' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (52, N'Ciudad del Vaticano', N'https://flagcdn.com/va.svg', CAST(N'1929-02-11' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (53, N'Colombia', N'https://flagcdn.com/co.svg', CAST(N'1810-07-20' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (54, N'Comoras', N'https://flagcdn.com/km.svg', CAST(N'1975-07-06' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (55, N'Corea del Norte', N'https://flagcdn.com/kp.svg', CAST(N'1948-09-09' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (56, N'Corea del Sur', N'https://flagcdn.com/kr.svg', CAST(N'1948-08-15' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (57, N'Costa de Marfil', N'https://flagcdn.com/ci.svg', CAST(N'1960-08-07' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (58, N'Costa Rica', N'https://flagcdn.com/cr.svg', CAST(N'1821-09-15' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (59, N'Croacia', N'https://flagcdn.com/hr.svg', CAST(N'1991-06-25' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (60, N'Cuba', N'https://flagcdn.com/cu.svg', CAST(N'1902-05-20' AS Date))
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_agregar_deportista]    Script Date: 22/8/2024 23:26:07 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_eliminar_deportista]    Script Date: 22/8/2024 23:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_eliminar_deportista]
@IdDeportista int
AS BEGIN
DELETE FROM Deportistas WHERE IdDeportista = @IdDeportista; END
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_Deportistas]    Script Date: 22/8/2024 23:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Listar_Deportistas]
AS BEGIN SELECT * FROM Deportistas; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deporte]    Script Date: 22/8/2024 23:26:07 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_Deportes]    Script Date: 22/8/2024 23:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ver_Deportes]
AS BEGIN SELECT * FROM Deportes; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deportista]    Script Date: 22/8/2024 23:26:07 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_deportistas_segun_deporte]    Script Date: 22/8/2024 23:26:07 ******/
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
FROM Deportistas dtas WHERE IdDeporte = @Id_Deporte; END

--ListarDeportistas(int idPais): Devuelve un List de Deportistas en base a un país

GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deportistas_segun_pais]    Script Date: 22/8/2024 23:26:07 ******/
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
FROM Deportistas dtas WHERE IdPais = @Id_Pais END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_pais]    Script Date: 22/8/2024 23:26:07 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_Paises]    Script Date: 22/8/2024 23:26:07 ******/
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
