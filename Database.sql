USE [master]
GO
/****** Object:  Database [MyShop]    Script Date: 7/5/2022 9:27:37 PM ******/
CREATE DATABASE [MyShop]
GO
ALTER DATABASE [MyShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyShop] SET RECOVERY FULL 
GO
ALTER DATABASE [MyShop] SET  MULTI_USER 
GO
ALTER DATABASE [MyShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MyShop] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MyShop', N'ON'
GO
USE [MyShop]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [nvarchar](128) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [nvarchar](128) NOT NULL,
	[CustomerId] [nvarchar](128) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](255) NOT NULL,
	[Note] [nvarchar](511) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[State] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [nvarchar](128) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](511) NOT NULL,
	[Code] [varchar](50) NULL,
	[Detail] [ntext] NULL,
	[ListImages] [nvarchar](max) NULL,
	[MainImage] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[IsFeatured] [bit] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](511) NULL,
	[Sort] [int] NOT NULL,
	[IsHomePage] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202206201514130_InitialCreate', N'MyShop.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CC90C668D7602A76DEF1A195F30ED09F236604BECB63012A548946363912FDB877C527E618B1275E345A2BAE5EE7630C0A045164F158B45B2582CFACFFFFD31FDE1390CAC279CA47E44CEECA3C9A16D61E2469E4F5667764697DF7EB07FF8FEEF7F9B5E7AE1B3F5734977C2E8A02549CFEC474AE353C749DD471CA27412FA6E12A5D1924EDC2874901739C78787FF728E8E1C0C10366059D6F45346A81FE2FC033E671171714C3314DC441E0E525E0E35F31CD5BA45214E63E4E233FBE665FE18C59382D0B6CE031F8110731C2C6D0B1112514441C4D3CF299ED32422AB790C052878788931D02D5190622EFA694D6EDA8BC363D60BA76E5842B9594AA37020E0D109578B23365F4BB976A53650DC252898BEB05EE7CA3BB3AF3D9C177D8A025080C8F07416248C18F45BB1384FE35B4C2765C34901799500DC6F51F275D2443CB08CDB1D5466743C3964FF0EAC5916D02CC16704673441C181759F2D02DFFD09BF3C445F31393B395A2C4F3EBC7B8FBC93F7DFE19377CD9E425F81AE550045F74914E30464C3CBAAFFB6E5B4DB3962C3AA59A34DA115B0259811B675839E3F62B2A28F30578E3FD8D695FF8CBDB2841BD767E2C304824634C9E0F3360B02B4087055EF74F264FF77703D7EF77E14AEB7E8C95FE5432FF0878993C0BCFA8483BC367DF4E3627AB5C6FB0B27BB4AA2907DB7EDABA8FD328FB2C4659D89B4240F285961DA966EEAD4C66B64D20C6A7CB32E51F7DFB499A4B2792B495987D69909258B6DCF8652DED7E56B6C71E7710C83979B16D348A7C135F7A989D0106C2AAFAE0DE6C8D4600874E4AFBCFE5D86C80F4658000DB880DBB1F4931057BDFC3102734364B0CCF7284D61FE7BFF41E96387E8F07304D1E7D8CD1230CB394561FCEADCEE1F23826FB370C1AC7D7BBC461B9A87DFA22BE4D228B924ACD5C6781F23F76B94D14BE25D208A3F53B704649F0F7E680E308A38E7AE8BD3F40A8C197BB308BCEA12F09AD093E3C1706C6DDAB503320B901FAA3D106115FD5292D65E889A42F24434642A6FA44BD48FD1CA2766A296A47A510B8A5E5139D95051199899A49C522F684ED02B6741359A7F978FD0F80E5E0EBBFF1EDE669BB76E2D68A8710E2B24FE3726388165CCBB4794E284D42360B26EECC259C8878F317DF5BD29E7F4330AB2B159AD351BF24560FCD990C3EEFF6CC8C584E227DF635E89C1B1A7240678237AF589AA7FCE09926D7B3AB4BAB96DE6DB590374D3E53C4D23D7CF678122E0C5C3156DF9C187B3FA6317456FC4F807740C0CDD675B1E9440DF6CD1A8EEC8050E30C5D6B95B04046728759127AB113AE40D10ACDC511582D57190B670FF947882A5E3843542EC1094C24CF50995A7854F5C3F4641AF968496865B18EB7BC543ACB9C031268C61AF264C98ABC31E4C808A8F30287D1A9A3A0D8BEB36448DD7AA1BF33E17B61E77291AB1159BECF19D3576C9FDB75731CC6E8D6DC138BB556222803684B70B03E567155303100F2EFB66A0C2894963A0DCA5DA8A81B635B603036DABE4CD19687144351D7FE1BCBA6FE6D93E286F7F5BEF54D70E6CB3A58F3D33CDC2F78436145AE04436CF8B05ABC4CF5471380339F9F92CE5AEAE68220C7C8E693B6453FBBB4A3FD4E906118DA80BB036B41E507EF9270149136A8070652CAF533AEE450C802DE36E9DB07CED17601B362063372F411B84FAAB52D1388D4E1F55CF2A6B908CDCE8B0D0C0511884B878B53B6EA0145D5C56568C892F3CC41B6E748C0F4687827A3C578D92CACE8CAEA5D234FBB5A472C886B8641B6949709F345A2A3B33BA96B88DF62B49E1140C700B3652517B0B1F69B295918E6AB7A9EAA64E9116C50BA68E267F6A7A83E2D827AB463E152FB1E64532D5ECDBF9F054A3B0C070DC54917154495B71A251825658A805D620E9959FA4F40251B4402CCE33F342894CB9B76A96FF926573FB9407B1DC074A6AF6BB68D1BEB26F6DB3B21FC29B5F41E742E6CCE41174C5D0AB9B5B2CB50D05285104ED6751908544EF5BE95B175777CDF645898C307504F925DF495294E4E1B6B56E3426F27CD87C7C2AAF65FD31D243E8345DFA9C4D5DEBFC503D4A19966AA2E842553B1B339DFB623A4EA253387C987A115E6736F14C9426002F1A88D1486690C01A75E6A8ED7C932666BBC61C51482A69420A5503A46CA68EB4846C56AC85A7D1A89AC29C839C2CD244976BCD911569234D6845F51AD80A99C53A73544566491358516D8E5DA79988EBE71EEF57DAA3CA3A1B567190DD6CC7D260BCCE6238CE86D7B8AF6F02358A0762F11B79098C97EFA521694F73EB185211BAD8CC903418FAF5A675C9DD5E6E3A6FE6F598AD9BEBD692DE7573AFC71B66AEAF6A14D2394E24A9B857E739E1DC36E567A8FEC731D2A1AA20B1AD528DB09DBFA4148713463099FF1ACC021FB3C5BB24B841C45FE29416D91AF6F1E1D1B1F0C8667F1EBC3869EA058A33A8EED54B7BCCB69078459E50E23EA2444E83D8E051480D2A4598AF89879FCFECFFE6AD4EF36005FB95171F58D7E967E2FF9A41C5439261EB7739AD739C247983671995A0BFBF89F70EE62ABFFEE54BD1F4C0BA4B603A9D5A8782A2D719FEF62B8841D2144D379066EDB7116F77B6B59E20285185D9B2FE8B83854F47796D504AF94D889EFF315434E58B828D1015AF06C6C21B4585BA5701EB60695F0478F049F31701C33AAB7E21B08E68DAD7013E190E26BE0D305F86CA963BDC871467A56D2C49B99E7B73AB374AB4DCF5DE24A5606F34D1E534EB0170A3A6526FE6A2BCB114E5D1B64E4506F268D8BBB4FB574F3BDE974CE3DA69DF6D82F136738A3B6E90FE52A9C47B90FCA648E6D97DC2F0B66D4D17FCDDF3ACCB6169C17B666C7C9BDF7DF2EFB68D4D1720DE73631B94E2BB67B6B6ABFD73C79666BC85EE3C6157CE3DD25CE2A8A2C87D09B945C81D8EFF8B088CA0F0288B7794EA0CB0AEECD51E8635899EA93EF54C642C4D1C89AF44D1CD76585FF986DFD9594ED3CD5693B0D9C59BAFFF9DBC394D376F4D1AE42E5289958988AAF4EE9E75AC2B5FEA2DA50EB77AD293A9DEE7B376DEC8BFA54CE15194D29A3D9ADBE5B793183C8A4AC69C3A031281E58B62D83B1B7F6B11F6EFD45FD510EC2F2F12ECB676CD8AE69A2CA372F316242A498408CD0DA6C8832DF53CA1FE12B914AA59003A7F089E07F5D835C8027BD7E42EA37146A1CB385C04AD80177302BAF8E7D9CE6D99A77731FB4AC7E80288E9B3C0FD1DF931F303AF92FB4A1113D24030EF82877BD9585216F65DBD5448B7113104E2EAAB9CA2071CC60180A577648E9EF03AB281F97DC42BE4BED411401D48FF40B4D53EBDF0D12A4161CA31EAF6F00936EC85CFDFFF1F3DD346CB72540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'27bdca99-49e5-46d9-baf7-5c7126c997b9', N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'588d040a-072f-41a5-a8fc-39532f2ddc66', N'27bdca99-49e5-46d9-baf7-5c7126c997b9')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2f09cf9b-b8f3-4c30-9c26-34bcbb3ba2f5', N'nguyenvana@gmail.com', 0, N'AHScKPZvWsX+addBIhokb8hPi1QmjZeZz7jsO40pOehARLd8K9Uip5pt9mv42lI4Qg==', N'265710ab-dc7a-4f3c-acb9-f0b00d29436c', NULL, 0, 0, NULL, 0, 0, N'nguyenvana@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3d4d17dc-436c-478e-a2f3-2cfc5a403cfc', N'nguyenvanf@gmail.com', 0, N'AOTTZ9DFnR38EVOOWbQAVqnUaD9d3lUeiNAmnWApKdQz0sxacqM9tosjKuNIlHhS2w==', N'8f3d2f38-8066-4248-aae1-19dcd2c6f238', NULL, 0, 0, NULL, 0, 0, N'nguyenvanf@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'479b2c2c-78d8-47e2-b2a3-3bf6db11c85b', N'nguyenvanc@gmail.com', 0, N'AMpjUjJu10FtSNp180t1kuqK0gitjZLbYlBld+f7VeF/qEUALRysd0TuRVFZzt4lRg==', N'42b2e1a3-cc34-48cb-99bb-aca4974f3b46', NULL, 0, 0, NULL, 0, 0, N'nguyenvanc@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'55e9ec39-86bc-41b6-a79b-451d7797b7af', N'nguyenvanb@gmail.com', 0, N'AMtyEVPD4hRdCLTLut0C6xwzrl5ulGUyB6vzHO47lJ5a4N35WjC2DVCFeu/ITjZyVA==', N'fc6dea2e-fedd-40ad-9f13-5971fadb26cc', NULL, 0, 0, NULL, 0, 0, N'nguyenvanb@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'588d040a-072f-41a5-a8fc-39532f2ddc66', N'admin@lipuma.vn', 0, N'AGSTKuWq7AslqrM1G9iL6OS2whHC40err9lXSklRWP8lGqtQ3qr6cM/xmpr0D+HkgA==', N'4a98c4fa-176b-40fb-adaa-5cc01ef99e1b', NULL, 0, 0, NULL, 0, 0, N'admin@lipuma.vn')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5c829082-1a34-462b-b367-6f3033b81b6c', N'nguyenvande@gmail.com', 0, N'AJF4X2Hddz1XlQgkmSiXeUJIpbQUmHpqzkpiDr7tbQ15UCcqLGAK9gj9HhkJattWQA==', N'ff566b1c-78be-45f9-9f03-c6e45aa4f53b', NULL, 0, 0, NULL, 0, 0, N'nguyenvande@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b262a476-e411-4776-a67c-4b36d798cfff', N'nguyenvane@gmail.com', 0, N'AIupNCojUb2+WHJfc8mjiFQ2eS7WjC+YazkzZVY3Qe8OUxfaHv3NrPIrdfdMJ8yvgg==', N'a96bcf59-ac8d-4dcb-a7ae-75ec2c211566', NULL, 0, 0, NULL, 0, 0, N'nguyenvane@gmail.com')
