USE [master]
GO
/****** Object:  Database [sales_system]    Script Date: 08.06.2024. 18:04:31 ******/
CREATE DATABASE [sales_system]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sales_system', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\sales_system.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sales_system_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\sales_system_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [sales_system] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sales_system].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sales_system] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sales_system] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sales_system] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sales_system] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sales_system] SET ARITHABORT OFF 
GO
ALTER DATABASE [sales_system] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sales_system] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sales_system] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sales_system] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sales_system] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sales_system] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sales_system] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sales_system] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sales_system] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sales_system] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sales_system] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sales_system] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sales_system] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sales_system] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sales_system] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sales_system] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sales_system] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sales_system] SET RECOVERY FULL 
GO
ALTER DATABASE [sales_system] SET  MULTI_USER 
GO
ALTER DATABASE [sales_system] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sales_system] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sales_system] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sales_system] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sales_system] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [sales_system] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'sales_system', N'ON'
GO
ALTER DATABASE [sales_system] SET QUERY_STORE = ON
GO
ALTER DATABASE [sales_system] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [sales_system]
GO
/****** Object:  Table [dbo].[Firma]    Script Date: 08.06.2024. 18:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firma](
	[FirmaID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[PIB] [nvarchar](9) NULL,
PRIMARY KEY CLUSTERED 
(
	[FirmaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FizickoLice]    Script Date: 08.06.2024. 18:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FizickoLice](
	[FizickoLiceID] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[FizickoLiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Korisnici]    Script Date: 08.06.2024. 18:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korisnici](
	[KorisnikID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Tip] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KorisnikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kupac]    Script Date: 08.06.2024. 18:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kupac](
	[KorisnikID] [int] NOT NULL,
	[TipKupca] [nvarchar](15) NULL,
	[FizickoLiceID] [int] NULL,
	[FirmaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KorisnikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Narudzbina]    Script Date: 08.06.2024. 18:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Narudzbina](
	[NarudzbinaID] [int] IDENTITY(1,1) NOT NULL,
	[KupacID] [int] NULL,
	[ProdavacID] [int] NULL,
	[DatumNarudzbine] [datetime] NULL,
	[Status] [varchar](20) NOT NULL,
	[KupacIme] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[NarudzbinaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NarudzbinaProizvod]    Script Date: 08.06.2024. 18:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NarudzbinaProizvod](
	[NarudzbinaID] [int] NOT NULL,
	[ProizvodID] [int] NOT NULL,
	[Kolicina] [int] NULL,
	[Cena] [decimal](18, 2) NULL,
	[imeKupca] [varchar](30) NULL,
	[imeProizvoda] [varchar](30) NULL,
	[imeProdavca] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[NarudzbinaID] ASC,
	[ProizvodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poruka]    Script Date: 08.06.2024. 18:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poruka](
	[PorukaID] [int] IDENTITY(1,1) NOT NULL,
	[PosiljalacID] [int] NULL,
	[PrimalacID] [int] NULL,
	[Sadrzaj] [nvarchar](max) NOT NULL,
	[DatumSlanja] [datetime] NOT NULL,
	[PosiljalacIme] [varchar](30) NULL,
	[PrimalacIme] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[PorukaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prodavac]    Script Date: 08.06.2024. 18:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prodavac](
	[KorisnikID] [int] NOT NULL,
	[TipProdavca] [nvarchar](15) NULL,
	[FizickoLiceID] [int] NULL,
	[FirmaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KorisnikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proizvod]    Script Date: 08.06.2024. 18:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proizvod](
	[ProizvodID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NULL,
	[Cena] [decimal](18, 2) NULL,
	[Kolicina] [int] NULL,
	[ProdavacID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProizvodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Firma] ON 

INSERT [dbo].[Firma] ([FirmaID], [Naziv], [Email], [PIB]) VALUES (1, N'Gigatron', N'gigatron@example.com', N'123456789')
INSERT [dbo].[Firma] ([FirmaID], [Naziv], [Email], [PIB]) VALUES (2, N'Ansoft', N'ansoft@example.com', N'987654321')
SET IDENTITY_INSERT [dbo].[Firma] OFF
GO
SET IDENTITY_INSERT [dbo].[FizickoLice] ON 

INSERT [dbo].[FizickoLice] ([FizickoLiceID], [Ime], [Prezime], [Email]) VALUES (1, N'Ilhan', N'Basic', N'ilhan.basic@example.com')
INSERT [dbo].[FizickoLice] ([FizickoLiceID], [Ime], [Prezime], [Email]) VALUES (2, N'Hamza', N'Gorcevic', N'hamza.gorcevic@example.com')
SET IDENTITY_INSERT [dbo].[FizickoLice] OFF
GO
SET IDENTITY_INSERT [dbo].[Korisnici] ON 

INSERT [dbo].[Korisnici] ([KorisnikID], [Username], [Password], [Tip]) VALUES (1, N'kupac1', N'password1', N'Kupac')
INSERT [dbo].[Korisnici] ([KorisnikID], [Username], [Password], [Tip]) VALUES (2, N'prodavac1', N'password1', N'Prodavac')
SET IDENTITY_INSERT [dbo].[Korisnici] OFF
GO
INSERT [dbo].[Kupac] ([KorisnikID], [TipKupca], [FizickoLiceID], [FirmaID]) VALUES (1, N'FizickoLice', 1, NULL)
GO
INSERT [dbo].[Prodavac] ([KorisnikID], [TipProdavca], [FizickoLiceID], [FirmaID]) VALUES (2, N'Firma', NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Proizvod] ON 

INSERT [dbo].[Proizvod] ([ProizvodID], [Naziv], [Cena], [Kolicina], [ProdavacID]) VALUES (21, N'Lenovo IdeaPad 5', CAST(700.00 AS Decimal(18, 2)), 5, 2)
INSERT [dbo].[Proizvod] ([ProizvodID], [Naziv], [Cena], [Kolicina], [ProdavacID]) VALUES (22, N'Lenovo IdeaPad 5 Pro', CAST(900.00 AS Decimal(18, 2)), 5, 2)
SET IDENTITY_INSERT [dbo].[Proizvod] OFF
GO
ALTER TABLE [dbo].[Narudzbina] ADD  DEFAULT ('Primljeno') FOR [Status]
GO
ALTER TABLE [dbo].[Kupac]  WITH CHECK ADD FOREIGN KEY([FirmaID])
REFERENCES [dbo].[Firma] ([FirmaID])
GO
ALTER TABLE [dbo].[Kupac]  WITH CHECK ADD FOREIGN KEY([FizickoLiceID])
REFERENCES [dbo].[FizickoLice] ([FizickoLiceID])
GO
ALTER TABLE [dbo].[Kupac]  WITH CHECK ADD FOREIGN KEY([KorisnikID])
REFERENCES [dbo].[Korisnici] ([KorisnikID])
GO
ALTER TABLE [dbo].[Narudzbina]  WITH CHECK ADD FOREIGN KEY([KupacID])
REFERENCES [dbo].[Kupac] ([KorisnikID])
GO
ALTER TABLE [dbo].[Narudzbina]  WITH CHECK ADD FOREIGN KEY([ProdavacID])
REFERENCES [dbo].[Prodavac] ([KorisnikID])
GO
ALTER TABLE [dbo].[NarudzbinaProizvod]  WITH CHECK ADD FOREIGN KEY([NarudzbinaID])
REFERENCES [dbo].[Narudzbina] ([NarudzbinaID])
GO
ALTER TABLE [dbo].[NarudzbinaProizvod]  WITH CHECK ADD FOREIGN KEY([ProizvodID])
REFERENCES [dbo].[Proizvod] ([ProizvodID])
GO
ALTER TABLE [dbo].[Poruka]  WITH CHECK ADD FOREIGN KEY([PosiljalacID])
REFERENCES [dbo].[Korisnici] ([KorisnikID])
GO
ALTER TABLE [dbo].[Poruka]  WITH CHECK ADD FOREIGN KEY([PrimalacID])
REFERENCES [dbo].[Korisnici] ([KorisnikID])
GO
ALTER TABLE [dbo].[Prodavac]  WITH CHECK ADD FOREIGN KEY([FirmaID])
REFERENCES [dbo].[Firma] ([FirmaID])
GO
ALTER TABLE [dbo].[Prodavac]  WITH CHECK ADD FOREIGN KEY([FizickoLiceID])
REFERENCES [dbo].[FizickoLice] ([FizickoLiceID])
GO
ALTER TABLE [dbo].[Prodavac]  WITH CHECK ADD FOREIGN KEY([KorisnikID])
REFERENCES [dbo].[Korisnici] ([KorisnikID])
GO
ALTER TABLE [dbo].[Proizvod]  WITH CHECK ADD FOREIGN KEY([ProdavacID])
REFERENCES [dbo].[Prodavac] ([KorisnikID])
GO
ALTER TABLE [dbo].[Korisnici]  WITH CHECK ADD CHECK  (([Tip]='Prodavac' OR [Tip]='Kupac'))
GO
ALTER TABLE [dbo].[Kupac]  WITH CHECK ADD CHECK  (([TipKupca]='Firma' OR [TipKupca]='FizickoLice'))
GO
ALTER TABLE [dbo].[Narudzbina]  WITH CHECK ADD CHECK  (([Status]='Poslano' OR [Status]='Spremno' OR [Status]='Primljeno'))
GO
ALTER TABLE [dbo].[Prodavac]  WITH CHECK ADD CHECK  (([TipProdavca]='Firma' OR [TipProdavca]='FizickoLice'))
GO
USE [master]
GO
ALTER DATABASE [sales_system] SET  READ_WRITE 
GO
