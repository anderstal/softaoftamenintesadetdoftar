
USE [sweproteindb]
GO
/****** Object:  Table [dbo].[tbActive]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbActive](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbCampaign]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCampaign](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
	[sImgURL] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbOfferCodes]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOfferCodes](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[sStatus] [nvarchar](40) NULL,
	[iActive] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbOrder]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrder](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[iUserID] [int] NOT NULL,
	[iStatus] [int] NOT NULL,
	[iSum] [int] NULL,
	[dtOrderDate] [datetime] NULL,
	[iGuestOrder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbProduct]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbProduct](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[iProductType] [int] NULL,
	[sProductBrand] [nvarchar](50) NULL,
	[sName] [nvarchar](50) NULL,
	[iPrice] [int] NULL,
	[sPicture] [nvarchar](200) NULL,
	[sDescription] [nvarchar](500) NULL,
	[iStockBalance] [int] NULL,
	[iItemsSold] [int] NULL,
	[iCount] [int] NULL,
	[iTaste] [int] NULL,
	[sMoreInfo] [nvarchar](2000) NULL,
	[iCampaign] [int] NULL,
	[iProductCategory] [int] NULL,
	[iPoints] [int] NULL,
	[iActive] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbProductCategory]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbProductCategory](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbProductOrder]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbProductOrder](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[iOrderID] [int] NOT NULL,
	[iProductID] [int] NOT NULL,
	[iQuantity] [int] NOT NULL,
	[iPrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbProductType]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbProductType](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[sName] [nvarchar](100) NOT NULL,
	[iProductCategory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbStatus]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbStatus](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[sStatus] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbTaste]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbTaste](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[sTaste] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbUserInfo]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUserInfo](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[iUserID] [int] NOT NULL,
	[sFirstName] [nvarchar](70) NULL,
	[sLastName] [nvarchar](70) NULL,
	[sAdress] [nvarchar](70) NULL,
	[sPostalNumber] [nvarchar](10) NULL,
	[sCity] [nvarchar](50) NULL,
	[sEmail] [nvarchar](50) NULL,
	[sTelephone] [nvarchar](50) NULL,
	[iTotalPurchase] [int] NULL,
	[iNewsOffers] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 2014-05-05 13:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbActive] ON 

INSERT [dbo].[tbActive] ([iID], [sName]) VALUES (1, N'Aktiv')
INSERT [dbo].[tbActive] ([iID], [sName]) VALUES (2, N'Inaktiv')
SET IDENTITY_INSERT [dbo].[tbActive] OFF
SET IDENTITY_INSERT [dbo].[tbCampaign] ON 

INSERT [dbo].[tbCampaign] ([iID], [sName], [sImgURL]) VALUES (1, N'stimutant', N'/Images/Campaign/180x200pxStimutantQ2.jpg')
INSERT [dbo].[tbCampaign] ([iID], [sName], [sImgURL]) VALUES (2, N'get1free', N'/Images/Campaign/180PVL_Kreabolic_q214_gsde.jpg')
INSERT [dbo].[tbCampaign] ([iID], [sName], [sImgURL]) VALUES (3, N'mp3lurar', N'/Images/Campaign/GGSE_2_180_Jaybird.jpg')
INSERT [dbo].[tbCampaign] ([iID], [sName], [sImgURL]) VALUES (4, N'gymhuset', N'/Images/Campaign/gymhusetrea2.jpg')
INSERT [dbo].[tbCampaign] ([iID], [sName], [sImgURL]) VALUES (5, N'slutrea', N'/Images/Campaign/gymhusetrea.jpg')
SET IDENTITY_INSERT [dbo].[tbCampaign] OFF
SET IDENTITY_INSERT [dbo].[tbOrder] ON 

INSERT [dbo].[tbOrder] ([iID], [iUserID], [iStatus], [iSum], [dtOrderDate], [iGuestOrder]) VALUES (3, 1, 3, 2212, CAST(0x0000A31600CFB8ED AS DateTime), NULL)
INSERT [dbo].[tbOrder] ([iID], [iUserID], [iStatus], [iSum], [dtOrderDate], [iGuestOrder]) VALUES (4, 1, 3, 1874, CAST(0x0000A32200DB74E1 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tbOrder] OFF
SET IDENTITY_INSERT [dbo].[tbProduct] ON 

INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (3, 2, N'BSN', N'Amino BSN', 149, N'/images/products/aminobsn.jpg', N'Kortare beskrivning av produkten...', 199, 1, 1, 4, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (4, 2, N'MuscleMeds', N'AMINO Deca', 99, N'/images/products/aminodecanate.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 5, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (5, 2, N'OLIMP', N'Beta-Alanin Xplode', 299, N'/images/products/betaalniepowder.png', N'Kortare beskrivning av produkten...', 199, 1, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (6, 2, N'BioTech', N'Amino Fuel', 129, N'/images/products/biotechamino.jpg', N'Kortare beskrivning av produkten...', 199, 1, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (7, 6, N'BMR', N'DURAMAXX', 349, N'/images/products/bmrduramaxx.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (8, 3, N'ON', N'2:1:1 Recovery', 349, N'/images/products/carbsON.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (9, 3, N'Star Nutrition', N'Malto-Flex Pure', 199, N'/images/products/carbsstar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (10, 4, N'Celsius', N'Celsius BIG-PACK', 89, N'/images/products/celsius.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (11, 4, N'Celsius', N'Celsius', 19, N'/images/products/celsiuscola.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (13, 8, N'Compress', N'B.I.G', 449, N'/images/products/compressbig.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (14, 6, N'Crack', N'Crack', 329, N'/images/products/crack.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (15, 5, N'DS', N'CRAZE', 174, N'/images/products/craze.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (16, 7, N'Star Nutrition', N'Creatin Monohydrate', 89, N'/images/products/creatinestar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (17, 7, N'Star Nutrition', N'Creatine Mono OLD', 45, N'/images/products/creatinmono.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (18, 8, N'EM', N'ELITE MASS', 284, N'/images/products/elitemass.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (19, 1, N'OYMATIZE', N'Elite Whey', 199, N'/images/products/elitewhey.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (20, 8, N'ABB', N'Extreme XXL', 447, N'/images/products/extremexxl.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (21, 9, N'BioTech', N'Mega FAT BURNER', 229, N'/images/products/fatburnermega.png', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (22, 8, N'Dalblads', N'Gainer Explosive', 247, N'/images/products/gainerexplosion.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (23, 8, N'Star Nutrition', N'Gainer Pro', 199, N'/images/products/gainerprostar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (24, 8, N'Twinlab', N'Gainers Fuel', 137, N'/images/products/gainersfueltwinlab.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (25, 9, N'ALR', N'Global Poison', 319, N'/images/products/globalpoisonfat.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (26, 10, N'Goodlife', N'Bars 3-pack', 33, N'/images/products/goodlifebar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (27, 10, N'Goodlife', N'Bars storpack', 139, N'/images/products/goodlifepack.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (28, 1, N'Reflex', N'Instant Whey PRO', 229, N'/images/products/instanstwhey.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', 1, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (29, 1, N'IronMaxx', N'100% Whey Protein', 179, N'/images/products/ironmaxxwhey.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (30, 10, N'Isostar', N'Isostar Bar', 17, N'/images/products/isostarbar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (31, 6, N'RZ', N'Jack3d', 327, N'/images/products/jack3d.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (32, 7, N'Fairing', N'Kreatin', 79, N'/images/products/kreatinfairing.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (33, 7, N'Fairing', N'Kre-alkalyn', 119, N'/images/products/kreatinfairing2.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (34, 9, N'Nutrex', N'Lipo-6X', 327, N'/images/products/lipofatburner.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (35, 5, N'OLIMP', N'MASSACRA', 569, N'/images/products/massacraepisode.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (36, 10, N'Maxim', N'Protein Bar', 19, N'/images/products/maxinproteinbar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (37, 2, N'MuscleTech', N'Amino Build', 127, N'/images/products/muscletechamino.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (38, 2, N'Mutant', N'Mutant Amino', 188, N'/images/products/mutantamino.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (39, 8, N'Mutant', N'Mutant MASS', 356, N'/images/products/mutantmass.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (40, 5, N'Mutant', N'Mutant Mayhem', 264, N'/images/products/mutantmayhem.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (41, 6, N'PN', N'Prodigy PWO', 147, N'/images/products/prodigypwo.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (42, 1, N'PRO', N'Professional WHEY', 139, N'/images/products/professionalwhey.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (43, 4, N'BioTech', N'Protein FUEL', 29, N'/images/products/proteinfuel.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (44, 9, N'Ctrld', N'Purlpe WRAATH', 57, N'/images/products/purlpewrathfat.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (45, 7, N'Star Nutrition', N'Rapid Creatine STORPACK', 247, N'/images/products/rapidcreatinstar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (46, 9, N'Star Nutrition', N'Ripped Hardcore', 99, N'/images/products/rippedhardcore1st.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (47, 9, N'Star Nutrition', N'Ripped Hardcore 2-pack', 172, N'/images/products/rippedhardcore2st.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (48, 2, N'Scitec', N'Amino 5600', 158, N'/images/products/scitecamino.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (49, 2, N'Star Nutrition', N'Amino-Pro Essential', 99, N'/images/products/staramino.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (50, 10, N'Star Nutrition', N'Organic Bar', 14, N'/images/products/starorganicbar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (51, 2, N'USN', N'Nano STACKER', 147, N'/images/products/usnamin.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (52, 1, N'Star Nutrition', N'Whey-80', 199, N'/images/products/whey80.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (53, 1, N'Star Nutrition', N'Whey-80 STORKÖP', 847, N'/images/products/whey80bigpack.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', 1, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (54, 1, N'Star Nutrition', N'Whey-100', 299, N'/images/products/whey100.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (55, 1, N'Star Nutrition', N'100% Whey GOLD', 344, N'/images/products/wheygold.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (56, 10, N'Vitargo', N'Vitargo Bar', 12, N'/images/products/vitargobar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (57, 2, N'BSN', N'Amino BSN', 149, N'/images/products/aminobsn.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (58, 2, N'MuscleMeds', N'AMINO Deca', 99, N'/images/products/aminodecanate.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 3, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (59, 2, N'OLIMP', N'Beta-Alanin Xplode', 299, N'/images/products/betaalniepowder.png', N'Kortare beskrivning av produkten...', 200, 0, 1, 4, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (60, 2, N'BioTech', N'Amino Fuel', 129, N'/images/products/biotechamino.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 6, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (61, 6, N'BMR', N'DURAMAXX', 349, N'/images/products/bmrduramaxx.jpg', N'Kortare beskrivning av produkten...', 198, 2, 1, 5, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (62, 3, N'ON', N'2:1:1 Recovery', 349, N'/images/products/carbsON.jpg', N'Kortare beskrivning av produkten...', 197, 3, 1, 5, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (63, 3, N'Star Nutrition', N'Malto-Flex Pure', 199, N'/images/products/carbsstar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (64, 4, N'Celsius', N'Celsius BIG-PACK', 89, N'/images/products/celsius.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (65, 4, N'Celsius', N'Celsius', 19, N'/images/products/celsiuscola.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (66, 8, N'Compress', N'B.I.G', 449, N'/images/products/compressbig.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (67, 6, N'Crack', N'Crack', 329, N'/images/products/crack.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 4, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (68, 5, N'DS', N'CRAZE', 174, N'/images/products/craze.jpg', N'Kortare beskrivning av produkten...', 196, 4, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (69, 7, N'Star Nutrition', N'Creatin Monohydrate', 89, N'/images/products/creatinestar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 5, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (70, 7, N'Star Nutrition', N'Creatine Mono OLD', 45, N'/images/products/creatinmono.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 6, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (71, 8, N'EM', N'ELITE MASS', 284, N'/images/products/elitemass.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 5, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (72, 1, N'OYMATIZE', N'Elite Whey', 199, N'/images/products/elitewhey.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (73, 8, N'ABB', N'Extreme XXL', 447, N'/images/products/extremexxl.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (74, 9, N'BioTech', N'Mega FAT BURNER', 229, N'/images/products/fatburnermega.png', N'Kortare beskrivning av produkten...', 200, 0, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (75, 8, N'Dalblads', N'Gainer Explosive', 247, N'/images/products/gainerexplosion.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 4, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (76, 8, N'Star Nutrition', N'Gainer Pro', 199, N'/images/products/gainerprostar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 4, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (77, 8, N'Twinlab', N'Gainers Fuel', 137, N'/images/products/gainersfueltwinlab.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 4, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (78, 9, N'ALR', N'Global Poison', 319, N'/images/products/globalpoisonfat.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 5, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (79, 10, N'Goodlife', N'Bars 3-pack', 33, N'/images/products/goodlifebar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 6, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (80, 10, N'Goodlife', N'Bars storpack', 139, N'/images/products/goodlifepack.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 6, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (81, 1, N'Reflex', N'Instant Whey PRO', 229, N'/images/products/instanstwhey.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 6, N'Längre beskrivning av produkten...', 1, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (82, 1, N'IronMaxx', N'100% Whey Protein', 179, N'/images/products/ironmaxxwhey.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (83, 10, N'Isostar', N'Isostar Bar', 17, N'/images/products/isostarbar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (84, 6, N'RZ', N'Jack3d', 327, N'/images/products/jack3d.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (85, 7, N'Fairing', N'Kreatin', 79, N'/images/products/kreatinfairing.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 4, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (86, 7, N'Fairing', N'Kre-alkalyn', 119, N'/images/products/kreatinfairing2.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 5, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (87, 9, N'Nutrex', N'Lipo-6X', 327, N'/images/products/lipofatburner.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 5, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (88, 5, N'OLIMP', N'MASSACRA', 569, N'/images/products/massacraepisode.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 5, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (89, 10, N'Maxim', N'Protein Bar', 19, N'/images/products/maxinproteinbar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (90, 2, N'MuscleTech', N'Amino Build', 127, N'/images/products/muscletechamino.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (91, 2, N'Mutant', N'Mutant Amino', 188, N'/images/products/mutantamino.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (92, 8, N'Mutant', N'Mutant MASS', 356, N'/images/products/mutantmass.jpg', N'Kortare beskrivning av produkten...', 197, 3, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (93, 5, N'Mutant', N'Mutant Mayhem', 264, N'/images/products/mutantmayhem.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (94, 6, N'PN', N'Prodigy PWO', 147, N'/images/products/prodigypwo.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 4, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (95, 1, N'PRO', N'Professional WHEY', 139, N'/images/products/professionalwhey.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 5, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (96, 4, N'BioTech', N'Protein FUEL', 29, N'/images/products/proteinfuel.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 5, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (97, 9, N'Ctrld', N'Purlpe WRAATH', 57, N'/images/products/purlpewrathfat.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 6, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (98, 7, N'Star Nutrition', N'Rapid Creatine STORPACK', 247, N'/images/products/rapidcreatinstar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 6, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (99, 9, N'Star Nutrition', N'Ripped Hardcore', 99, N'/images/products/rippedhardcore1st.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 6, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (100, 9, N'Star Nutrition', N'Ripped Hardcore 2-pack', 172, N'/images/products/rippedhardcore2st.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 6, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (101, 2, N'Scitec', N'Amino 5600', 158, N'/images/products/scitecamino.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (102, 2, N'Star Nutrition', N'Amino-Pro Essential', 99, N'/images/products/staramino.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
GO
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (103, 10, N'Star Nutrition', N'Organic Bar', 14, N'/images/products/starorganicbar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (104, 2, N'USN', N'Nano STACKER', 147, N'/images/products/usnamin.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (105, 1, N'Star Nutrition', N'Whey-80', 199, N'/images/products/whey80.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (106, 1, N'Star Nutrition', N'Whey-80 STORKÖP', 847, N'/images/products/whey80bigpack.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 2, N'Längre beskrivning av produkten...', 1, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (107, 1, N'Star Nutrition', N'Whey-100', 299, N'/images/products/whey100.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (108, 1, N'Star Nutrition', N'100% Whey GOLD', 344, N'/images/products/wheygold.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 2, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
INSERT [dbo].[tbProduct] ([iID], [iProductType], [sProductBrand], [sName], [iPrice], [sPicture], [sDescription], [iStockBalance], [iItemsSold], [iCount], [iTaste], [sMoreInfo], [iCampaign], [iProductCategory], [iPoints], [iActive]) VALUES (109, 10, N'Vitargo', N'Vitargo Bar', 12, N'/images/products/vitargobar.jpg', N'Kortare beskrivning av produkten...', 200, 0, 1, 1, N'Längre beskrivning av produkten...', NULL, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbProduct] OFF
SET IDENTITY_INSERT [dbo].[tbProductCategory] ON 

INSERT [dbo].[tbProductCategory] ([iID], [sName]) VALUES (1, N'Kosttillskott')
INSERT [dbo].[tbProductCategory] ([iID], [sName]) VALUES (2, N'Kläder')
INSERT [dbo].[tbProductCategory] ([iID], [sName]) VALUES (3, N'Tillbehör')
SET IDENTITY_INSERT [dbo].[tbProductCategory] OFF
SET IDENTITY_INSERT [dbo].[tbProductOrder] ON 

INSERT [dbo].[tbProductOrder] ([iID], [iOrderID], [iProductID], [iQuantity], [iPrice]) VALUES (1, 3, 5, 1, 299)
INSERT [dbo].[tbProductOrder] ([iID], [iOrderID], [iProductID], [iQuantity], [iPrice]) VALUES (2, 3, 92, 3, 356)
INSERT [dbo].[tbProductOrder] ([iID], [iOrderID], [iProductID], [iQuantity], [iPrice]) VALUES (3, 3, 68, 4, 174)
INSERT [dbo].[tbProductOrder] ([iID], [iOrderID], [iProductID], [iQuantity], [iPrice]) VALUES (4, 3, 3, 1, 149)
INSERT [dbo].[tbProductOrder] ([iID], [iOrderID], [iProductID], [iQuantity], [iPrice]) VALUES (5, 4, 6, 1, 129)
INSERT [dbo].[tbProductOrder] ([iID], [iOrderID], [iProductID], [iQuantity], [iPrice]) VALUES (6, 4, 62, 3, 349)
INSERT [dbo].[tbProductOrder] ([iID], [iOrderID], [iProductID], [iQuantity], [iPrice]) VALUES (7, 4, 61, 2, 349)
SET IDENTITY_INSERT [dbo].[tbProductOrder] OFF
SET IDENTITY_INSERT [dbo].[tbProductType] ON 

INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (1, N'Protein', 1)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (2, N'Aminosyror', 1)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (3, N'Kolhydrater', 1)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (4, N'Dryck', 1)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (5, N'Muskelökande', 1)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (6, N'PWO', 1)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (7, N'Kreatin', 1)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (8, N'Gainer', 1)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (9, N'Fettförbrännare', 1)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (10, N'Bars', 1)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (11, N'Vitaminer', 1)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (12, N'Byxor', 2)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (13, N'Tröjor', 2)
INSERT [dbo].[tbProductType] ([iID], [sName], [iProductCategory]) VALUES (14, N'Shakers', 3)
SET IDENTITY_INSERT [dbo].[tbProductType] OFF
SET IDENTITY_INSERT [dbo].[tbStatus] ON 

INSERT [dbo].[tbStatus] ([iID], [sStatus]) VALUES (1, N'Betald')
INSERT [dbo].[tbStatus] ([iID], [sStatus]) VALUES (2, N'Skickad')
INSERT [dbo].[tbStatus] ([iID], [sStatus]) VALUES (3, N'EJ Skickad')
SET IDENTITY_INSERT [dbo].[tbStatus] OFF
SET IDENTITY_INSERT [dbo].[tbTaste] ON 

INSERT [dbo].[tbTaste] ([iID], [sTaste]) VALUES (1, N'Jordgubb')
INSERT [dbo].[tbTaste] ([iID], [sTaste]) VALUES (2, N'Choklad')
INSERT [dbo].[tbTaste] ([iID], [sTaste]) VALUES (3, N'Neutral')
INSERT [dbo].[tbTaste] ([iID], [sTaste]) VALUES (4, N'Fruit Punch')
INSERT [dbo].[tbTaste] ([iID], [sTaste]) VALUES (5, N'Tropical Fruits')
INSERT [dbo].[tbTaste] ([iID], [sTaste]) VALUES (6, N'Hallon')
SET IDENTITY_INSERT [dbo].[tbTaste] OFF
SET IDENTITY_INSERT [dbo].[tbUserInfo] ON 

INSERT [dbo].[tbUserInfo] ([iID], [iUserID], [sFirstName], [sLastName], [sAdress], [sPostalNumber], [sCity], [sEmail], [sTelephone], [iTotalPurchase], [iNewsOffers]) VALUES (1, 1, N'Oskar', N'Åhman', N'Bredbyplan 22', N'16371', N'Rinkeby', N'gymuser3@gmail.com', N'0700703635', 0, NULL)
SET IDENTITY_INSERT [dbo].[tbUserInfo] OFF
SET IDENTITY_INSERT [dbo].[UserProfile] ON 

INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (1, N'oskar')
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(0x0000A31600ADDA17 AS DateTime), NULL, 1, NULL, 0, N'AJkIePq+T56eFHNCut8+kwjl/bKfIOmCbZMk1RhnSixTtCQwromRN9CBNbc0MOguSw==', CAST(0x0000A31600ADDA17 AS DateTime), N'', NULL, NULL)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__UserProf__C9F28456F056CA63]    Script Date: 2014-05-05 13:27:41 ******/
ALTER TABLE [dbo].[UserProfile] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__webpages__8A2B6160FFF9D02C]    Script Date: 2014-05-05 13:27:41 ******/
ALTER TABLE [dbo].[webpages_Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
ALTER TABLE [dbo].[tbOfferCodes]  WITH CHECK ADD FOREIGN KEY([iActive])
REFERENCES [dbo].[tbActive] ([iID])
GO
ALTER TABLE [dbo].[tbOrder]  WITH CHECK ADD FOREIGN KEY([iStatus])
REFERENCES [dbo].[tbStatus] ([iID])
GO
ALTER TABLE [dbo].[tbOrder]  WITH CHECK ADD FOREIGN KEY([iUserID])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[tbOrder]  WITH CHECK ADD FOREIGN KEY([iUserID])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD FOREIGN KEY([iActive])
REFERENCES [dbo].[tbActive] ([iID])
GO
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD FOREIGN KEY([iProductType])
REFERENCES [dbo].[tbProductType] ([iID])
GO
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD FOREIGN KEY([iTaste])
REFERENCES [dbo].[tbTaste] ([iID])
GO
ALTER TABLE [dbo].[tbProductOrder]  WITH CHECK ADD FOREIGN KEY([iOrderID])
REFERENCES [dbo].[tbOrder] ([iID])
GO
ALTER TABLE [dbo].[tbProductOrder]  WITH CHECK ADD FOREIGN KEY([iProductID])
REFERENCES [dbo].[tbProduct] ([iID])
GO
ALTER TABLE [dbo].[tbProductType]  WITH CHECK ADD FOREIGN KEY([iProductCategory])
REFERENCES [dbo].[tbProductCategory] ([iID])
GO
ALTER TABLE [dbo].[tbProductType]  WITH CHECK ADD FOREIGN KEY([iProductCategory])
REFERENCES [dbo].[tbProductCategory] ([iID])
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
USE [master]
GO
ALTER DATABASE [sweproteindb] SET  READ_WRITE 
GO