GO
INSERT [dbo].[Customer] ([Id], [FullName]) VALUES (N'2F09CF9B-B8F3-4C30-9C26-34BCBB3BA2F5', N'Nguyễn Văn A')
INSERT [dbo].[Customer] ([Id], [FullName]) VALUES (N'3d4d17dc-436c-478e-a2f3-2cfc5a403cfc', N'Nguyễn Văn F')
INSERT [dbo].[Customer] ([Id], [FullName]) VALUES (N'479B2C2C-78D8-47E2-B2A3-3BF6DB11C85B', N'Nguyễn Văn B')
INSERT [dbo].[Customer] ([Id], [FullName]) VALUES (N'55E9EC39-86BC-41B6-A79B-451D7797B7AF', N'Nguyễn Văn D')
INSERT [dbo].[Customer] ([Id], [FullName]) VALUES (N'B262A476-E411-4776-A67C-4B36D798CFFF', N'Nguyễn Văn E')
GO
INSERT [dbo].[Order] ([Id], [CustomerId], [FullName], [Address], [Email], [Phone], [Note], [CreatedDate], [State]) VALUES (N'3d1aef5d-5d43-47ae-8bf3-01018d4c6eed', N'55e9ec39-86bc-41b6-a79b-451d7797b7af', N'Nguyễn Văn B', N'Số 22 Nguyễn Chí Thanh, Thanh Xuân, Hà Nội', N'nguyenvanb@gmail.com', N'0888555444', N'Giao hàng ngoài giờ hành chính', CAST(N'2022-06-22T22:12:26.567' AS DateTime), 2)
INSERT [dbo].[Order] ([Id], [CustomerId], [FullName], [Address], [Email], [Phone], [Note], [CreatedDate], [State]) VALUES (N'5a947cd3-1e65-4536-9098-a735a479d6cc', N'2f09cf9b-b8f3-4c30-9c26-34bcbb3ba2f5', N'Nguyễn Văn A', N'Số 12, ngõ 14/41 Hồ Tùng Mậu, Nam Từ Liêm, Hà Nội', N'nguyenvana@gmail.com', N'0966888888', N'Giao hàng trong giờ hành chính', CAST(N'2022-06-22T16:57:24.063' AS DateTime), 0)
INSERT [dbo].[Order] ([Id], [CustomerId], [FullName], [Address], [Email], [Phone], [Note], [CreatedDate], [State]) VALUES (N'93d94b30-0d12-4a48-a704-45568a32a42f', N'479b2c2c-78d8-47e2-b2a3-3bf6db11c85b', N'Nguyễn Văn C', N'Số 25 Đường TTH 29, Phường Tân Thới Hiệp, Quận 12, Thành phố Hồ Chí Minh', N'nguyenvanc@gmail.com', N'0868555444', NULL, CAST(N'2022-06-27T21:00:37.163' AS DateTime), 0)
INSERT [dbo].[Order] ([Id], [CustomerId], [FullName], [Address], [Email], [Phone], [Note], [CreatedDate], [State]) VALUES (N'dfb291cd-490e-486f-a133-f787955331b2', N'2f09cf9b-b8f3-4c30-9c26-34bcbb3ba2f5', N'Nguyễn Văn A', N'Số 12 Tòa HL Building, Ngõ 14 Duy Tân, Cầu Giấy, Hà Nội', N'nguyenvana@gmail.com', N'0966555666', NULL, CAST(N'2022-07-03T21:24:56.947' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[OrderItem] ON 

INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (1, N'5a947cd3-1e65-4536-9098-a735a479d6cc', 1, 2, CAST(11390000 AS Decimal(18, 0)))
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (2, N'5a947cd3-1e65-4536-9098-a735a479d6cc', 3, 1, CAST(30590000 AS Decimal(18, 0)))
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (3, N'3d1aef5d-5d43-47ae-8bf3-01018d4c6eed', 2, 1, CAST(28790000 AS Decimal(18, 0)))
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (4, N'3d1aef5d-5d43-47ae-8bf3-01018d4c6eed', 3, 1, CAST(30590000 AS Decimal(18, 0)))
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (5, N'93d94b30-0d12-4a48-a704-45568a32a42f', 1, 1, CAST(11390000 AS Decimal(18, 0)))
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [Quantity], [Price]) VALUES (6, N'dfb291cd-490e-486f-a133-f787955331b2', 5, 1, CAST(28990000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Code], [Detail], [ListImages], [MainImage], [IsActive], [Price], [CategoryId], [ShortDescription], [IsFeatured], [Quantity]) VALUES (1, N'Apple iPhone 11 - 64GB', N'100001', N'<h3>Thiết kế cực kỳ ấn tượng với m&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải cao</h3>

<p><img src="https://hoanghamobile.com/Uploads/Content/2019/09/05/apple--dien-thoai-di-dong-iphone-11-64gb-chinh-hang-vn-a-2.jpg" /></p>

<p>iPhone 11 vẫn sở hữu thiết kế tr&agrave;n viền với &ldquo;tai thỏ&rdquo; giống iPhone X. Viền bezel ph&iacute;a tr&ecirc;n v&agrave; dưới cũng được l&agrave;m gọn lại nhằm tối đa m&agrave;n h&igrave;nh sử dụng. C&ugrave;ng với đ&oacute;, 4 g&oacute;c của m&aacute;y cũng được bo tr&ograve;n nhẹ tạo cảm gi&aacute;c chắc chắn khi cầm tr&ecirc;n tay. Mặt lưng iPhone 11 l&agrave;m từ chất liệu k&iacute;nh n&ecirc;n rất sang trọng, tinh tế. Kh&aacute;c với c&aacute;c d&ograve;ng iPhone trước, sản phẩm n&agrave;y sẽ c&oacute; 6 m&agrave;u bản bạc, v&agrave;ng, xanh l&aacute;, trắng, đen đỏ.</p>

<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh LCD Retina mang đến chất lượng tốt nhất. Độ ph&acirc;n giải m&agrave;n h&igrave;nh 1125 x 2436 pixels hiển thị m&agrave;u sắc ch&iacute;nh x&aacute;c v&agrave; cho h&igrave;nh ảnh sắc n&eacute;t. M&agrave;n h&igrave;nh rộng 6.1 inch gi&uacute;p người sử dụng thoải m&aacute;i trải nghiệm xem phim, lướt web&hellip; Đặc biệt Apple đ&atilde; trang bị tần số qu&eacute;t từ 90 đến 120 Hz với 463 điểm m&agrave;u.</p>

<h3>Camera độc đ&aacute;o n&acirc;ng tầm chụp ảnh chuy&ecirc;n nghiệp</h3>

<p><img src="https://hoanghamobile.com/Uploads/Content/2019/09/05/apple--dien-thoai-di-dong-iphone-11-64gb-chinh-hang-vn-a-3.jpg" /></p>

<p>iPhone 11 vẫn sở hữu 2 camera nhưng thay v&igrave; đặt dọc như iPhone X th&igrave; ch&uacute;ng lại được sắp xếp theo h&igrave;nh vu&ocirc;ng. Đ&egrave;n flash cũng được đặt trong h&igrave;nh vu&ocirc;ng n&agrave;y. Trong đ&oacute; c&oacute; một camera ch&iacute;nh với độ ph&acirc;n giải 12MP gi&uacute;p bạn c&oacute; được những bức ảnh cực đẹp. Camera thứ hai c&oacute; g&oacute;c si&ecirc;u rộng 12 MP, ti&ecirc;u cự 13mm cho g&oacute;c chụp 120 độ.</p>

<p>C&aacute;c thuật to&aacute;n xử l&yacute; c&ugrave;ng được Apple n&acirc;ng cấp gồm chụp ch&acirc;n dung Potrait Mode, chụp ch&acirc;n dung đen trắng Highkey. Đồng thời tự động chuyển sang t&iacute;nh năng chụp đ&ecirc;m Night Mode khi nhận thấy thiếu &aacute;nh s&aacute;ng.</p>

<p>Camera selfie được n&acirc;ng cấp với độ ph&acirc;n giải l&ecirc;n đến 12MP. Đồng thời đ&egrave;n flash cũng được n&acirc;ng độ s&aacute;ng v&agrave; v&ugrave;ng chiếu s&aacute;ng rộng hơn. Nhờ đ&oacute;, bạn sẽ thoải m&aacute;i chụp ảnh kể cả ở những nơi &aacute;nh s&aacute;ng yếu. B&ecirc;n cạnh đ&oacute;, chế độ slow-motiton hứa hẹn sẽ trở th&agrave;nh một t&iacute;nh năng độc đ&aacute;o. Mỗi một sản phẩm mới của Apple đều được n&acirc;ng cấp camera nhằm tạo ra những trải nghiệm mới th&uacute; vị hơn cho người sử dụng.</p>

<h3>Pin dung lượng 3110 mAh n&acirc;ng thời gian nhiều hơn 1 giờ so với iPhone XR</h3>

<p>iPhone 11 ch&iacute;nh h&atilde;ng được trang bị pin c&oacute; dung lượng 3110 mAh. Với dung lượng như vậy th&igrave; chỉ một lần sạc l&agrave; c&oacute; thể sử dụng thoải m&aacute;i. Th&ecirc;m một điểm cộng nữa cho sản phẩm n&agrave;y đ&oacute; ch&iacute;nh l&agrave; c&ocirc;ng nghệ sạc kh&ocirc;ng d&acirc;y 15W. So với sạc kh&ocirc;ng d&acirc;y 7.5W hiện tại, sạc kh&ocirc;ng d&acirc;y 15W tăng tốc độ sạc l&ecirc;n 15% v&agrave; hiệu quả năng lượng cao hơn 30%. Mặc d&ugrave; l&agrave; c&ocirc;ng nghệ sạc nhanh nhưng vẫn đảm bảo iPhone kh&ocirc;ng qu&aacute; n&oacute;ng v&agrave; giảm 3 độ trong l&uacute;c sạc.</p>

<h3>Hiệu năng tối ưu với bộ xử l&yacute; Apple A13</h3>

<p><img src="https://hoanghamobile.com/Uploads/Content/2019/09/05/apple--dien-thoai-di-dong-iphone-11-64gb-chinh-hang-vn-a-4.jpg" /></p>

<p>Bộ xử l&yacute; A13 được sản xuất độc quyền cho iPhone 11 nhằm tạo hiệu năng mạnh mẽ, tiết kiệm pin hiệu quả. Hơn nữa, hệ điều h&agrave;nh iOS v13.0 sẽ tăng tốc độ mở ứng dụng 40%, tốc độ hiển thị b&agrave;n ph&iacute;m 50%, tốc độ camera 70%. C&ocirc;ng nghệ Wi-fi 6 mới nhất cũng được đưa v&agrave;o iPhone 11 nhằm tăng tốc độ kết nối internet tới 40%.</p>

<p>Để thay thế cho 5G, Apple đ&atilde; ph&aacute;t triển c&ocirc;ng nghệ Modified Polyimide (MPI) thay v&igrave; Liquid Crystal Polymer (LCP). N&acirc;ng cấp băng th&ocirc;ng si&ecirc;u rộng gi&uacute;p kết nối mạng nhanh hơn.</p>

<p>Face ID cũng được cải thiện khi c&oacute; thể ph&acirc;n biệt tiền cảnh v&agrave; &aacute;nh xạ khu&ocirc;n mặt để mở kh&oacute;a nhanh ch&oacute;ng hơn. Apple đ&atilde; tăng cường &aacute;nh s&aacute;ng của đ&egrave;n chiếu nhằm tr&aacute;nh &aacute;nh s&aacute;ng của m&ocirc;i trường t&aacute;c động l&agrave;m ảnh hưởng đến hoạt động của Face&nbsp; ID. Nhờ đ&oacute; n&acirc;ng cao t&iacute;nh bảo mật cho sản phẩm.</p>
', N'/Upload/Images/images/s-l640.png;/Upload/Images/images/apple--dien-thoai-di-dong-iphone-11-64gb-chinh-hang-vn-a-4.jpg;', N'/Upload/Images/images/iphone-11-64gb.png', 1, CAST(11390000 AS Decimal(18, 0)), 10, N'iPhone 11 - siêu phẩm được mong chờ nhất năm 2019 của Apple chuẩn bị ra mắt. Với những cải tiến vượt trội, phiên bản iPhone mới nhất hứa hẹn sẽ làm bùng nổ thị trường công nghệ.', 1, 119)
INSERT [dbo].[Product] ([Id], [Name], [Code], [Detail], [ListImages], [MainImage], [IsActive], [Price], [CategoryId], [ShortDescription], [IsFeatured], [Quantity]) VALUES (2, N'Điện thoại di động Samsung Galaxy S22 Ultra - 12GB/256GB', N'100002', N'<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Thiết kế sang trọng v&agrave; đầy mới lạ</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Samsung Galaxy S22 Ultra đơn giản nhưng đồng thời cũng tuyệt đẹp. C&aacute;c g&oacute;c cạnh của sản phẩm ho&agrave;n thiện sắc n&eacute;t, vu&ocirc;ng vắn. Cụm camera vu&ocirc;ng như mọi năm đ&atilde; biến mất, thay v&agrave;o đ&oacute; l&agrave; một thiết kế đồng bộ camera với mặt lưng. Ch&uacute;ng phẳng hơn v&agrave; liền lạc, tổng thể l&agrave; đơn giản nhưng đẹp mắt.</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://hoanghamobile.com/Uploads/2022/02/17/samsung-galaxy-s22-ultra.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Cảm gi&aacute;c cầm tr&ecirc;n S22 Ultra đều cực kỳ thoải m&aacute;i v&agrave; dễ chịu, chắc tay. C&aacute;c phần tiếp x&uacute;c giữa 2 vật liệu l&agrave; nh&ocirc;m gia cường v&agrave; k&iacute;nh ở mặt lưng, m&agrave;n h&igrave;nh đều rất chỉn chu. Vị tr&iacute; giữa phần viền h&ocirc;ng v&agrave; phần cạnh đ&aacute;y cũng được gia c&ocirc;ng đủ kh&eacute;o để khi d&ugrave;ng m&aacute;y 1 tay, t&igrave; v&agrave;o l&ograve;ng b&agrave;n tay kh&ocirc;ng c&oacute; cảm gi&aacute;c kh&oacute; chịu. Giống như những đời si&ecirc;u phẩm trước, Galaxy S22 Ultra cũng c&oacute; khả năng kh&aacute;ng nước v&agrave; bụi bẩn IP68.</span></span></span></span></p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Hiệu năng khủng với Snapdragon 8 Gen1. B&uacute;t Spen trở lại!</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Kh&aacute;c với những năm trước, Samsung đ&atilde; trang bị hẳn cho thị trường Việt Nam con chipset mạnh nhất nh&agrave; Qualcomm hiện tại l&agrave; Snapdragon 8 Gen1.Tiến tr&igrave;nh 4nm của con chip mới n&agrave;y kh&ocirc;ng chỉ gi&uacute;p tiết kiệm điện năng, m&agrave; c&ograve;n đẩy mạnh tốc độ xử l&yacute;.&nbsp;Qualcomm tuy&ecirc;n bố hiệu năng CPU của Snapdragon 8 Gen1 sẽ mạnh hơn 20%, trong khi tiết kiệm điện hơn 30% so với Snapdragon 888. Snapdragon 8 Gen1 t&iacute;ch hợp đầy đủ 5G, WiFi 6 v&agrave; 6E.&nbsp;M&aacute;y sẽ c&oacute; t&ugrave;y chọn bộ nhớ 128GB/8GB RAM, 256GB/12GB RAM, 512GB/16GB RAM, 1TB/16GB RAM.</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://hoanghamobile.com/Uploads/2022/02/17/samsung-galaxy-s22-ultra-2.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Ch&uacute;ng ta cũng được ch&agrave;o đ&oacute;n b&uacute;t Spen thần th&aacute;nh trở lại. Đặc sản ri&ecirc;ng c&oacute; của d&ograve;ng Note l&agrave; b&uacute;t S Pen c&ugrave;ng khe cắm b&uacute;t t&iacute;ch hợp sẵn trong th&acirc;n m&aacute;y cũng c&oacute; mặt tr&ecirc;n S22 Ultra. Ch&uacute;ng ta sẽ kh&ocirc;ng cần phải trang bị những chiếc ốp chỉ để đựng b&uacute;t như tr&ecirc;n S21 Ultra nữa. N&oacute;i c&aacute;ch kh&aacute;c, S22 Ultra gần như một chiếc Note được l&agrave;m mới.</span></span></span></span></p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">M&agrave;n h&igrave;nh lớn trải nghiệm cực đỉnh, độ s&aacute;ng đỉnh tới 1750 nit</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Phần viền m&agrave;n h&igrave;nh Galaxy S22 Ultra được l&agrave;m si&ecirc;u mỏng tạo n&ecirc;n trải nghiệm m&agrave;n h&igrave;nh &ldquo;v&ocirc; cực&rdquo;. Cảm biến v&acirc;n tay si&ecirc;u &acirc;m được đặt trong m&agrave;n h&igrave;nh. Samsung khẳng định S22 Ultra l&agrave; chiếc smartphone Galaxy c&oacute; m&agrave;n h&igrave;nh s&aacute;ng nhất hiện nay, đỉnh s&aacute;ng l&ecirc;n đến 1750 nit v&agrave; độ s&aacute;ng th&ocirc;ng thường cũng đạt khoảng 1330 nit. Chiếc m&aacute;y được trang bị m&agrave;n h&igrave;nh Dynamic AMOLED 2X với k&iacute;ch thước 6.8 inch hỗ trợ độ ph&acirc;n giải Quad HD+, tần số qu&eacute;t 120Hz, mật độ điểm ảnh 500 ppi.<br />
Samsung cũng cho ph&eacute;p người d&ugrave;ng một t&ugrave;y chọn l&agrave; tốc độ qu&eacute;t th&iacute;ch ứng để hệ thống tự động điều chỉnh theo những nội dung đang hiển thị tr&ecirc;n m&agrave;n h&igrave;nh. Với th&ocirc;ng số như vậy, cảm gi&aacute;c giải tr&iacute; kh&ocirc;ng ngo&agrave;i 2 chữ &ldquo;tuyệt vời&rdquo;. Phản hồi x&uacute;c gi&aacute;c vuốt chạm l&agrave; gần như kh&ocirc;ng c&oacute; độ trễ, xứng đ&aacute;ng l&agrave; si&ecirc;u phẩm h&agrave;ng đầu!</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://hoanghamobile.com/Uploads/2022/02/17/samsung-galaxy-s22-ultra-3.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Camera sẽ trang bị c&ocirc;ng nghệ điểm ảnh mới, chụp đ&ecirc;m tốt hơn tới 23%</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Về camera, d&ugrave; c&oacute; thiết kế mới nhưng c&aacute;c th&ocirc;ng số camera của S22 Ultra tương đồng như S21 Ultra. M&aacute;y sẽ c&oacute; 4 camera v&agrave; 1 cảm biến laser hỗ trợ lấy n&eacute;t lần lượt gồm: Camera ch&iacute;nh 108 MP, camera g&oacute;c si&ecirc;u rộng 12MP, camera tele 1 độ ph&acirc;n giải 10MP, Camera tele 2 độ ph&acirc;n giải 10MP. Ph&iacute;a trước l&agrave; camera selfie 40 MP.</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://hoanghamobile.com/Uploads/2022/02/17/samsung-galaxy-s22-ultra-4.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Samsung tuy&ecirc;n bố S22 Ultra được trang bị c&ocirc;ng nghệ gộp điểm ảnh mới, c&oacute; thể tạo ra điểm ảnh lớn 2.4 micron, gi&uacute;p quay chụp trong đ&ecirc;m s&aacute;ng hơn 23%. Khả năng quay video chống rung OIS g&oacute;c rộng cũng tốt hơn 58%. Samsung cho biết h&atilde;ng đ&atilde; &aacute;p dụng một loạt c&ocirc;ng nghệ AI mới để cải thiện chất lượng ảnh v&agrave; video ch&acirc;n dung, trang bị t&iacute;nh năng ch&acirc;n dung ban đ&ecirc;m gi&uacute;p chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng cả trong điều kiện cực kỳ thiếu s&aacute;ng.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Galaxy S22 Ultra c&ograve;n được trang bị c&ocirc;ng nghệ AI mới nhất của Samsung g&oacute;p phần n&acirc;ng tầm ảnh chụp của người d&ugrave;ng l&ecirc;n một tầm cao mới. Người d&ugrave;ng sẽ c&oacute; thể dễ d&agrave;ng c&oacute; được những bức ảnh ho&agrave;n hảo ở Chế độ Ch&acirc;n dung nhờ t&iacute;nh năng AI Stereo Depth Map mới, với những chi tiết nhỏ nhất đều sẽ hiển thị sắc n&eacute;t v&agrave; r&otilde; r&agrave;ng nhờ thuật to&aacute;n AI tinh vi.</span></span></span></span></p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Pin 5000mAh sạc nhanh 45W, đạt 50% trong 20 ph&uacute;t!</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Samsung Galaxy S22 Ultra được trang bị hầu hết mọi th&ocirc;ng số mạnh nhất: Sản phẩm được trang bị sạc nhanh&nbsp;45W, USB Power Delivery 3.0, Fast Qi/PMA sạc kh&ocirc;ng d&acirc;y 15W, sạc ngược 4.5W. Vi&ecirc;n pin trong m&aacute;y sẽ l&agrave; 5000mAh. Samsung cho biết sản phẩm sẽ đạt 50% pin trong 20 ph&uacute;t, nhanh hơn khoảng 10 ph&uacute;t so với S21 Ultra. Chỉ cần lưu &yacute; rằng ch&uacute;ng ta sẽ cần mua bộ sạc 45W v&igrave; Samsung kh&ocirc;ng bao gồm bộ sạc trong hộp.</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://hoanghamobile.com/Uploads/2022/02/17/samsung-galaxy-s22-ultra-5.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Galaxy S22 Ultra được hỗ trợ bởi phần mềm OneUI 4.1 của Samsung, chạy tr&ecirc;n Android 12. Samsung cho biết giao diện n&agrave;y trực quan v&agrave; hữu &iacute;ch hơn c&aacute;c phi&ecirc;n bản trước. M&aacute;y sẽ được b&aacute;n ra với 3 phối m&agrave;u bao gồm Trắng, Đen, Xanh l&aacute; v&agrave; Đỏ Burgundy.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">&nbsp;Ứng dụng Samsung Smart Switch tr&ecirc;n Galaxy của bạn</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Smart Switch l&agrave; một ứng dụng của Samsung c&oacute; thể được sử dụng để c&agrave;i đặt c&aacute;c bản cập nhật phần mềm, hoặc sao lưu v&agrave; kh&ocirc;i phục nội dung giữa c&aacute;c điện thoại. Ứng dụng di động Smart Switch cũng c&oacute; thể chuyển danh bạ, ảnh v&agrave; tin nhắn&nbsp;từ thiết bị iOS&nbsp;sang&nbsp;<a href="https://hoanghamobile.com/dien-thoai-di-dong/samsung/samsung-galaxy-s22-Series" style="text-decoration:none; color:#00483d">điện thoại Galaxy mới</a>&nbsp;của bạn.<img alt="Hoàng Hà Mobile" class="alignnone size-full wp-image-158798" src="https://cdn1.hoanghamobile.com/tin-tuc/wp-content/uploads/2022/03/Hoang-Ha-Mobile-5.png" style="display:inline-block; height:628px; margin-left:5px; margin-right:5px; max-width:100%; width:1200px" /></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">C&aacute;c dịch vụ của Google c&oacute; thể hỗ trợ sao lưu một phần dữ liệu, tuy nhi&ecirc;n việc sao lưu dữ liệu ứng dụng hay tr&ograve; chơi sẽ kh&oacute; c&oacute; thể thực hiện. V&igrave; thế, Samsung Smart Switch l&agrave; một&nbsp;phương &aacute;n v&ocirc; c&ugrave;ng tối ưu.&nbsp;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Chi tiết xem th&ecirc;m tại&nbsp;&nbsp;<span style="font-size:18px"><strong><span style="color:#111111"><span style="font-family:Roboto,sans-serif"><a href="https://hoanghamobile.com/tin-tuc/cach-su-dung-ung-dung-samsung-smart-switch-de-chuyen-du-lieu" style="text-decoration:none; color:#00483d" target="_blank">ứng dụng Samsung Smart Switch</a></span></span></strong></span></span></span></span></span></p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Một thiết bị xứng đ&aacute;ng đồng h&agrave;nh c&ugrave;ng bạn trong cuộc sống!</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Galaxy S22 Ultra kh&ocirc;ng chỉ l&agrave; một chiếc điện thoại sang trọng, m&agrave; c&ograve;n l&agrave; một thiết bị mạnh mẽ, đem lại cho người d&ugrave;ng những gi&acirc;y ph&uacute;t l&agrave;m việc v&agrave; giải tr&iacute; cực đ&atilde;. Nếu bạn cần t&igrave;m một flagship Android đ&aacute;p ứng mọi nhu cầu sử dụng của m&igrave;nh th&igrave; đ&acirc;y l&agrave; một sự lựa chọn kh&ocirc;ng thể hợp l&yacute; hơn.</span></span></span></span></p>
', N'/Upload/Images/images/image-removebg-preview-2_637800452287772364.png;/Upload/Images/images/image-removebg-preview-1_637800452287772364.png;/Upload/Images/images/image-removebg-preview-5_637800452287772364.png;', N'/Upload/Images/images/image-removebg-preview-6_637800452287772364.png', 1, CAST(28790000 AS Decimal(18, 0)), 10, N'Điểm nhấn của buổi ra mắt Samsung Galaxy S22 series chắc chắn là siêu phẩm Galaxy S22 Ultra. Đây là một trong những chiếc máy cao cấp nhất của Samsung, và đem lại cảm giác vô cùng thân thuộc với khách hàng, đặc biệt là những người đã từng sử dụng Galaxy Note', 0, 120)
INSERT [dbo].[Product] ([Id], [Name], [Code], [Detail], [ListImages], [MainImage], [IsActive], [Price], [CategoryId], [ShortDescription], [IsFeatured], [Quantity]) VALUES (3, N'Apple M1 - MacBook Air 13" 512GB 2020', N'100003', N'<h3 style="text-align:start"><span style="font-size:15px"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Thiết kế nhỏ gọn. M&agrave;n h&igrave;nh Retina sắc n&eacute;t</span></span></span></span></h3>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">L&agrave; một chiếc&nbsp;<em>ultrabook</em>&nbsp;cao cấp, MacBook Air mang tr&ecirc;n m&igrave;nh tất cả thẩm mỹ tinh tế của Apple trong thiết kế sản phẩm. MacBook Air M1 được ho&agrave;n thiện từ chất liệu nh&ocirc;m nguy&ecirc;n khối, kh&ocirc;ng chỉ nhẹ m&agrave; c&ograve;n rất sang trọng. Trọng lượng chỉ 1,29kg cũng gi&uacute;p người d&ugrave;ng tiện lợi mang đi sử dụng ở mọi nơi. Kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn ba phi&ecirc;n bản m&agrave;u kh&aacute;c nhau ph&ugrave; hợp với cả t&iacute;nh mỗi người, bao gồm x&aacute;m, bạc v&agrave; v&agrave;ng.</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://admin.hoanghamobile.com/Uploads/2021/01/15/air1.jpg" style="height:274.622px; max-width:100%; width:488.217px" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Cảm gi&aacute;c mở m&aacute;y bằng một tay vẫn giữ được sự mượt m&agrave;, cho thấy khả năng ho&agrave;n thiện bản lề cực tốt của Apple. Khi mở m&aacute;y ra, người d&ugrave;ng sẽ thấy b&agrave;n ph&iacute;m Magic Keyboard c&oacute; h&agrave;nh tr&igrave;nh ph&iacute;m 1mm, hỗ trợ đ&egrave;n nền v&agrave; TouchPad c&oacute; k&iacute;ch thước lớn, gi&uacute;p c&aacute;c thao t&aacute;c tr&ecirc;n m&aacute;y trở n&ecirc;n trơn tru v&agrave; c&oacute; phản hồi tốt. Hai dải loa stereo được bố trị b&ecirc;n cạnh b&agrave;n ph&iacute;m, c&oacute; &acirc;m lượng v&agrave; chất &acirc;m tốt, hỗ trợ người d&ugrave;ng mọi t&aacute;c vụ giải tr&iacute;. Đặc biệt, nhờ kh&ocirc;ng c&oacute; quạt gi&oacute; n&ecirc;n người d&ugrave;ng sẽ kh&ocirc;ng t&igrave;m thấy khe tản nhiệt tr&ecirc;n thiết bị n&agrave;y, tạo ra cảm gi&aacute;c thiết kế liền mạch cho sản phẩm.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">MacBook Air được trang bị m&agrave;n h&igrave;nh Retina k&iacute;ch thước 13,3 inch c&oacute; độ ph&acirc;n giải 2560x1600. M&agrave;n h&igrave;nh n&agrave;y hỗ trợ c&ocirc;ng nghệ True Tone, dải m&agrave;u rộng P3 v&agrave; c&oacute; độ s&aacute;ng l&ecirc;n tới 400 nit, đem lại m&agrave;u sắc v&agrave; độ tương phản tốt ngay cả khi l&agrave;m việc trong kh&ocirc;ng gian c&oacute; &aacute;nh s&aacute;ng mạnh như ngo&agrave;i trời nắng.</span></span></span></span></p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Hiệu năng h&agrave;ng đầu. Thời lượng pin l&ecirc;n tới 18 tiếng</span></span></span></span></h3>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Lần đầu ti&ecirc;n trong lịch sử d&ograve;ng MacBook, Apple chia tay Intel để sử dụng vi xử l&yacute; ri&ecirc;ng do ch&iacute;nh m&igrave;nh sản xuất mang t&ecirc;n M1. Sở hữu sức mạnh tối t&acirc;n, chip M1 gi&uacute;p MacBook Air c&oacute; hiệu năng vượt trội so với nhiều mẫu laptop hiện c&oacute; tr&ecirc;n thị trường. Chip M1 l&agrave; một SoC được t&iacute;ch hợp CPU, GPU, Neural Engine, I/O v&agrave; nhiều bộ phận xử l&yacute; kh&aacute;c tr&ecirc;n một con chip duy nhất. Đ&acirc;y l&agrave; con chip chạy tr&ecirc;n tiến tr&igrave;nh 5mm với 16 tỷ b&oacute;ng b&aacute;n dẫn, hứa hẹn đem lại hiệu năng nhanh hơn tới 3,5 lần v&agrave; khả năng xử l&yacute; đ&ograve; hoạ tốt hơn 5 lần so với thế hệ MacBook Air trước đ&acirc;y. Người d&ugrave;ng c&oacute; thể tự tin thực hiện mọi t&aacute;c vụ h&agrave;ng ng&agrave;y tr&ecirc;n chiếc m&aacute;y t&iacute;nh của m&igrave;nh, từ c&ocirc;ng việc văn ph&ograve;ng nhẹ nh&agrave;ng, cho đến xử l&yacute; video v&agrave; chơi game c&oacute; đồ hoạ cao m&agrave; kh&ocirc;ng l&agrave;m kh&oacute; được thiết bị n&agrave;y.<img src="https://admin.hoanghamobile.com/Uploads/2021/01/15/air-2.jpg" style="height:317.369px; max-width:100%; width:475.502px" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Chip M1 cũng c&oacute; khả năng tối ưu ho&aacute; cực tốt cho MacBook Air 2020. C&ugrave;ng sử dụng vi&ecirc;n pin dung lượng 49,9Wh như đời tiền nhiệm, MacBook Air M1 c&oacute; thời lượng pin d&agrave;i hơn 6 giờ, đem lại cho người d&ugrave;ng 15 tiếng lướt web v&agrave; 18 tiếng xem video chỉ với một lần sạc duy nhất. Với c&aacute;c t&aacute;c vụ h&agrave;ng ng&agrave;y, chiếc laptop n&agrave;y tự tin c&oacute; thể đem lại tới 2 ng&agrave;y l&agrave;m việc v&agrave; giải tr&iacute;. Đ&acirc;y l&agrave; một thời lượng sử dụng d&agrave;i chưa từng c&oacute; tr&ecirc;n một chiếc MacBook Air. Với thiết kế kh&ocirc;ng quạt gi&oacute;, người d&ugrave;ng sẽ kh&ocirc;ng bao giờ phải nghe thấy tiếng gi&oacute; tản nhiệt ph&aacute;t ra v&agrave; c&oacute; thể tận hưởng trải nghiệm ho&agrave;n to&agrave;n &ecirc;m &aacute;i.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">MacBook Air c&oacute; hai tuỳ chọn phi&ecirc;n bản bộ nhớ l&agrave; 256GB v&agrave; 512GB. Ổ cứng SSD c&oacute; tr&ecirc;n m&aacute;y cũng c&oacute; tốc độ gấp đ&ocirc;i. Dung lượng RAM 8GB l&agrave; một con số dư giả cho đa phần người d&ugrave;ng hiện tại.</span></span></span></span></p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><span style="color:#646464">Hệ điều h&agrave;nh macOS tiện dụng. Khả năng kết nối bền bỉ</span></span></span></span></h3>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Chiếc MacBook Air 2020 M1 được c&agrave;i đặt sẵn macOS Big Sur mới nhất ngay khi được b&oacute;c hộp. Được thiết kế d&agrave;nh ri&ecirc;ng cho chip M1, macOS Big Sur biến ho&aacute; m&aacute;y t&iacute;nh Mac của bạn với hiệu suất tối ưu v&agrave; h&agrave;ng loạt t&iacute;nh năng hữu &iacute;ch. Giao diện người d&ugrave;ng đ&atilde; được thiết kế lại, vừa tối giản vừa dễ sử dụng. Người d&ugrave;ng sẽ được tận hưởng phần mềm tuyệt vời nhất tr&ecirc;n phần cứng t&acirc;n tiến nhất tới từ Apple. Nhờ khả năng tối ưu tốt, bạn c&oacute; thể sử dụng m&aacute;y t&iacute;nh của m&igrave;nh ngay khi mở m&aacute;y l&ecirc;n, thao t&aacute;c mở ứng dụng cũng diễn ra nhanh như một cơn gi&oacute;. Hệ điều h&agrave;nh macOS Big Sur đưa nhiều ứng dụng quen thuộc tr&ecirc;n điện thoại l&ecirc;n MacBook Air.</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://admin.hoanghamobile.com/Uploads/2021/01/15/air-3.jpg" style="height:264.557px; max-width:100%; width:470.552px" /></span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">MacBook Air M1 sở hữu cảm biến v&acirc;n tay đặt tr&ecirc;n ph&iacute;m nguồn của m&aacute;y. Bảo mật v&acirc;n tay Touch ID kh&ocirc;ng chỉ tiện dụng khi mở m&aacute;y v&agrave; thanh to&aacute;n online, m&agrave; c&ograve;n bảo vệ tất cả c&aacute;c dữ liệu quan trọng của bạn c&oacute; tr&ecirc;n chiếc m&aacute;y t&iacute;nh n&agrave;y.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Bạn c&oacute; thể sử dụng webcam c&oacute; sẵn tr&ecirc;n m&aacute;y để thực hiện c&aacute;c cuộc gọi FaceTime HD sắc n&eacute;t. MacBook Air được trang bị 2 cổng USB-C hỗ trợ Thunderbolt 3 c&ugrave;ng một cổng tai nghe 3.5mm. Với c&aacute;c cổng kết nối n&agrave;y, bạn c&oacute; thể sử dụng MacBook Air tr&ecirc;n m&agrave;n h&igrave;nh ngo&agrave;i, truyền tải dữ liệu với tốc độ ch&oacute;ng mặt tới 40GB/s.</span></span></span></span></p>
', NULL, N'/Upload/Images/images/macmoi512.png', 1, CAST(30590000 AS Decimal(18, 0)), 11, N'Năm 2020, Apple đã nâng cấp chiếc MacBook Air của mình với một hiệu năng vô cùng mạnh mẽ, tích hợp chip M1 thuộc thế hệ Apple Silicon có khả năng tối ưu hoá tốt, đem lại trải nghiệm sử dụng, làm việc, học tập và giải trí ấn tượng cho người dùng.', 1, 15)
INSERT [dbo].[Product] ([Id], [Name], [Code], [Detail], [ListImages], [MainImage], [IsActive], [Price], [CategoryId], [ShortDescription], [IsFeatured], [Quantity]) VALUES (4, N'Laptop Asus X415EA-EB266T', N'100004', N'<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Thiết kế kh&aacute; đơn giản v&agrave; mỏng nhẹ</span></span></span></span></h3>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://hoanghamobile.com/Uploads/2021/12/01/hp-245-g8-469w0pa.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Laptop HP 245 G8 469W0PA được chế tạo từ chất liệu nhựa c&oacute; tone m&agrave;u chủ đạo l&agrave; x&aacute;m bạc. V&igrave; thế m&aacute;y c&oacute; khối lượng kh&aacute; nhẹ chỉ khoảng 1,47kg v&agrave; độ d&agrave;y chỉ 19,9mm để bạn c&oacute; thể dễ d&agrave;ng cho v&agrave;o balo mang đi khắc nơi một c&aacute;ch tiện lợi. M&aacute;y c&oacute; c&aacute;c g&oacute;c bo nhẹ tạo sự mềm mại, v&agrave; ph&ugrave; hợp cho mọi đối tượng sử dụng</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Hiệu năng tốt đ&aacute;p ứng nhu cầu l&agrave;m việc với Ryzen AMD</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Nh&igrave;n sơ qua cấu h&igrave;nh, ch&uacute;ng ta thấy m&aacute;y sẽ c&oacute; con chip AMD R3 5300U, 4GB RAM, 512GB SSD, card đồ họa Intel Graphics. Cấu h&igrave;nh n&agrave;y đủ cho c&aacute;c vụ văn ph&ograve;ng nhẹ nh&agrave;ng. Nhu cầu học tập v&agrave; l&agrave;m word, excel,... ho&agrave;n to&agrave;n thoải m&aacute;i.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Kh&aacute;ch h&agrave;ng c&oacute; thể mở rộng RAM tới 16GB, kết hợp 512GB SSD n&ecirc;n việc khởi động m&aacute;y l&agrave; rất nhanh ch&oacute;ng. M&aacute;y c&oacute; thể chơi c&aacute;c game nhẹ nh&agrave;ng ở đồ họa thấp. Bạn c&oacute; thể đ&aacute; PES kh&aacute; thoải m&aacute;i.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Bộ vi xử l&yacute; AMD Ryzen&trade; 3-5300U t&iacute;ch hợp c&aacute;c card đồ họa AMD Radeon&trade; Graphics cho khả năng xử l&yacute; c&aacute;c t&aacute;c vụ cơ văn như c&ocirc;ng việc văn ph&ograve;ng tốt hơn. Từ đ&oacute;, năng suất l&agrave;m việc cũng được n&acirc;ng cao.</span></span></span></span></p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff"><img src="https://hoanghamobile.com/Uploads/2021/12/01/hp-245-g8-469w0pa-2.png" style="max-width:100%" /></span></span></span></span></p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">M&agrave;n h&igrave;nh đ&aacute;p ứng tốt nhu cầu giải tr&iacute; v&agrave; l&agrave;m việc</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">M&agrave;n h&igrave;nh 14 inch được đ&aacute;nh gi&aacute; kh&aacute; đủ cho nhu cầu sử dụng, v&agrave; cũng gi&uacute;p m&aacute;y kh&ocirc;ng qu&aacute; to. Viền của m&aacute;y mỏng. Laptop HP 245 G8&nbsp; d&ugrave;ng m&agrave;n h&igrave;nh ph&acirc;n giải Full HD gi&uacute;p người d&ugrave;ng c&oacute; được trải nghiệm h&igrave;nh ảnh cực kỳ sắc n&eacute;t.</span></span></span></span></p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:center"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">&nbsp;<img src="https://hoanghamobile.com/Uploads/2021/12/01/hp-245-g8-469w0pa-3.png" style="max-width:100%" /></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Kh&ocirc;ng thể thiếu, đ&oacute; l&agrave; c&ocirc;ng nghệ chống ch&oacute;i Anti Glare gi&uacute;p mắt của bạn được bảo vệ trong điều kiện &aacute;nh s&aacute;ng cao v&agrave; h&igrave;nh ảnh lu&ocirc;n được sắc n&eacute;t ngay cả khi l&agrave;m việc ngo&agrave;i trời.</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></p>

<h3 style="text-align:start"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">Pin tốt đủ đ&aacute;p ứng tốt y&ecirc;u cầu di chuyển &amp; l&agrave;m việc ngo&agrave;i trời</span></span></span></span></h3>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:13px"><span style="color:#333333"><span style="font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;"><span style="background-color:#ffffff">M&aacute;y sử dụng pin 3 Cell, 41Whr cho thời lượng pin d&agrave;i, cho ph&eacute;p c&ocirc;ng việc được thực hiện liền mạch, thuận lợi m&agrave; kh&ocirc;ng vướng phải những bất tiện khi hết pin giữa chừng. Việc sạc lại pin cũng kh&ocirc;ng hề mất thời gian, trung b&igrave;nh khoảng 60-80% trong 1h sạc.</span></span></span></span></p>
', N'/Upload/Images/images/laptop-asus-x415ea-eb266t-5.png;/Upload/Images/images/laptop-asus-x415ea-eb266t-2.png;/Upload/Images/images/laptop-asus-x415ea-eb266t-4.png;', N'/Upload/Images/images/laptop-asus-x415ea-eb266t-5.png', 1, CAST(16590000 AS Decimal(18, 0)), 11, N'HP 245 G8 - 46B27PA sẽ là một lựa chọn sáng giá trong tầm giá khoảng 13 triệu phù hợp cho các bạn học sinh sinh viên. Sản phẩm còn được trang bị sẵn Windows 10 Home 64 bit tiện lợi.', 0, 20)
INSERT [dbo].[Product] ([Id], [Name], [Code], [Detail], [ListImages], [MainImage], [IsActive], [Price], [CategoryId], [ShortDescription], [IsFeatured], [Quantity]) VALUES (5, N'Microsoft Surface Pro 7 - PVR-00036', N'100005', N'<h3>Mức gi&aacute; tốt, hợp l&yacute;</h3>

<p>Đ&acirc;y l&agrave; l&yacute; do đầu ti&ecirc;n v&agrave; cũng l&agrave; quan trọng nhất để khiến Surface Pro 7 l&agrave; một thiết bị đ&aacute;ng để sở hữu nhất. Nếu để &yacute; kĩ một ch&uacute;t, mức gi&aacute; của Surface Pro 7 đ&atilde; tốt hơn rất nhiều so với c&aacute;c thiết bị Surface Pro tiền nhiệm. Với số tiền bỏ ra ở thời điểm hiện tại chỉ khoảng 20 triệu l&agrave; bạn đ&atilde; c&oacute; thể sở hữu được phi&ecirc;n bản chip xử l&yacute; Core i5-1035G4, RAM 8GB v&agrave; 128GB bộ nhớ trong. Đ&acirc;y cũng ch&iacute;nh l&agrave; phi&ecirc;n bản được người d&ugrave;ng ưa chuộng v&agrave; chọn mua nhiều nhất.</p>

<p><img alt="mua-surface-pro-7-3" src="https://cdn1.hoanghamobile.com/tin-tuc/wp-content/uploads/2021/03/mua-surface-pro-7-3.jpg" style="height:533px; width:800px" /></p>

<p>Ngo&agrave;i ra, với mức gi&aacute; n&agrave;y nếu như bạn mua c&aacute;c mẫu laptop văn ph&ograve;ng kh&aacute;c th&igrave; chắc chắn bạn sẽ chỉ được một thiết bị c&oacute; m&agrave;n h&igrave;nh độ ph&acirc;n giải chỉ l&agrave; Full HD. Nhưng với Surface Pro 7 th&igrave; bạn sẽ c&oacute; được một m&agrave;n h&igrave;nh với độ ph&acirc;n giải l&ecirc;n tới 3K cực k&igrave; sắc n&eacute;t. Cấu h&igrave;nh của Surface Pro 7 với phi&ecirc;n bản chip xử l&yacute; Core i5 vẫn thừa sức đ&aacute;p ứng được mọi c&ocirc;ng việc văn ph&ograve;ng cơ bản. V&agrave; nếu như 128GB bộ nhớ của Surface Pro 7 l&agrave; chưa đủ th&igrave; người d&ugrave;ng c&oacute; thể rộng th&ecirc;m kh&ocirc;ng gian bộ nhớ th&ocirc;ng qua khe cắm thẻ nhớ SD hoặc ổ cứng di động.</p>

<h3>Gọn g&agrave;ng, mỏng nhẹ, thời lượng pin bền bỉ</h3>

<p>K&iacute;ch thước mỏng nhẹ, gọn g&agrave;ng ch&iacute;nh l&agrave; một điểm đ&aacute;ng &ldquo;đồng tiền b&aacute;t gạo&rdquo; nhất của Surface Pro 7. M&aacute;y sở hữu m&agrave;n h&igrave;nh rộng 12.3 inch với &ldquo;số đo 3 v&ograve;ng&rdquo; lần lượt l&agrave; 292 mm x 201 mm x 8.5 mm c&ugrave;ng với trọng lượng chỉ 700g &ndash; bằng với c&acirc;n nặng của một quyển s&aacute;ch mỏng. Nếu như so với c&aacute;c d&ograve;ng laptop hay notebook của c&aacute;c h&atilde;ng kh&aacute;c th&igrave; việc mang một chiếc Surface Pro 7 sẽ tiện lợi hơn rất nhiều.</p>

<p><img alt="mua-surface-pro-7-5" src="https://cdn1.hoanghamobile.com/tin-tuc/wp-content/uploads/2021/03/mua-surface-pro-7-5.jpeg" style="height:534px; width:800px" /></p>

<p>Thời lượng pin của Surface Pro 7 rơi v&agrave;o khoảng hơn 10 tiếng sử dụng li&ecirc;n tục theo như c&ocirc;ng bố từ nh&agrave; sản xuất. V&agrave; đ&acirc;y quả thực l&agrave; một thời lơngj sử dụng l&yacute; tưởng đối với những người d&ugrave;ng hay phải di chuyển nhiều v&agrave; hoạt động li&ecirc;n tục ngo&agrave;i trời, kh&ocirc;ng hay ở trong văn ph&ograve;ng.</p>
', N'https://localhost:44399/Upload/Images/images/image-removebg-preview-1.png;https://localhost:44399/Upload/Images/images/image-removebg-preview-2.png;', N'/Upload/Images/images/image-removebg-preview.png', 1, CAST(28990000 AS Decimal(18, 0)), 12, N'Kích thước mỏng nhẹ, gọn gàng chính là một điểm đáng “đồng tiền bát gạo” nhất của Surface Pro 7. Máy sở hữu màn hình rộng 12.3 inch với “số đo 3 vòng” lần lượt là 292 mm x 201 mm x 8.5 mm cùng với trọng lượng chỉ 700g – bằng với cân nặng của một quyển sách mỏng', 1, 10)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([Id], [Name], [Description], [Sort], [IsHomePage]) VALUES (10, N'Điện thoại', NULL, 1, 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [Description], [Sort], [IsHomePage]) VALUES (11, N'Laptop', NULL, 2, 1)
INSERT [dbo].[ProductCategory] ([Id], [Name], [Description], [Sort], [IsHomePage]) VALUES (12, N'Máy tính bảng', NULL, 3, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [Description], [Sort], [IsHomePage]) VALUES (13, N'Đồ chơi công nghệ', NULL, 4, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [Description], [Sort], [IsHomePage]) VALUES (14, N'Phụ kiện', NULL, 5, 0)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/5/2022 9:27:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 7/5/2022 9:27:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 7/5/2022 9:27:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 7/5/2022 9:27:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 7/5/2022 9:27:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/5/2022 9:27:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_IsFeatured]  DEFAULT ((0)) FOR [IsFeatured]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Customer_GetViewModels]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Customer_GetViewModels]
AS
BEGIN
	SELECT *
	FROM Customer c
	JOIN AspNetUsers a ON c.Id = a.Id;
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Order_GetDetail]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Order_GetDetail]
	@id nvarchar(128)
AS
BEGIN
	SET NOCOUNT ON;

    SELECT 
		* 
	FROM [Order] 
	WHERE Id = @id;

	SELECT 
		i.*,
		p.[Name]
	FROM [OrderItem] i
	JOIN [Product] p ON p.Id = i.ProductId
	WHERE OrderId = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Order_GetViewModels]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Order_GetViewModels]
	
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT 
		o.*,
		c.FullName as CustomerName,
		a.Email as CustomerEmail
	FROM [Order] o
	JOIN Customer c ON o.CustomerId = c.Id
	JOIN AspNetUsers a ON o.CustomerId = a.Id;
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Product_Filter]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Product_Filter]
	@cateId int
