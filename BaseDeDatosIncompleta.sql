USE [JJOO]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 22/8/2024 14:31:42 ******/
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
/****** Object:  Table [dbo].[Deportistas]    Script Date: 22/8/2024 14:31:42 ******/
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
/****** Object:  Table [dbo].[Paises]    Script Date: 22/8/2024 14:31:42 ******/
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
SET IDENTITY_INSERT [dbo].[Deportes] ON 

INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (5, N'Skateboard', N'https://phantom-marca.unidadeditorial.es/e3e522142ccfebcc7a4f08a4672ff60c/f/webp/assets/multimedia/imagenes/2021/07/25/16271789591835.jpg', N'El skateboarding es una actividad deportiva y recreativa donde los patinadores montan y realizan trucos sobre una tabla llamada skateboard.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (6, N'Natación ', N'https://media.a24.com/p/2b8ef7880a0f2f4972a076a29e38798c/adjuntos/296/imagenes/008/760/0008760071/1200x675/smart/juegos-olimpicos-natacionpng.png', N'La natación es el arte de sostenerse y avanzar, usando los brazos y las piernas, sobre o bajo el agua.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (7, N'Triatlón', N'https://triatletasenred.sport.es/wp-content/uploads/pekin-2.jpg', N'El triatlon es una competición individual que comprende tres pruebas específicas, especialmente la de natación, carrera a pie y ciclismo en carretera')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (8, N'Atletismo', N'https://hips.hearstapps.com/hmg-prod/images/minimas-atletismo-juegos-olimpicos-paris-2024-1671533472.jpeg', N'El atletismo es un deporte de competencias individuales y por equipos, que abarca un gran número de pruebas que pueden tener lugar en pista cubierta o al aire libre.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (9, N'Fútbol', N'https://files.antena2.com/antena2/public/styles/imagen_despliegue/public/2019-02/james_0.jpg.webp?VersionId=9U_RdS0xGyVwyjONub6W4wbXFRpykYdg&itok=_yBt7zwG', N'El fútbol es un deporte de equipo en el que dos equipos de once jugadores cada uno intentan marcar goles en la portería del adversario usando principalmente los pies.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (10, N'Baloncesto', N'https://phantom-marca-mx.unidadeditorial.es/cac33bf9261da4a9f0f0cf9afc2356ee/resize/1200/f/webp/mx/assets/multimedia/imagenes/2023/12/20/17030956821093.jpg', N'El baloncesto es un deporte en el que dos equipos de cinco jugadores cada uno intentan anotar puntos encestando una pelota en el aro del equipo contrario.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (11, N'Voleibol', N'https://e00-xlk-ue-marca.uecdn.es/uploads/2024/07/15/17026359977576.jpeg', N'El voleibol es un deporte en el que dos equipos de seis jugadores intentan pasar un balón por encima de una red para que toque el suelo del campo contrario.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (12, N'Tenis', N'https://www.atptour.com/-/media/images/news/2017-photo-upload/winston-salem-2024-carreno-miercoles.jpg', N'El tenis es un deporte en el que se utilizan raquetas para golpear una pelota sobre una red, con el objetivo de que el rival no pueda devolverla.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (13, N'Ciclismo', N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Military_cyclists_in_pace_line.jpg/1200px-Military_cyclists_in_pace_line.jpg', N'El ciclismo es un deporte en el que los atletas compiten montando bicicletas en carreras en carretera, pista o montaña.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (14, N'Golf', N'https://i0.wp.com/deporteargentinoplus.com.ar/wp-content/uploads/2024/08/golf-juegos-olimpicos-paris-alejandro-tosti.jpg?fit=600%2C400&ssl=1', N'El golf es un deporte en el que los jugadores intentan introducir una pelota en una serie de hoyos en el menor número de golpes posible.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (15, N'Rugby', N'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/primary/lu63j0xbf8e59ayvqjbi', N'El rugby es un deporte de equipo en el que los jugadores intentan llevar un balón ovalado a la zona de anotación del adversario mediante carreras, pases y tackles.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (16, N'Esquí', N'https://www.civitatis.com/blog/wp-content/uploads/2021/10/estaciones-esqui-mundo.jpg', N'El esquí es un deporte en el que los atletas descienden por pendientes de nieve utilizando esquís para deslizarse.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (17, N'Boxeo', N'https://s2.sportstatics.com/relevo/www/multimedia/202309/13/media/cortadas/boxeo-olimpico-RO2IqmUamyDZVVAsnmlw8yM-1200x648@Relevo.jpeg', N'El boxeo es un deporte de combate en el que dos personas se enfrentan en un ring intentando golpearse con guantes en un número determinado de asaltos.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (18, N'Judo', N'https://medac.es/sites/default/files/blog/destacadas/tecnicas-de-judo.jpg', N'El judo es un arte marcial en el que los practicantes utilizan técnicas de lanzamiento y de control en el suelo para someter al adversario.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (19, N'Lucha libre', N'https://storage.googleapis.com/static.elsoldemexico.com.mx/elesto/2023/09/La-Lucha-Libre-cumplira-90-anos-en-nuestro-pais.png', N'La lucha libre es un deporte de combate en el que los competidores utilizan técnicas de agarre y derribo para vencer a su oponente en un combate.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (20, N'Surf', N'https://img.olympics.com/images/image/private/t_social_share_thumb/f_auto/primary/npvokfsuku44obof2abt', N'El surf es un deporte en el que los atletas montan olas en una tabla, utilizando el movimiento del agua para deslizarse y realizar maniobras.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (21, N'Hockey sobre hielo', N'https://dims.apnews.com/dims4/default/4cd500f/2147483647/strip/false/crop/3000x2000+0+0/resize/1486x991!/quality/90/?url=https%3A%2F%2Fstorage.googleapis.com%2Fafs-prod%2Fmedia%2Fe809d516b9b54047a678837cd12cb6af%2F3000.jpeg', N'El hockey sobre hielo es un deporte de equipo en el que dos equipos de seis jugadores intentan marcar goles en la portería rival utilizando un disco de goma.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (22, N'Karate', N'https://phantom-marca.unidadeditorial.es/d191a6cfd960521a56534ced60af42bc/resize/1200/f/webp/assets/multimedia/imagenes/2023/10/18/16976294751377.jpg', N'El karate es un arte marcial en el que se utilizan técnicas de golpeo, patadas y bloqueos para defenderse y atacar al oponente.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (23, N'Taekwondo', N'https://phantom-marca.unidadeditorial.es/d191a6cfd960521a56534ced60af42bc/resize/1200/f/webp/assets/multimedia/imagenes/2023/10/18/16976294751377.jpg', N'El taekwondo es un arte marcial coreano que se centra en técnicas de patadas y golpes rápidos, así como en formas o katas.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (24, N'Gimnasia artística', N'https://concepto.de/wp-content/uploads/2022/04/gimnasia-artistica-e1649648850992.jpg', N'La gimnasia artística es un deporte en el que los atletas realizan rutinas acrobáticas y de fuerza en diferentes aparatos, como la barra fija y el suelo.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (25, N'Skateboarding', N'https://phantom-marca.unidadeditorial.es/e3e522142ccfebcc7a4f08a4672ff60c/f/webp/assets/multimedia/imagenes/2021/07/25/16271789591835.jpg', N'El skateboarding es un deporte en el que los practicantes realizan trucos y maniobras sobre una tabla con ruedas.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (26, N'Softbol', N'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/primary/ysgf7dtufhcks3gr9tve', N'El softbol es un deporte similar al béisbol, pero con una pelota más grande y se juega en un campo con bases y un bate.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (27, N'Handbol', N'https://img.olympics.com/images/image/private/t_social_share_thumb/f_auto/primary/lxaqle6x0ho1li421tkg', N'El handbol es un deporte en el que dos equipos de siete jugadores intentan marcar goles lanzando un balón a la portería rival con las manos.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (28, N'Pesas', N'https://media.tycsports.com/files/2021/07/13/306476/halterofilia-juegos-olimpicos_862x485.jpg', N'El levantamiento de pesas es un deporte en el que los atletas levantan cargas pesadas en diferentes movimientos para obtener la máxima fuerza y técnica.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (29, N'Bádminton', N'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/v1537106227/primary/qywhtgshophwcheja7fu', N'El bádminton es un deporte de raqueta en el que los jugadores intentan pasar un volante sobre una red, evitando que el adversario lo devuelva.')
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto], [Descripcion]) VALUES (30, N'Esgrima', N'https://img.asmedia.epimg.net/resizer/v2/QHWQDRRJ6NKH3BLQMKDVEHWMHA.jpg?auth=34f36403734e211ea0ae526b8e51d63bb181fea38d5d106299051eab7f0bebe9&width=644&height=362&smart=true', N'La esgrima es un deporte de combate en el que los competidores utilizan espadas para tocar al adversario en un área determinada del cuerpo.')
SET IDENTITY_INSERT [dbo].[Deportes] OFF
GO
SET IDENTITY_INSERT [dbo].[Deportistas] ON 

INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (1, N'Yamamoto', N'Hiroshi', CAST(N'1960-02-11' AS Date), N'foto_japon.jpg', 3, 5, N'Medalla de Oro en Skateboard')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (2, N'Silva', N'Carlos', CAST(N'1980-09-01' AS Date), N'foto_brasil.jpg', 5, 9, N'Medalla de Plata en Natación')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (3, N'Smith', N'John', CAST(N'1975-07-04' AS Date), N'foto_eeuu.jpg', 6, 7, N'Medalla de Oro en Triatlón')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (4, N'Nagy', N'László', CAST(N'1985-10-31' AS Date), N'foto_hungria.jpg', 7, 8, N'Medalla de Oro en Atletismo')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (5, N'González', N'Luis', CAST(N'1990-06-15' AS Date), N'foto_mexico.jpg', 8, 10, N'Medalla de Oro en Fútbol')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (6, N'Johnson', N'Michael', CAST(N'1988-03-12' AS Date), N'foto_usa.jpg', 6, 11, N'Medalla de Oro en Baloncesto')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (7, N'Martínez', N'Ana', CAST(N'1995-04-20' AS Date), N'foto_mexico.jpg', 8, 12, N'Medalla de Oro en Voleibol')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (8, N'Rodríguez', N'Sofía', CAST(N'1992-05-30' AS Date), N'foto_argentina.jpg', 24, 13, N'Medalla de Oro en Tenis')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (9, N'Fernández', N'Javier', CAST(N'1983-08-25' AS Date), N'foto_espana.jpg', 9, 14, N'Medalla de Oro en Ciclismo')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (10, N'Miller', N'David', CAST(N'1981-11-11' AS Date), N'foto_usa.jpg', 6, 15, N'Medalla de Oro en Golf')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (11, N'Williams', N'Chris', CAST(N'1979-02-18' AS Date), N'foto_nueva_zelanda.jpg', 10, 16, N'Medalla de Oro en Rugby')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (12, N'Klein', N'Anna', CAST(N'1986-07-14' AS Date), N'foto_austria.jpg', 8, 17, N'Medalla de Oro en Esquí')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (13, N'Lopez', N'Maria', CAST(N'1993-09-29' AS Date), N'foto_mexico.jpg', 8, 18, N'Medalla de Oro en Boxeo')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (14, N'Tanaka', N'Akira', CAST(N'1984-03-05' AS Date), N'foto_japon.jpg', 3, 19, N'Medalla de Oro en Judo')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (15, N'Garcia', N'Luis', CAST(N'1991-12-01' AS Date), N'foto_mexico.jpg', 8, 20, N'Medalla de Oro en Lucha libre')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (16, N'Pérez', N'Isabel', CAST(N'1994-06-22' AS Date), N'foto_argentina.jpg', 24, 21, N'Medalla de Oro en Surf')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (17, N'Olsen', N'Emma', CAST(N'1987-05-15' AS Date), N'foto_dinamarca.jpg', 11, 22, N'Medalla de Oro en Hockey sobre hielo')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (18, N'Khan', N'Ali', CAST(N'1990-08-30' AS Date), N'foto_pakistan.jpg', 12, 23, N'Medalla de Oro en Karate')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (19, N'Lee', N'Min-Ji', CAST(N'1985-04-17' AS Date), N'foto_corea.jpg', 13, 24, N'Medalla de Oro en Taekwondo')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (20, N'Nguyen', N'Thao', CAST(N'1992-11-09' AS Date), N'foto_vietnam.jpg', 14, 25, N'Medalla de Oro en Gimnasia artística')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (21, N'Smith', N'Rachel', CAST(N'1989-01-24' AS Date), N'foto_usa.jpg', 6, 26, N'Medalla de Oro en Skateboarding')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (22, N'Johnson', N'James', CAST(N'1993-07-11' AS Date), N'foto_usa.jpg', 6, 27, N'Medalla de Oro en Softbol')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (23, N'Martinez', N'Carlos', CAST(N'1988-05-20' AS Date), N'foto_mexico.jpg', 8, 28, N'Medalla de Oro en Handbol')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (24, N'Brown', N'Emily', CAST(N'1990-03-15' AS Date), N'foto_usa.jpg', 6, 29, N'Medalla de Oro en Pesas')
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte], [Logros]) VALUES (25, N'Nguyen', N'An', CAST(N'1991-12-12' AS Date), N'foto_vietnam.jpg', 14, 30, N'Medalla de Oro en Bádminton')
SET IDENTITY_INSERT [dbo].[Deportistas] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (3, N'Japon', N'https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg', CAST(N'0660-02-11' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (5, N'Brasil', N'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F0%2F05%2FFlag_of_Brazil.svg%2Flanges-320px-Flag_of_Brazil.svg.png&sp=1724252277T660c9e7c85e0b85268d70ddaa7fa97f25d20bce2b65b67dea31238bc77629bcd', CAST(N'1822-01-09' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (6, N'Estados Unidos', N'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/800px-Flag_of_the_United_States.svg.png', CAST(N'1776-07-04' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (7, N'Hungría', N'https://wikiwandv2-19431.kxcdn.com/_next/image?url=https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Flag_of_Hungary.svg/langes-640px-Flag_of_Hungary.svg.png&w=640&q=50', CAST(N'1918-10-31' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (8, N'Australia', N'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/800px-Flag_of_Australia_%28converted%29.svg.png', CAST(N'1901-01-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (9, N'Bermuda', N'https://upload.wikimedia.org/wikipedia/commons/b/bf/Flag_of_Bermuda.svg', CAST(N'1612-03-08' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (10, N'India', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCnQXo7eUZqYL9_br-pTPTkbowPp_JvvFdqw&s', CAST(N'1950-01-26' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (11, N'Suecia', N'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F4%2F4c%2FFlag_of_Sweden.svg%2Flanges-320px-Flag_of_Sweden.svg.png&sp=1724252484Te2171084cd124ae4fe03d974f1ff31ebffc2fe43a1d4e8a94338d21f2a905ffb', CAST(N'1523-06-06' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (12, N'Jamaica', N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Jamaica.svg/800px-Flag_of_Jamaica.svg.png', CAST(N'1962-08-06' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (14, N'Ucrania', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOkxOEW_qI2en58FR3X0e5ARXJY5yu2xR3ZA&s', CAST(N'1991-08-24' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (15, N'Baréin', N'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flag_of_Bahrain.svg/640px-Flag_of_Bahrain.svg.png', CAST(N'1971-08-15' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (16, N'Afganistán', N'https://flagcdn.com/af.svg', CAST(N'1919-08-19' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (17, N'Albania', N'https://flagcdn.com/al.svg', CAST(N'1912-11-28' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (18, N'Alemania', N'https://flagcdn.com/de.svg', CAST(N'1871-01-18' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (19, N'Andorra', N'https://flagcdn.com/ad.svg', CAST(N'1278-09-08' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (20, N'Angola', N'https://flagcdn.com/ao.svg', CAST(N'1975-11-11' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (21, N'Antigua y Barbuda', N'https://flagcdn.com/ag.svg', CAST(N'1981-11-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (22, N'Arabia Saudita', N'https://flagcdn.com/sa.svg', CAST(N'1932-09-23' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (23, N'Argelia', N'https://flagcdn.com/dz.svg', CAST(N'1962-07-05' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (24, N'Argentina', N'https://flagcdn.com/ar.svg', CAST(N'1816-07-09' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (25, N'Armenia', N'https://flagcdn.com/am.svg', CAST(N'1991-09-21' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (26, N'Australia', N'https://flagcdn.com/au.svg', CAST(N'1901-01-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (27, N'Austria', N'https://flagcdn.com/at.svg', CAST(N'1955-12-26' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (28, N'Azerbaiyán', N'https://flagcdn.com/az.svg', CAST(N'1918-05-28' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (29, N'Bahamas', N'https://flagcdn.com/bs.svg', CAST(N'1973-07-10' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (30, N'Bangladés', N'https://flagcdn.com/bd.svg', CAST(N'1971-12-16' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (31, N'Barbados', N'https://flagcdn.com/bb.svg', CAST(N'1966-11-30' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (32, N'Baréin', N'https://flagcdn.com/bh.svg', CAST(N'1971-08-15' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (33, N'Bélgica', N'https://flagcdn.com/be.svg', CAST(N'1830-10-04' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (34, N'Belice', N'https://flagcdn.com/bz.svg', CAST(N'1981-09-21' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (35, N'Benín', N'https://flagcdn.com/bj.svg', CAST(N'1960-08-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (36, N'Bielorrusia', N'https://flagcdn.com/by.svg', CAST(N'1991-08-25' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (37, N'Birmania', N'https://flagcdn.com/mm.svg', CAST(N'1948-01-04' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (38, N'Bolivia', N'https://flagcdn.com/bo.svg', CAST(N'1825-08-06' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (39, N'Bosnia y Herzegovina', N'https://flagcdn.com/ba.svg', CAST(N'1992-03-03' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (40, N'Botsuana', N'https://flagcdn.com/bw.svg', CAST(N'1966-09-30' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (41, N'Brasil', N'https://flagcdn.com/br.svg', CAST(N'1822-09-07' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (42, N'Brunéi', N'https://flagcdn.com/bn.svg', CAST(N'1984-01-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (43, N'Bulgaria', N'https://flagcdn.com/bg.svg', CAST(N'1908-09-22' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (44, N'Burkina Faso', N'https://flagcdn.com/bf.svg', CAST(N'1960-08-05' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (45, N'Burundi', N'https://flagcdn.com/bi.svg', CAST(N'1962-07-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (46, N'Bután', N'https://flagcdn.com/bt.svg', CAST(N'1907-12-17' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (47, N'Cabo Verde', N'https://flagcdn.com/cv.svg', CAST(N'1975-07-05' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (48, N'Camboya', N'https://flagcdn.com/kh.svg', CAST(N'1953-11-09' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (49, N'Camerún', N'https://flagcdn.com/cm.svg', CAST(N'1960-01-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (50, N'Canadá', N'https://flagcdn.com/ca.svg', CAST(N'1867-07-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (51, N'Catar', N'https://flagcdn.com/qa.svg', CAST(N'1971-09-03' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (52, N'Chad', N'https://flagcdn.com/td.svg', CAST(N'1960-08-11' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (53, N'Chile', N'https://flagcdn.com/cl.svg', CAST(N'1818-02-12' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (54, N'China', N'https://flagcdn.com/cn.svg', CAST(N'1949-10-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (55, N'Chipre', N'https://flagcdn.com/cy.svg', CAST(N'1960-08-16' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (56, N'Ciudad del Vaticano', N'https://flagcdn.com/va.svg', CAST(N'1929-02-11' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (57, N'Colombia', N'https://flagcdn.com/co.svg', CAST(N'1810-07-20' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (58, N'Comoras', N'https://flagcdn.com/km.svg', CAST(N'1975-07-06' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (59, N'Corea del Norte', N'https://flagcdn.com/kp.svg', CAST(N'1948-09-09' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (60, N'Corea del Sur', N'https://flagcdn.com/kr.svg', CAST(N'1948-08-15' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (61, N'Costa de Marfil', N'https://flagcdn.com/ci.svg', CAST(N'1960-08-07' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (62, N'Costa Rica', N'https://flagcdn.com/cr.svg', CAST(N'1821-09-15' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (63, N'Croacia', N'https://flagcdn.com/hr.svg', CAST(N'1991-06-25' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (64, N'Cuba', N'https://flagcdn.com/cu.svg', CAST(N'1902-05-20' AS Date))
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_agregar_deportista]    Script Date: 22/8/2024 14:31:42 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_eliminar_deportista]    Script Date: 22/8/2024 14:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_eliminar_deportista]
@IdDeportista int
AS BEGIN
DELETE FROM Deportistas WHERE IdDeportista = @IdDeportista; END
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_Deportistas]    Script Date: 22/8/2024 14:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Listar_Deportistas]
AS BEGIN SELECT * FROM Deportistas; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deporte]    Script Date: 22/8/2024 14:31:42 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_Deportes]    Script Date: 22/8/2024 14:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ver_Deportes]
AS BEGIN SELECT * FROM Deportes; END
GO
/****** Object:  StoredProcedure [dbo].[sp_ver_deportista]    Script Date: 22/8/2024 14:31:42 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_deportistas_segun_deporte]    Script Date: 22/8/2024 14:31:42 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_deportistas_segun_pais]    Script Date: 22/8/2024 14:31:42 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_pais]    Script Date: 22/8/2024 14:31:42 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ver_Paises]    Script Date: 22/8/2024 14:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ListarPaises(): Devuelve un List de Paises
CREATE PROCEDURE [dbo].[sp_ver_Paises]
AS BEGIN
SELECT * from Paises; END
GO
