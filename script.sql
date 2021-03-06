USE [webnangcao]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Categorys]
GO
ALTER TABLE [dbo].[User] DROP CONSTRAINT [DF_User_CreateDate]
GO
ALTER TABLE [dbo].[questionandanswer] DROP CONSTRAINT [DF_questionandanswer_CreateDate]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_PromotionPrice]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_Tophot]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_CreateDate]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_Status]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_Quantity]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_Price]
GO
ALTER TABLE [dbo].[OurChefs] DROP CONSTRAINT [DF_OurChefs_CreateDate]
GO
ALTER TABLE [dbo].[OderDetail] DROP CONSTRAINT [DF_OderDetail_Quantity]
GO
ALTER TABLE [dbo].[FeedBack] DROP CONSTRAINT [DF_FeedBack_CreateDate]
GO
ALTER TABLE [dbo].[Email] DROP CONSTRAINT [DF_Email_CreateDate]
GO
ALTER TABLE [dbo].[Detail] DROP CONSTRAINT [DF_Detail_CreateDate]
GO
ALTER TABLE [dbo].[Content] DROP CONSTRAINT [DF_Content_CreateDate]
GO
ALTER TABLE [dbo].[Categorys] DROP CONSTRAINT [DF_Categorys_ShowOnHome]
GO
ALTER TABLE [dbo].[Categorys] DROP CONSTRAINT [DF_Categorys_Status]
GO
ALTER TABLE [dbo].[Categorys] DROP CONSTRAINT [DF_Categorys_CreateDate]
GO
ALTER TABLE [dbo].[Categorys] DROP CONSTRAINT [DF_Categorys_DisplayOrder]
GO
ALTER TABLE [dbo].[CategoryDetail] DROP CONSTRAINT [DF_CategoryDetail_Status]
GO
ALTER TABLE [dbo].[CategoryDetail] DROP CONSTRAINT [DF_CategoryDetail_CreateDate]
GO
ALTER TABLE [dbo].[About] DROP CONSTRAINT [DF_About_CreateDate]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[Slidebar]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[Slidebar]
GO
/****** Object:  Table [dbo].[questionandanswer]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[questionandanswer]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[OurChefs]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[OurChefs]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[OderDetail]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[OderDetail]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[MenuType]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[Menu]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[Footer]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[FeedBack]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[Email]
GO
/****** Object:  Table [dbo].[Detail]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[Detail]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[ContentTag]
GO
/****** Object:  Table [dbo].[ContentDetail]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[ContentDetail]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[Content]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[Contact]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[Categorys]
GO
/****** Object:  Table [dbo].[CategoryDetail]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[CategoryDetail]
GO
/****** Object:  Table [dbo].[About]    Script Date: 22/12/2020 7:41:54 CH ******/
DROP TABLE [dbo].[About]
GO
/****** Object:  Table [dbo].[About]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[DesCription] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Detail] [text] NULL,
	[Images] [nvarchar](250) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoryDetail]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MetaTitle] [nvarchar](50) NULL,
	[DetailID] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
	[DesCription] [nvarchar](max) NULL,
	[Question] [nvarchar](50) NULL,
	[answer] [nvarchar](250) NULL,
	[Images] [nvarchar](250) NULL,
 CONSTRAINT [PK_CategoryDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorys](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[ParentID] [bigint] NOT NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [char](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_Categorys] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[content] [ntext] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Content]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[DesCription] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Detail] [text] NULL,
	[Images] [nvarchar](250) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContentDetail]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentDetail](
	[Id] [int] NULL,
	[Description] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] IDENTITY(1,1) NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Detail]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Email]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email1] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Content] [nvarchar](250) NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Footer]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [ntext] NULL,
	[Link] [nvarchar](50) NULL,
	[DisPlayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OderDetail]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OderDetail](
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMoblie] [varchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OurChefs]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OurChefs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LinkFb] [nvarchar](250) NULL,
	[LinkInstagam] [nvarchar](250) NULL,
	[LinkSwithter] [nvarchar](250) NULL,
	[office] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Phone] [int] NULL,
	[Image] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Descripton] [nvarchar](max) NULL,
 CONSTRAINT [PK_OurChefs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[DesCription] [nvarchar](250) NULL,
	[Images] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[CategoryID] [bigint] NULL,
	[MetaTitle] [varchar](50) NULL,
	[Detail] [text] NULL,
	[Code] [varchar](20) NULL,
	[Warranty] [int] NULL,
	[Status] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [char](250) NULL,
	[Tophot] [datetime] NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[questionandanswer]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questionandanswer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Subject] [nchar](10) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_questionandanswer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slidebar]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slidebar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](50) NULL,
	[title] [nvarchar](50) NULL,
	[stastus] [bit] NULL,
 CONSTRAINT [PK_Slidebar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 22/12/2020 7:41:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[PassWord] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([ID], [Name], [Quantity], [DesCription], [CreateDate], [Detail], [Images]) VALUES (2, N'about1', 1, N'xx', CAST(0x0000AC8D012AA6AE AS DateTime), NULL, N'dishes1.jpg')
SET IDENTITY_INSERT [dbo].[About] OFF
SET IDENTITY_INSERT [dbo].[CategoryDetail] ON 

INSERT [dbo].[CategoryDetail] ([ID], [Name], [MetaTitle], [DetailID], [CreateBy], [CreateDate], [Status], [DesCription], [Question], [answer], [Images]) VALUES (1, N'Fresh Food Services', N'qualiity service', 1, N'admin', CAST(0x0000AC8B01639BB9 AS DateTime), 1, N'Lorem ipsum dolor sit amet, consectetLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', N'Which material types can you work with? ', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. incididunt ut labore et dolore magna aliqua.', N'services-details.jpg')
SET IDENTITY_INSERT [dbo].[CategoryDetail] OFF
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (2, N'pizza', N'rat ngon', 1, NULL, NULL, CAST(0x0000AC8E00000000 AS DateTime), NULL, NULL, N'pizza-1', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (10002, N'appetizer', N'rat ngon', 2, NULL, N'mon khai vi', NULL, N'admin', NULL, N'pizza-2', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20002, N'Salaz', N'rat ngon', 3, NULL, N'rau salack', CAST(0x0000AC8D016B8909 AS DateTime), NULL, NULL, N'pizza-3', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20003, N'Spaghetti', N'rat ngon', 4, 0, N'my y', CAST(0x0000AC8E0083D2F0 AS DateTime), N'admin', NULL, N'pizza-4', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20004, N'Desserts', N'rat ngon', 5, 0, N'mon trang mieng', CAST(0x0000AC8E00841958 AS DateTime), N'admin', NULL, N'pzza-5', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20005, N'Drink', N'rat ngon', 6, 0, N'thuc uong ', CAST(0x0000AC8E00843BC3 AS DateTime), N'admin', NULL, N'pizza-6', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20006, N'More dishes', N'rar ngon', 7, 0, N'mon khac', CAST(0x0000AC8E00846876 AS DateTime), N'admin', NULL, N'pizza-7', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20007, N'Market', N'rat ngonn', 8, 0, N'cho', CAST(0x0000AC8E00848D2E AS DateTime), N'admin', NULL, N'pizza-8', NULL, 1, 1)
INSERT [dbo].[Categorys] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20008, N'Pizza Combo', N'rat ngon ', 9, 0, N'combo pizza', CAST(0x0000AC8E0084B1D2 AS DateTime), N'admin', NULL, N'pizza-9', NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Categorys] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [content], [status]) VALUES (1, N'<p>Company: Tập đoàn Tuấn Tâm Group</p>Email: tamcb2708@gmail.com</p>Phone: 0355978258</p>', 1)
INSERT [dbo].[Contact] ([ID], [content], [status]) VALUES (2, N'<p>Phone: 0355978258</p>', NULL)
INSERT [dbo].[Contact] ([ID], [content], [status]) VALUES (3, N'<p>Email: tamcb2708@gmail.com</p>', NULL)
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([ID], [Name], [Quantity], [DesCription], [CreateDate], [Detail], [Images]) VALUES (1, N'content1', 1, N'xxxxxx', CAST(0x0000AC9300DC6F07 AS DateTime), N'1', N'dishes1.jpg')
SET IDENTITY_INSERT [dbo].[Content] OFF
SET IDENTITY_INSERT [dbo].[Detail] ON 

INSERT [dbo].[Detail] ([ID], [Name], [CreateDate], [CreateBy], [Status]) VALUES (1, N'
                                            Quality Service
                                            ', CAST(0x0000AC8C00D3B6A7 AS DateTime), NULL, 1)
INSERT [dbo].[Detail] ([ID], [Name], [CreateDate], [CreateBy], [Status]) VALUES (2, N'
                                            Free Home Delivery
                                            ', CAST(0x0000AC8C00D3C8CA AS DateTime), NULL, 1)
INSERT [dbo].[Detail] ([ID], [Name], [CreateDate], [CreateBy], [Status]) VALUES (3, N'
                                            Discount Voucher
                                            ', CAST(0x0000AC9000D44990 AS DateTime), NULL, 1)
INSERT [dbo].[Detail] ([ID], [Name], [CreateDate], [CreateBy], [Status]) VALUES (4, N'
                                            Party Center
                                            ', CAST(0x0000AC9000D46199 AS DateTime), NULL, 1)
INSERT [dbo].[Detail] ([ID], [Name], [CreateDate], [CreateBy], [Status]) VALUES (5, N'
                                            Conference Convention
                                            ', CAST(0x0000AC9000D476A1 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Detail] OFF
SET IDENTITY_INSERT [dbo].[Email] ON 

INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (1, N'tamcb2708@gmail.co', CAST(0x0000AC990126C395 AS DateTime))
INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (2, N'tamcb2707@gmail.com', CAST(0x0000AC990126CDE7 AS DateTime))
INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (3, N'tamcb@gmail.com', CAST(0x0000AC990126D4BF AS DateTime))
INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (4, N'tamcb11@gmail.com', CAST(0x0000AC990126DAB2 AS DateTime))
INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (5, N'tamcb061201@gmail.com', CAST(0x0000AC990126E4DA AS DateTime))
INSERT [dbo].[Email] ([ID], [Email1], [CreateDate]) VALUES (6, N'tamcbbka@gmail.com', CAST(0x0000AC990126F92E AS DateTime))
SET IDENTITY_INSERT [dbo].[Email] OFF
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([ID], [Name], [Phone], [Email], [Address], [CreateDate], [Content]) VALUES (1, N'tuan tam', 982374911, N'tmacb2708@gmail.com', N'đàadsfads', CAST(0x0000AC8F010129E5 AS DateTime), N'xxxxxxxxxx')
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (1, N'Home', N'/', 1, N'_blank', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (2, N'About', N'/about', 2, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (3, N'Team', N'/team', 3, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (4, N'Services', N'/services-details', 4, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (5, N'Menu', N'/menu', 5, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (6, N'Blog', N'/blog', 6, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (7, N'Contact', N'/contact', 7, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (8, N'About Company', N'/about-company', 1, N'_self', 1, 3)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (9, N'Serviecs', N'/services-details', 2, N'_self', 1, 3)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (10, N'Shop', N'/shop', 3, N'_self', 1, 3)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (11, N'Faq', N'/faq', 4, N'_self', 1, 3)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (12, N'Blog', N'/blog', 5, N'_self', 1, 3)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (13, N'Gallery', N'/gallery', 6, N'_self', 1, 3)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (14, N'Login', N'/dang-nhap', 1, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (15, N'Register', N'/dang-ky', 2, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisPlayOrder], [Target], [Status], [TypeID]) VALUES (16, N'FAQ', N'/faq', 8, N'_self', 1, 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu Chinh')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu Top')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (3, N'Menu Footer')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20002, 10, 13, CAST(19 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20002, 11, 1, CAST(19 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20002, 12, 1, CAST(19 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20007, 14, 10, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20008, 1, 1, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20008, 3, 2, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20010, 4, 1, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20010, 5, 1, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20020, 2, 3, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20020, 6, 1, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20020, 7, 1, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20020, 8, 1, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[OderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20020, 9, 1, CAST(1000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (1, CAST(0x0000AC8E0181FAC0 AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', N'tmacb2708@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (2, CAST(0x0000AC8E01854247 AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', N'tam2708@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (3, CAST(0x0000AC8F00B29111 AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', N'duyton2507@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (4, CAST(0x0000AC8F00B36B6A AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', N'duyton2507@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (5, CAST(0x0000AC8F00B453BA AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', N'duyton2507@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (6, CAST(0x0000AC8F00B58672 AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', N'duyton2507@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (7, CAST(0x0000AC8F00B6DA6D AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', N'duyton2507@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (8, CAST(0x0000AC8F00B8AA14 AS DateTime), NULL, N'duy ton', N'0982374911', N'ha noi', N'duyton2507@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (9, CAST(0x0000AC8F00C3F65E AS DateTime), NULL, N'tâm nguyễn', N'0982374911', N'hải phòng', N'tamcb061201@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (10, CAST(0x0000AC920128849B AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', N'tamcb0612@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (11, CAST(0x0000AC92012DA7FF AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', N'tmacb2708@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (12, CAST(0x0000AC92012DFE5D AS DateTime), NULL, N'sinh', N'0982374911', N'adadsa', N'tmacb2708@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (13, CAST(0x0000AC920131380A AS DateTime), NULL, N'sinh nguyen', N'0982374911', N'adadsa', N'tmacb2708@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreateDate], [CustomerID], [ShipName], [ShipMoblie], [ShipAddress], [ShipEmail], [Status]) VALUES (14, CAST(0x0000AC920131E511 AS DateTime), NULL, N'tam nguyen', N'0982374911', N'adadsa', N'tmacb2708@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OurChefs] ON 

INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (1, N'Justin Roberto', NULL, NULL, NULL, N'Assistant Chef', CAST(0x0000AC8D012AB933 AS DateTime), 982374911, N'team1.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (2, N'Jamie Oliver', NULL, NULL, NULL, N'Assistant Chef', CAST(0x0000AC8D012ABD0D AS DateTime), NULL, N'team2.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (3, N'Wolfgang Puck', NULL, NULL, NULL, N'Assistant Chef', CAST(0x0000AC8D012ABFF9 AS DateTime), NULL, N'team3.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (4, N'Nicolas Appert', NULL, NULL, NULL, N'Sous Chef', CAST(0x0000AC8D012F8FFB AS DateTime), NULL, N'client1.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (5, N'Grant Achatz', NULL, NULL, NULL, N'Kitchen Manager', CAST(0x0000AC8D012F9A74 AS DateTime), NULL, N'client2.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (6, N'James Beard', NULL, NULL, NULL, N'NULLAssistant Manager', CAST(0x0000AC8D012FA790 AS DateTime), NULL, N'client3.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (7, N'James Ramsay
', NULL, NULL, NULL, N'Founder & CEO', CAST(0x0000AC8D012FBDE0 AS DateTime), NULL, N'team3.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (8, N'Jamie Oliver', NULL, NULL, NULL, N'Head Of Chef', CAST(0x0000AC8D012FCBFF AS DateTime), NULL, N'team4.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (9, N'James Ramsay
', NULL, NULL, NULL, N'Assistant Chef', CAST(0x0000AC8D012FD44F AS DateTime), NULL, N'team5.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (10, N'Wolfgang Puck', NULL, NULL, NULL, N'Assistant Chef', CAST(0x0000AC8D012FDD19 AS DateTime), NULL, N'team6.jpg', NULL, NULL, N'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (11, N'Jamie Oliver
', NULL, NULL, NULL, N'Founder & CEO', CAST(0x0000AC8D012FE4B3 AS DateTime), NULL, N'team7.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum')
INSERT [dbo].[OurChefs] ([ID], [Name], [LinkFb], [LinkInstagam], [LinkSwithter], [office], [CreateDate], [Phone], [Image], [Email], [Address], [Descripton]) VALUES (12, N'John Martin
', NULL, NULL, NULL, N'Head Of Chef', CAST(0x0000AC8D012FEE8C AS DateTime), 355978258, N'team8.jpg', NULL, NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  ipsume ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem Ipsum is simply dummy printing and typesetting industry.')
SET IDENTITY_INSERT [dbo].[OurChefs] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (1, N'Top Siren Snacks', N'Hot Big Full Plater Cosmos', N'dishes1.jpg', NULL, CAST(35 AS Decimal(18, 0)), 100, 2, N'Breakfast', NULL, NULL, NULL, 1, CAST(0x0000AC8D011EE14B AS DateTime), N'Tâm', NULL, N'x', N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (2, N'Mexican Mix Rice', N'Hot Big Full Plater Cosmos', N'dishes2.jpg', N'100000', CAST(36 AS Decimal(18, 0)), 100, 2, N'Lunch', NULL, NULL, NULL, 1, CAST(0x0000AC8D011EE14B AS DateTime), N'Tâm', NULL, N'x', N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (10002, N'Strap Snacks', N'Hot Big Full Plater Cosmos', N'dishes3.jpg', N'100000', CAST(30 AS Decimal(18, 0)), 100, 2, N'Dinner
', NULL, NULL, NULL, 1, CAST(0x0000AC8D011EE14B AS DateTime), N'Tâm', NULL, N'x', N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', NULL, NULL)
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20002, N'Cheese & Chicken', N'Hot Big Full Plater Cosmos', N'dishes4.jpg', NULL, CAST(19 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC8D011EE14B AS DateTime), N'Tâm', NULL, N'x', N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D011EE14B AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20003, N'Deluxe Veggie', N'Hot Big Full Plater Cosmos', N'dishes5.jpg', NULL, CAST(20 AS Decimal(18, 0)), 100, 2, N'Breakfast', NULL, NULL, NULL, 1, CAST(0x0000AC8D011F0C0E AS DateTime), N'Tâm', NULL, N'x', N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D011F0C0E AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20004, N'Capricciosa', N'Hot Big Full Plater Cosmos', N'dishes6.jpg', NULL, CAST(17 AS Decimal(18, 0)), 100, 2, N'Lunch', NULL, NULL, NULL, 1, CAST(0x0000AC8D011F2E97 AS DateTime), N'Tâm', NULL, N'x', N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D011F2E97 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20007, N'Peppy Paneer', N'Hot Big Full Plater Cosmos', N'dishes7.jpg', NULL, CAST(20 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC8D011F5D18 AS DateTime), N'Tâm', NULL, N'x', N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D011F5D18 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20008, N'Capricciosa', N'Hot Big Full Plater Cosmos', N'dishes6.jpg', NULL, CAST(56 AS Decimal(18, 0)), 100, 2, N'Lunch', NULL, NULL, NULL, 1, CAST(0x0000AC8D012049FC AS DateTime), N'Tâm', NULL, N'x', N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D012049FC AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20009, N'Peppy Paneer', N'Hot Big Full Plater Cosmos', N'dishes7.jpg', NULL, CAST(80 AS Decimal(18, 0)), 110, 2, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC8D012076D6 AS DateTime), N'Tâm', NULL, N'x', N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D012076D6 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20010, N'Peppy Paneer', N'Hot Big Full Plater Cosmos', N'dishes8.jpg', NULL, CAST(19 AS Decimal(18, 0)), 110, 2, N'Lunch', NULL, NULL, NULL, 1, CAST(0x0000AC8D0120AD7F AS DateTime), N'Tâm', NULL, N'x', N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D0120AD7F AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20011, N'Beef Burger', N'Hot Big Full Plater Cosmos', N'dishes8.jpg', NULL, CAST(30 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC8D0120CD8F AS DateTime), N'Tâm', NULL, N'x', N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D0120CD8F AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20012, N'Peppy Paneer', N'Hot Big Full Plater Cosmos', N'dishes8.jpg', NULL, CAST(100 AS Decimal(18, 0)), 100, 2, N'ngon', NULL, NULL, NULL, 1, CAST(0x0000AC8D0120EAD0 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D0120EAD0 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20013, N'Peppy Paneer', N'Hot Big Full Plater Cosmos', N'dishes8.jpg', NULL, CAST(23 AS Decimal(18, 0)), 100, 2, N'ngon', NULL, NULL, NULL, 1, CAST(0x0000AC8D0120F60B AS DateTime), N'Tâm', NULL, NULL, NULL, CAST(0x0000AC8D0120F60B AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20014, N'Peppy Paneer', N'Hot Big Full Plater Cosmos', N'dishes8.jpg', NULL, CAST(27 AS Decimal(18, 0)), 100, 2, N'ngon', NULL, NULL, NULL, 1, CAST(0x0000AC8D01214475 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D01214475 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20015, N'Peppy Paneer', N'Hot Big Full Plater Cosmos', N'dishes8.jpg', NULL, CAST(90 AS Decimal(18, 0)), 100, 2, N'ngon', NULL, NULL, NULL, 1, CAST(0x0000AC8D012275C1 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D00000000 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20016, N'Garlic Fingers', N'Hot Big Full Plater Cosmos', N'dishes8.jpg', NULL, CAST(75 AS Decimal(18, 0)), 100, 2, N'Lunch', NULL, NULL, NULL, 1, CAST(0x0000AC8D01229FBE AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D01229FBE AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20017, N'Pizza Rustica', N'Hot Big Full Plater Cosmos', N'menu10.jpg', NULL, CAST(65 AS Decimal(18, 0)), 100, 2, N'Lunch', NULL, N'x', NULL, 1, CAST(0x0000AC8D0122C8A4 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D0122C8A4 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20018, N'Prosciutto Funghi Pizza', N'Hot Big Full Plater Cosmos', N'menu9.jpg', NULL, CAST(75 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, N'x', NULL, 1, CAST(0x0000AC8D0122F855 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D0122F855 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20019, N'Pizza Alla Pala', N'Hot Big Full Plater Cosmos', N'menu6.jpg', NULL, CAST(65 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, N'xxxx', NULL, 1, CAST(0x0000AC8D01231D99 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D01231D99 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20020, N'Pizza Alla Pala', N'Hot Big Full Plater Cosmos', N'menu8.jpg', NULL, CAST(45 AS Decimal(18, 0)), 100, 2, N'Breakfast', NULL, N'x', NULL, 1, CAST(0x0000AC8D0123AEDC AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D0123AEDC AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20021, N'Pizza2-', N'Hot Big Full Plater Cosmos', N'menu7.jpg', NULL, CAST(35 AS Decimal(18, 0)), 100, 2, N'Breakfast', NULL, N'x', NULL, 1, CAST(0x0000AC8D0123E855 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D0123E855 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20022, N'Pizza Al Tonno', N'Hot Big Full Plater Cosmos', N'menu6.jpg', NULL, CAST(30 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, N'xxxx', NULL, 1, CAST(0x0000AC8D01240EC4 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D01240EC4 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20023, N'Egg Cheese Bread', N'Hot Big Full Plater Cosmos', N'menu5.jpg', NULL, CAST(75 AS Decimal(18, 0)), 100, 2, N'Lunch', NULL, N'xxxx', NULL, 1, CAST(0x0000AC8D01242F34 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D01242F34 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20024, N'Chicken Pizza', N'Hot Big Full Plater Cosmos', N'menu4.jpg', NULL, CAST(65 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, N'xxxx', NULL, 1, CAST(0x0000AC8D01244C29 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D01244C29 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20025, N'Mushroom Pizza', N'Hot Big Full Plater Cosmos', N'menu3.jpg', NULL, CAST(45 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, N'xxxx', NULL, 1, CAST(0x0000AC8D01246A2B AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D01246A2B AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20026, N'Cheeseburger Stack', N'Hot Big Full Plater Cosmos', N'menu2.jpg', NULL, CAST(35 AS Decimal(18, 0)), 100, 2, N'Lunch', NULL, N'xxxx', NULL, 1, CAST(0x0000AC8D01248E5C AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D01248E5C AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20027, N'Beef Burger Stack', N'Hot Big Full Plater Cosmos', N'menu1.jpg', NULL, CAST(30 AS Decimal(18, 0)), 100, 2, N'Breakfast', NULL, N'xxxx', NULL, 1, CAST(0x0000AC8D0124B3DA AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D0124B3DA AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20028, N'Mercy Margarita', N'Smoked mozzarella, basil, and pecorino Romano', N'pizza1.png', NULL, CAST(21 AS Decimal(18, 0)), 100, 2, N'Lunch', NULL, NULL, NULL, 0, CAST(0x0000AC8D0124CE5D AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D0124CE5D AS DateTime), CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20029, N'Calzone', N'Smoked mozzarella, basil, and pecorino Romano', N'pizza1.png', NULL, CAST(25 AS Decimal(18, 0)), 100, 2, N'Lunch', NULL, NULL, NULL, 0, CAST(0x0000AC8D0124EA71 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D0124EA71 AS DateTime), CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20030, N'White Ricotta Pizza', N'Smoked mozzarella, basil, and pecorino Romano', N'pizza1.png', NULL, CAST(30 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, NULL, NULL, 0, CAST(0x0000AC8D0125220D AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D0125220D AS DateTime), CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20031, N'Okaya Smokey Pizza', N'Smoked mozzarella, basil, and pecorino Romano

', N'pizza1.png', NULL, CAST(35 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, NULL, NULL, 0, CAST(0x0000AC8D01254946 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC8D01254946 AS DateTime), CAST(3 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20032, N'Tomato Pizza', N'Hot Big Full Plater Cosmos', N'blog3.jpg', NULL, CAST(20 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, NULL, 3, 1, CAST(0x0000AC9000BDD360 AS DateTime), N'Tâm', NULL, NULL, N'Role of Genetics in treating Low-grade glioma                                                                                                                                                                                                             ', CAST(0x0000AC9000BDD360 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20033, N'Ribr Rice', N'Hot Big Full Plater Cosmos', N'blog1.jpg', NULL, CAST(56 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, NULL, 1, 1, CAST(0x0000AC9000BE3157 AS DateTime), N'Tâm', NULL, NULL, N' Restaurant in this city right now So we scour the city                                                                                                                                                                                                   ', CAST(0x0000AC9000BE3157 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20034, N'Egg Tarts', N'Hot Big Full Plater Cosmos', N'blog2.jpg', NULL, CAST(12 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, NULL, 2, 1, CAST(0x0000AC9000BE7988 AS DateTime), N'Tâm', NULL, NULL, N'Better hot drink elegant you can order by online                                                                                                                                                                                                          ', CAST(0x0000AC9000BE7988 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20035, N'Cheess Pizza', N'Hot Big Full Plater Cosmos', N'blog4.jpg', NULL, CAST(89 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, NULL, 4, 1, CAST(0x0000AC9000BEBBC1 AS DateTime), N'Tâm', NULL, NULL, N'Restaurant in this city right now So we scour the city                                                                                                                                                                                                    ', CAST(0x0000AC9000BEBBC1 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20036, N'People Pizza', N'Hot Big Full Plater Cosmos', N'blog5.jpg', NULL, CAST(110 AS Decimal(18, 0)), 100, 2, N'Dinner', NULL, NULL, 5, 1, CAST(0x0000AC9000BEDA09 AS DateTime), N'Tâm', NULL, NULL, N'Better hot drink elegant you can order by online                                                                                                                                                                                                          ', CAST(0x0000AC9000BEDA09 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20042, N'combo1', N'combo1', N'pizza1.png', NULL, CAST(100 AS Decimal(18, 0)), 100, 20008, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC9200B8C6D7 AS DateTime), N'Tâm', NULL, NULL, N'online                                                                                                                                                                                                                                                    ', CAST(0x0000AC9200B8C6D7 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20043, N'combo2', N'combo2', N'pizza1.png', NULL, CAST(100 AS Decimal(18, 0)), 100, 10002, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC9200BA3E91 AS DateTime), N'Tâm', NULL, NULL, NULL, CAST(0x0000AC9200BA3E91 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20044, N'combo3', N'combo3', N'pizza1.png', NULL, CAST(120 AS Decimal(18, 0)), 100, 20003, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC9200BA7EF1 AS DateTime), N'Tâm', NULL, NULL, NULL, CAST(0x0000AC9200BA7EF1 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20045, N'combo4', N'combo4', N'pizza1.png', NULL, CAST(130 AS Decimal(18, 0)), 100, 20004, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC9200BAA9B9 AS DateTime), N'Tâm', NULL, NULL, NULL, CAST(0x0000AC9200BAA9B9 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20046, N'côm6', N'combo6', N'pizza1.png', NULL, CAST(100 AS Decimal(18, 0)), 100, 20005, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC9200BADC02 AS DateTime), N'Tâm', NULL, NULL, NULL, CAST(0x0000AC9200BADC02 AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20047, N'combo7', NULL, N'pizza1.png', NULL, CAST(100 AS Decimal(18, 0)), 100, 20006, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC9200BAFD5E AS DateTime), N'Tâm', NULL, NULL, NULL, CAST(0x0000AC9200BAFD5E AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20048, N'Combo8', N'combo8', N'pizza1.png', NULL, CAST(100 AS Decimal(18, 0)), 100, 20007, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC9200BB24DD AS DateTime), N'Tâm', NULL, NULL, NULL, CAST(0x0000AC9200BB24DD AS DateTime), CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ID], [Name], [DesCription], [Images], [MoreImages], [Price], [Quantity], [CategoryID], [MetaTitle], [Detail], [Code], [Warranty], [Status], [CreateDate], [CreateBy], [ModifiedDate], [MetaKeywords], [MetaDescriptions], [Tophot], [PromotionPrice]) VALUES (20049, N'xxxx', N'xxxx', N'pizza1.png', NULL, CAST(100 AS Decimal(18, 0)), 100, 20008, N'Dinner', NULL, NULL, NULL, 1, CAST(0x0000AC9200C4B0DB AS DateTime), N'Tâm', NULL, NULL, N'online                                                                                                                                                                                                                                                    ', CAST(0x0000AC9200C4B0DB AS DateTime), CAST(0 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[questionandanswer] ON 

INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (1, N' Expenses as material breeding insisted building to', N' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', CAST(0x0000AC92014124A8 AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (2, N'What Access Do I Have On The Free Plan ?', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', CAST(0x0000AC920141DCF3 AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (3, N'Can I get support from the Author?', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', CAST(0x0000AC92014237B8 AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (4, N'Why Choose Our Services In Your Business?', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', CAST(0x0000AC9201425D6F AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (5, N'It surprise informed mr advanced do outweigh.', N' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', CAST(0x0000AC9201426BF4 AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (6, N' Expenses as material breeding insisted building to', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', CAST(0x0000AC9201429AA9 AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[questionandanswer] ([ID], [Question], [Answer], [CreateDate], [Name], [Email], [Phone], [Subject], [status]) VALUES (7, N'sssssssssss', NULL, CAST(0x0000AC9201564B11 AS DateTime), N'tam nguyen', N'tmacb2708@gmail.com', 982374911, N'ssssssssss', 0)
SET IDENTITY_INSERT [dbo].[questionandanswer] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (4, N'18810340547', N'25f9e794323b453885f5181f1b624d0b', N'tam nguyen', N'adadsa', N'tmacb270800@gmail.com', N'0982374911', NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10005, N'admin', N'c4ca4238a0b923820dcc509a6f75849b', N'Tam nnguyen', N'asawa', N'tamcb2708@gmail.com', N'0355978258', CAST(0x0000AC8C0102CDEE AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10006, NULL, N'123456', N'tam nguyen', N'adadsa', N'tmacb2708@gmail.com', N'0982374911', CAST(0x0000AC8F011911CC AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10007, NULL, N'123456', N'tam nguyen', N'adadsa', N'tmacb27081@gmail.com', N'0982374911', CAST(0x0000AC8F0119E14B AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10008, N'1881051', N'123456', N'tam nguyen', N'adadsa', N'tmacb2708001@gmail.com', N'0982374911', CAST(0x0000AC8F011B4019 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10009, N'tai', N'123456', N'tam nguyen', N'adadsa', N't708@gmail.com', N'0982374911', CAST(0x0000AC8F01213FDB AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [Name], [Address], [Email], [Phone], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (10010, N'tai1', N'123456', N'tam nguyen', N'adadsa', N't2708@gmail.com', N'0982374911', CAST(0x0000AC8F0123023F AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[CategoryDetail] ADD  CONSTRAINT [DF_CategoryDetail_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[CategoryDetail] ADD  CONSTRAINT [DF_CategoryDetail_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [DF_Categorys_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [DF_Categorys_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [DF_Categorys_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Categorys] ADD  CONSTRAINT [DF_Categorys_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Detail] ADD  CONSTRAINT [DF_Detail_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Email] ADD  CONSTRAINT [DF_Email_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[FeedBack] ADD  CONSTRAINT [DF_FeedBack_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[OderDetail] ADD  CONSTRAINT [DF_OderDetail_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OurChefs] ADD  CONSTRAINT [DF_OurChefs_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Tophot]  DEFAULT (getdate()) FOR [Tophot]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_PromotionPrice]  DEFAULT ((0)) FOR [PromotionPrice]
GO
ALTER TABLE [dbo].[questionandanswer] ADD  CONSTRAINT [DF_questionandanswer_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Categorys] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categorys] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Categorys]
GO