AS
BEGIN
	SET NOCOUNT ON;

    SELECT 
		p.*,
		c.[Name] as CategoryName
	FROM Product p
	JOIN ProductCategory c ON c.Id = p.CategoryId
	WHERE c.Id = @cateId;
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Product_GetBestSeller]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_Product_GetBestSeller]
	@top int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
		p.*,
		c.Name as CategoryName
	FROM (
		SELECT TOP (@top)
			i.ProductId,
			COUNT(i.Id) as TotalCount
		FROM OrderItem i
		GROUP BY i.ProductId
		ORDER BY COUNT(i.Id) DESC
	) as t1
	JOIN Product p ON p.Id = t1.ProductId
	LEFT JOIN ProductCategory c ON p.CategoryId = c.Id;
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Product_GetDetail]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_Product_GetDetail]
	@id int
AS
BEGIN
	SET NOCOUNT ON;
    
	SELECT TOP 1
		p.*,
		(SELECT Name FROM ProductCategory c WHERE c.Id = p.CategoryId) as CategoryName
	FROM Product p
	WHERE p.Id = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Product_GetFeature]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_Product_GetFeature]
	@top int
AS
BEGIN
	SET NOCOUNT ON;
    
	SELECT TOP (@top)
		p.*,
		c.Name as CategoryName
	FROM Product p
	LEFT JOIN ProductCategory c ON p.CategoryId = c.Id
	WHERE p.IsFeatured = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Product_GetMain]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_Product_GetMain]
	@top int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM ProductCategory WHERE IsHomePage = 1;

	-- New Product
	SELECT * 
	FROM (
		SELECT 
			p.*,
			ROW_NUMBER() OVER(Partition by p.CategoryId ORDER BY p.Id DESC) AS Row_Number
		FROM Product p
		JOIN ProductCategory c ON c.Id = p.CategoryId
		WHERE c.IsHomePage = 1
	) as temp
	WHERE temp.Row_Number <= @top;
	
	-- Featured Product
	SELECT * 
	FROM (
		SELECT 
			p.*,
			ROW_NUMBER() OVER(Partition by p.CategoryId ORDER BY p.Id DESC) AS Row_Number
		FROM Product p
		JOIN ProductCategory c ON c.Id = p.CategoryId
		WHERE c.IsHomePage = 1
		AND p.IsFeatured = 1
	) as temp
	WHERE temp.Row_Number <= @top;

	-- BestSeller Product
	SELECT * 
	FROM (
		SELECT 
			p.*,
			ROW_NUMBER() OVER(Partition by p.CategoryId ORDER BY t1.TotalCount DESC) AS Row_Number
		FROM (
			SELECT
				i.ProductId,
				COUNT(i.Id) as TotalCount
			FROM OrderItem i
			GROUP BY i.ProductId
		) as t1
		JOIN Product p ON p.Id = t1.ProductId
		JOIN ProductCategory c ON c.Id = p.CategoryId
		WHERE c.IsHomePage = 1
	) as temp
	WHERE temp.Row_Number <= @top;
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Product_GetNew]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_Product_GetNew]
	@top int
