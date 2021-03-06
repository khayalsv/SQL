USE [CustomerSQL]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23.07.2022 22:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 23.07.2022 22:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Surname] [nvarchar](20) NULL,
	[City] [nvarchar](20) NULL,
	[Balance] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23.07.2022 22:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Purchase] [decimal](18, 2) NULL,
	[Sale] [decimal](18, 2) NULL,
	[Stock] [smallint] NULL,
	[Status] [bit] NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sell]    Script Date: 23.07.2022 22:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sell](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ProductId] [int] NULL,
	[Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLStock]    Script Date: 23.07.2022 22:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLStock](
	[TotalProduct] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Mobile')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Computer')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Tool')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (8, N'Lamp')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (9, N'Door')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Surname], [City], [Balance]) VALUES (1, N'Khayal', N'Salimov', N'Sumgait', CAST(15000.00 AS Decimal(18, 2)))
INSERT [dbo].[Customer] ([Id], [Name], [Surname], [City], [Balance]) VALUES (2, N'Sadiq', N'Ilyasli', N'Saray', CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[Customer] ([Id], [Name], [Surname], [City], [Balance]) VALUES (3, N'Rasim', N'Aliyev', N'Baku', CAST(18000.00 AS Decimal(18, 2)))
INSERT [dbo].[Customer] ([Id], [Name], [Surname], [City], [Balance]) VALUES (4, N'Nurlan', N'Hasanli', N'Baku', CAST(17000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Purchase], [Sale], [Stock], [Status], [CategoryId]) VALUES (1, N'Fridge', CAST(500.00 AS Decimal(18, 2)), CAST(700.00 AS Decimal(18, 2)), 50, 1, 3)
INSERT [dbo].[Product] ([Id], [Name], [Purchase], [Sale], [Stock], [Status], [CategoryId]) VALUES (2, N'Wardrobe', CAST(300.00 AS Decimal(18, 2)), CAST(450.00 AS Decimal(18, 2)), 30, 1, 3)
INSERT [dbo].[Product] ([Id], [Name], [Purchase], [Sale], [Stock], [Status], [CategoryId]) VALUES (3, N'Asus', CAST(1100.00 AS Decimal(18, 2)), CAST(1300.00 AS Decimal(18, 2)), 40, 1, 2)
INSERT [dbo].[Product] ([Id], [Name], [Purchase], [Sale], [Stock], [Status], [CategoryId]) VALUES (4, N'Dell', CAST(800.00 AS Decimal(18, 2)), CAST(900.00 AS Decimal(18, 2)), 35, 1, 2)
INSERT [dbo].[Product] ([Id], [Name], [Purchase], [Sale], [Stock], [Status], [CategoryId]) VALUES (5, N'Iphone', CAST(600.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 70, 1, 1)
INSERT [dbo].[Product] ([Id], [Name], [Purchase], [Sale], [Stock], [Status], [CategoryId]) VALUES (6, N'Xiomi', CAST(800.00 AS Decimal(18, 2)), CAST(1100.00 AS Decimal(18, 2)), 80, 1, 1)
INSERT [dbo].[Product] ([Id], [Name], [Purchase], [Sale], [Stock], [Status], [CategoryId]) VALUES (7, N'Samsung', NULL, NULL, 60, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Purchase], [Sale], [Stock], [Status], [CategoryId]) VALUES (8, N'HP', NULL, NULL, 20, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Purchase], [Sale], [Stock], [Status], [CategoryId]) VALUES (9, NULL, NULL, NULL, 50, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Purchase], [Sale], [Stock], [Status], [CategoryId]) VALUES (11, NULL, NULL, NULL, 30, NULL, NULL)
INSERT [dbo].[Product] ([Id], [Name], [Purchase], [Sale], [Stock], [Status], [CategoryId]) VALUES (12, NULL, NULL, NULL, 70, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[TBLStock] ([TotalProduct]) VALUES (140)
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Sell]  WITH CHECK ADD  CONSTRAINT [FK_Sell_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Sell] CHECK CONSTRAINT [FK_Sell_Customer]
GO
ALTER TABLE [dbo].[Sell]  WITH CHECK ADD  CONSTRAINT [FK_Sell_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Sell] CHECK CONSTRAINT [FK_Sell_Product]
GO