AS
BEGIN
	SET NOCOUNT ON;
    
	SELECT TOP (@top)
		p.*,
		c.Name as CategoryName
	FROM Product p
	LEFT JOIN ProductCategory c ON p.CategoryId = c.Id
	ORDER BY ID DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Product_GetRelated]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_Product_GetRelated]
	@id int,
	@top int
AS
BEGIN
	SET NOCOUNT ON;
    DECLARE @cateId int;

	SET @cateId = (SELECT CategoryId FROM Product WHERE Id = @id);

	SELECT TOP (@top)
		p.*,
		c.Name as CategoryName
	FROM Product p
	JOIN ProductCategory c ON c.Id = p.CategoryId
	WHERE p.CategoryId = @cateId
	AND p.Id <> @id;
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_Product_GetViewModels]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Proc_Product_GetViewModels] 
	
AS
BEGIN
	SET NOCOUNT ON;

    SELECT 
		p.*,
		c.Name as CategoryName
	FROM Product p
	LEFT JOIN ProductCategory c ON c.Id = p.CategoryId
	ORDER BY p.Id DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_ProductCategory_GetMain]    Script Date: 7/5/2022 9:27:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_ProductCategory_GetMain]
	
AS
BEGIN
	SET NOCOUNT ON;

    SELECT * 
	FROM ProductCategory
	WHERE IsHomePage = 1;
END
GO
USE [master]
GO
ALTER DATABASE [MyShop] SET  READ_WRITE 
GO
