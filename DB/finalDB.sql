USE [database_mom_baby]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NOT NULL,
	[password] [varchar](32) NOT NULL,
	[email] [varchar](1000) NOT NULL,
	[phone] [varchar](1000) NOT NULL,
	[status] [tinyint] NOT NULL,
	[fullname] [nvarchar](200) NULL,
	[date] [datetime] NOT NULL,
	[role] [int] NOT NULL,
	[avatar] [nchar](1000) NULL,
	[balance] [float] NULL,
 CONSTRAINT [PK__User__3214EC271AACD699] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[img] [varchar](500) NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[status] [tinyint] NOT NULL,
	[datePost] [datetime] NOT NULL,
	[dateUpdate] [datetime] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NULL,
	[email] [varchar](1000) NOT NULL,
	[customerName] [nvarchar](100) NOT NULL,
	[phone] [varchar](100) NOT NULL,
	[address] [nvarchar](1000) NOT NULL,
	[detailAddress] [nvarchar](1000) NULL,
	[total] [float] NOT NULL,
	[status] [tinyint] NOT NULL,
	[isGetPoint] [tinyint] NOT NULL,
	[isUsedPoint] [float] NOT NULL,
	[payment] [tinyint] NOT NULL,
	[dateOrder] [datetime] NOT NULL,
	[dateUpdate] [datetime] NULL,
	[transactionCode] [nvarchar](50) NULL,
	[voucherID] [int] NULL,
 CONSTRAINT [PK__Bill__3214EC273703A317] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[billID] [int] NOT NULL,
	[imgProduct] [varchar](2000) NOT NULL,
	[numberOfProduct] [int] NOT NULL,
	[priceProduct] [float] NOT NULL,
	[nameProduct] [nvarchar](1000) NOT NULL,
	[productID] [int] NOT NULL,
 CONSTRAINT [PK__BillDeta__3214EC272552895B] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[shortDesc] [nvarchar](1000) NULL,
	[description] [nvarchar](max) NOT NULL,
	[image] [nvarchar](200) NOT NULL,
	[datePost] [datetime] NOT NULL,
	[dateUpdate] [datetime] NULL,
	[status] [int] NOT NULL,
	[view] [bigint] NOT NULL,
	[categoryID] [int] NOT NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[img] [varchar](500) NOT NULL,
	[datePost] [datetime] NOT NULL,
	[dateUpdate] [datetime] NULL,
	[status] [tinyint] NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NOT NULL,
	[totalPrice] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[productID] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NOT NULL,
	[datePost] [datetime] NOT NULL,
	[dateUpdate] [datetime] NULL,
	[status] [tinyint] NOT NULL,
 CONSTRAINT [PK__Category__3214EC2763872BFD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[district]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[district](
	[district_id] [int] NOT NULL,
	[province_id] [int] NOT NULL,
	[name] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[productID] [int] NULL,
	[feedback] [nvarchar](1000) NOT NULL,
	[star] [int] NOT NULL,
	[status] [tinyint] NOT NULL,
	[datePost] [datetime] NOT NULL,
	[dateUpdate] [datetime] NULL,
	[billID] [int] NOT NULL,
 CONSTRAINT [PK__Comment__3214EC27AE11BE00] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgDescription]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgDescription](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[imgUrl] [varchar](1000) NOT NULL,
	[productID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[preOrder]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[preOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NOT NULL,
	[accountID] [int] NOT NULL,
	[status] [tinyint] NOT NULL,
 CONSTRAINT [PK_preOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NOT NULL,
	[datePost] [datetime] NOT NULL,
	[dateUpdate] [datetime] NULL,
	[status] [tinyint] NOT NULL,
 CONSTRAINT [PK__Producer__3214EC27087E67DC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NOT NULL,
	[oldPrice] [float] NOT NULL,
	[newPrice] [float] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[datePost] [datetime] NOT NULL,
	[dateUpdate] [datetime] NULL,
	[mainImg] [varchar](2000) NOT NULL,
	[status] [tinyint] NOT NULL,
	[quantity] [int] NOT NULL,
	[sold] [int] NULL,
	[model] [varchar](100) NOT NULL,
	[priority] [tinyint] NOT NULL,
	[categoryID] [int] NOT NULL,
	[producerID] [int] NOT NULL,
	[brandID] [int] NOT NULL,
 CONSTRAINT [PK__Product__3214EC27D5ABB81D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[province]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[province](
	[province_id] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[province_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[type] [tinyint] NOT NULL,
	[status] [tinyint] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[used]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[used](
	[accountID] [int] NOT NULL,
	[voucherID] [int] NOT NULL,
	[dateUse] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountID] ASC,
	[voucherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[code] [nvarchar](50) NULL,
	[value] [float] NOT NULL,
	[start] [datetime] NOT NULL,
	[end] [datetime] NOT NULL,
	[status] [tinyint] NOT NULL,
	[limit] [float] NULL,
	[used] [varchar](max) NULL,
 CONSTRAINT [PK_voucher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wards]    Script Date: 5/31/2024 10:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wards](
	[wards_id] [int] NOT NULL,
	[district_id] [int] NOT NULL,
	[name] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wards_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [username], [password], [email], [phone], [status], [fullname], [date], [role], [avatar], [balance]) VALUES (24, N'phuocnguyen', N'123456789', N'mr.thienphuocfat@gmail.com', N'0938680987', 1, N'Nguyen Ngoc Thien Phuoc', CAST(N'2024-05-28T22:29:11.350' AS DateTime), 1, N'./static-admin/assets/images/default_avatar.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [img], [name], [status], [datePost], [dateUpdate]) VALUES (4, N'./uploads/banner/052424125518_1716363523-HOME-TAKATO.png', N'Slide 1', 1, CAST(N'2024-05-18T21:52:31.737' AS DateTime), CAST(N'2024-05-24T00:55:18.300' AS DateTime))
INSERT [dbo].[Banner] ([ID], [img], [name], [status], [datePost], [dateUpdate]) VALUES (5, N'./uploads/banner/052424125506_1715832798-1960x640.png', N'Slide 2', 1, CAST(N'2024-05-18T21:52:39.167' AS DateTime), CAST(N'2024-05-24T00:55:06.797' AS DateTime))
INSERT [dbo].[Banner] ([ID], [img], [name], [status], [datePost], [dateUpdate]) VALUES (6, N'./uploads/banner/052424125501_1715700987-HOME(1).png', N'Slide 3', 1, CAST(N'2024-05-18T21:52:46.037' AS DateTime), CAST(N'2024-05-24T00:55:01.183' AS DateTime))
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([ID], [title], [shortDesc], [description], [image], [datePost], [dateUpdate], [status], [view], [categoryID]) VALUES (1, N'Sữa 213', N'Abc', N'<p>Sữa</p>
', N'./uploads/blog/052324102901_gallery-1.png', CAST(N'2024-05-23T09:58:06.960' AS DateTime), CAST(N'2024-05-23T23:34:47.123' AS DateTime), 1, 0, 4)
INSERT [dbo].[Blog] ([ID], [title], [shortDesc], [description], [image], [datePost], [dateUpdate], [status], [view], [categoryID]) VALUES (2, N'So sánh 2 dòng sữa phổ biến cho mẹ bầu - Enfamama A+ và Similac Mom', N'Enfamama A+ và Similac Mom là thương hiệu sữa cho bà bầu phổ biến hiện nay. Tuy nhiên, đâu mới là sữa bầu tốt nhất cho các mẹ? Để giúp các mẹ đỡ phân vân về vấn đề này, Con Cưng sẽ giúp mẹ chỉ ra những điểm nổi trội của từng dòng sữa.', N'<p><strong><a href="https://concung.com/search?search_query=enfamama&amp;submit_search=T%C3%ACm+ki%E1%BA%BFm"><em>Enfamama A+</em></a><em>&nbsp;v&agrave;&nbsp;</em><a href="https://concung.com/search?search_query=similac+mom&amp;submit_search=T%C3%ACm+ki%E1%BA%BFm"><em>Similac Mom</em></a><em>&nbsp;l&agrave; thương hiệu sữa cho b&agrave; bầu phổ biến hiện nay. Tuy nhi&ecirc;n, đ&acirc;u mới l&agrave; sữa bầu tốt nhất cho c&aacute;c mẹ? Để gi&uacute;p c&aacute;c mẹ đỡ ph&acirc;n v&acirc;n về vấn đề n&agrave;y, Con Cưng sẽ gi&uacute;p mẹ chỉ ra những điểm nổi trội của từng d&ograve;ng sữa.</em></strong></p>

<p><strong>H&atilde;y c&ugrave;ng Con Cưng t&igrave;m hiểu xem hai thương hiệu sữa cho b&agrave; bầu n&agrave;y c&oacute; g&igrave; đặc biệt trong b&agrave;i viết dưới đ&acirc;y nh&eacute;!</strong></p>

<h2><strong>1. So s&aacute;nh Enfamama A+ v&agrave; Similac Mom</strong></h2>

<h3><strong><em>Nguồn gốc</em></strong></h3>

<ul>
	<li><strong>Enfamama A+</strong></li>
</ul>

<p>Enfamama A+ l&agrave; sản phẩm&nbsp;<strong>sữa cho b&agrave; bầu</strong>&nbsp;thuộc Mead Johnson Nutrition. Th&agrave;nh lập từ năm 1905, với hơn một thế kỷ đồng h&agrave;nh c&ugrave;ng mẹ v&agrave; b&eacute;, Mead Johnson đ&atilde; đạt được nhiều th&agrave;nh tựu với hơn 70 d&ograve;ng sản phẩm ph&acirc;n phối tại tr&ecirc;n 50 quốc gia.</p>

<p>Với nền tảng kinh doanh dựa tr&ecirc;n 3 nguy&ecirc;n tắc ch&iacute;nh: phục vụ thị trường, bảo vệ m&ocirc;i trường v&agrave; ph&aacute;t triển cộng đồng, Mead Johnson lu&ocirc;n thực hiện việc kinh doanh một c&aacute;ch ch&iacute;nh trực, lu&ocirc;n nỗ lực ph&aacute;t triển những cộng đồng vững mạnh v&agrave; một m&ocirc;i trường sống trong l&agrave;nh cho c&aacute;c thế hệ mai sau.</p>

<p><em><img alt="" src="https://cdn1.concung.com/storage/data/2021/thong-tin-bo-ich/2021/08/gioi-thieu-cong-ty-mead-johnson-nutrition-1-800x427.webp" style="height:428px; width:800px" />&nbsp;</em></p>

<p><em>Mead Johnson Nutrition, thương hiệu uy t&iacute;n cho mẹ v&agrave; b&eacute;</em></p>

<ul>
	<li><strong>Similac Mom:</strong></li>
</ul>

<p>&nbsp;</p>

<p>Similac Mom l&agrave; sản phẩm&nbsp;<strong>sữa cho b&agrave; bầu</strong>&nbsp;thuộc&nbsp;<a href="https://concung.com/123-thuong-hieu-abbott-hoa-ky-101586-sua-bot.html">Abbott&nbsp;</a>- Thương hiệu chăm s&oacute;c sức khỏe h&agrave;ng đầu thế giới đến từ Hoa Kỳ. Th&agrave;nh lập năm 1888, Abbott vẫn lu&ocirc;n tập trung nghi&ecirc;n cứu, ph&aacute;t triển, sản xuất v&agrave; đưa ra c&aacute;c sản phẩm v&agrave; dịch vụ chăm s&oacute;c sức khỏe.</p>

<p>Hơn một thập kỷ qua, Abbott đ&atilde; trở th&agrave;nh một phần kh&ocirc;ng thể thiếu trong những cộng đồng hướng đến cuộc sống khỏe mạnh. Qua phương ch&acirc;m &ldquo;Promise for Life&rdquo; (Cam kết v&igrave; Cuộc sống), Abbott đ&atilde; thể hiện r&otilde; r&agrave;ng niềm tin, gi&aacute; trị v&agrave; những nỗ lực cống hiến trong c&ocirc;ng việc h&agrave;ng ng&agrave;y của m&igrave;nh v&agrave; được c&ocirc;ng nhận l&agrave; một trong những t&ecirc;n tuổi uy t&iacute;n nhất thế giới về c&aacute;c sản phẩm dinh dưỡng.</p>

<p><em>&nbsp;<img alt="" src="https://cdn1.concung.com/storage/data/2021/thong-tin-bo-ich/2021/08/VCKZTPAGZ5EIPANYRU5JNX53JU.webp" style="height:450px; width:800px" /></em></p>

<p><em>Abbott với phương ch&acirc;m mạnh mẽ, thể hiện r&otilde; gi&aacute; trị của thương hiệu</em></p>

<h3><strong><em>Gi&aacute; th&agrave;nh</em></strong></h3>

<p>Bảng gi&aacute; sữa Enfamama A+ v&agrave; Similac Mom tại Con Cưng&nbsp;<em>(cập nhật ng&agrave;y 25/03/2021)</em>:</p>

<table border="1" cellpadding="0" cellspacing="0" style="width:602px">
	<tbody>
		<tr>
			<td style="vertical-align:top">
			<p><strong>T&ecirc;n sản phẩm</strong></p>
			</td>
			<td style="vertical-align:top">
			<p><strong>Trọng lượng</strong></p>
			</td>
			<td style="vertical-align:top">
			<p><strong>Gi&aacute; th&agrave;nh</strong></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>Enfamama A+ (hương vani v&agrave; socola)</p>
			</td>
			<td style="vertical-align:top">
			<p>870g</p>
			</td>
			<td style="vertical-align:top">
			<p>475.000 VNĐ</p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>Similac Mom (hương vani)</p>
			</td>
			<td style="vertical-align:top">
			<p>900g</p>
			</td>
			<td style="vertical-align:top">
			<p>429.000 VNĐ</p>
			</td>
		</tr>
	</tbody>
</table>

<h3><br />
<strong><em>So s&aacute;nh th&agrave;nh phần sữa Enfamama A+ v&agrave; Similac Mom</em></strong></h3>

<ul>
	<li><strong>Enfamama A+</strong></li>
</ul>

<table border="1" cellpadding="0" cellspacing="0" style="width:600px">
	<tbody>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Ưu điểm</strong></p>
			</td>
			<td style="vertical-align:top">
			<p><strong>Khuyết điểm</strong></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>Th&agrave;nh phần dinh dưỡng kết hợp nhiều dưỡng chất quan trọng cho sự ph&aacute;t triển to&agrave;n diện v&agrave; đ&aacute;p ứng c&aacute;c nhu cầu dinh dưỡng của mẹ trong suốt giai đoạn mang thai v&agrave; cho con b&uacute;:</p>

			<ul>
				<li>DHA với h&agrave;m lượng cao, đạt ti&ecirc;u chuẩn theo khuyến nghị của FAO/WHO: bổ sung DHA trong giai đoạn thai kỳ, h&agrave;m lượng DHA trong sữa mẹ cũng sẽ tăng cao</li>
				<li>CHOLINE h&agrave;m lượng cao: gi&uacute;p tổng hợp Acetylcholine, chất dẫn truyền thần kinh quan trọng</li>
				<li>Chất xơ: giảm t&aacute;o b&oacute;n, hỗ trợ sức khỏe đường ruột</li>
				<li>Axit Folic, Sắt, I-ốt, c&aacute;c vitamin v&agrave; nhiều kho&aacute;ng chất: hỗ trợ sức khoẻ của mẹ đang trong thai kỳ</li>
			</ul>

			<p>C&oacute; nhiều hương vị cho mẹ chọn lựa:</p>

			<ul>
				<li>Vani: Vị thơm nhẹ dịu</li>
				<li>Socola: Vị ngọt tự nhi&ecirc;n</li>
			</ul>

			<p>Năng lượng cao hơn Similac Mom (370 kcal/100g bột)</p>
			</td>
			<td style="vertical-align:top">
			<p>Gi&aacute; th&agrave;nh cao v&agrave; trọng lượng thấp hơn so với Similac Mom</p>
			</td>
		</tr>
	</tbody>
</table>

<ul>
	<li><strong>Similac Mom</strong></li>
</ul>

<table border="1" cellpadding="0" cellspacing="0" style="width:600px">
	<tbody>
		<tr>
			<td style="vertical-align:top">
			<p><strong>Ưu điểm</strong></p>
			</td>
			<td style="vertical-align:top">
			<p><strong>Khuyết điểm</strong></p>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:top">
			<p>Th&agrave;nh phần dinh dưỡng kết hợp nhiều dưỡng chất quan trọng cho sự ph&aacute;t triển to&agrave;n diện v&agrave; đ&aacute;p ứng c&aacute;c nhu cầu dinh dưỡng của mẹ trong suốt giai đoạn mang thai v&agrave; cho con b&uacute;:</p>

			<ul>
				<li>DHA v&agrave; cholin: hỗ trợ ph&aacute;t triển n&atilde;o bộ</li>
				<li>Acid Folid: giảm nguy cơ khuyết tật ống thần kinh</li>
				<li>Sắt: giảm nguy cơ thiếu m&aacute;u do thiếu sắt trong thai kỳ</li>
				<li>Vitamin D v&agrave; FOS chuỗi ngắn: gi&uacute;p hấp thu Canxi tốt v&agrave; giảm t&aacute;o b&oacute;n&nbsp;</li>
				<li>Hệ dưỡng chất đặc biệt Immunify (gồm prebiotics, kẽm, c&aacute;c chất chống oxy ho&aacute;)</li>
			</ul>

			<p>&nbsp;Gi&aacute; th&agrave;nh rẻ v&agrave; trọng lượng nhiều hơn so với Enfamama A+</p>
			</td>
			<td style="vertical-align:top">
			<p>Chỉ c&oacute; hương vani</p>

			<p>Năng lượng thấp hơn Enfamama A+ (353 kcal/100g bột)&nbsp;&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<h2><br />
<strong>2. N&ecirc;n chọn Enfamama A+ hay Similac Mom?</strong></h2>

<p><strong>Enfamama A+</strong>&nbsp;chứa h&agrave;m lượng DHA cao nhất trong tất cả c&aacute;c d&ograve;ng<strong>&nbsp;sữa cho b&agrave; bầu</strong>&nbsp;(t&iacute;nh tới thời điểm hiện tại). Chỉ với 2 ly sữa mỗi ng&agrave;y, mẹ sẽ được bổ sung tận 100mg DHA gi&uacute;p b&eacute; ph&aacute;t triển n&atilde;o bộ từ khi c&ograve;n trong bụng mẹ. B&ecirc;n cạnh đ&oacute;, Enfamama A+ cũng chứa c&aacute;c dưỡng chất quan trọng, hướng đến sự ph&aacute;t triển to&agrave;n diện, đạt nhu cầu dinh dưỡng gia tăng trong suốt giai đoạn mang thai v&agrave; cho con b&uacute;.&nbsp;&nbsp;</p>

<p><em><img alt="" src="https://cdn1.concung.com/storage/data/2021/thong-tin-bo-ich/2021/08/sua-enfamama-a.webp" style="height:800px; width:800px" />&nbsp;</em></p>

<p><em>&nbsp;Sữa bầu Enfamama A+ với h&agrave;ng lượng DHA nổi trội</em></p>

<p><strong>Similac Mom</strong>&nbsp;tuy kh&ocirc;ng đặc biệt tập trung v&agrave;o dưỡng chất n&agrave;o nhưng lại chứa đến 24 vitamin v&agrave; kho&aacute;ng ch&acirc;́t thi&ecirc;́t y&ecirc;́u c&ugrave;ng ch&acirc;́t đạm, DHA, prebiotic, đ&aacute;p ứng đầy đủ nhu cầu dinh dưỡng của mẹ bầu trong thời gian mang thai v&agrave; cho con b&uacute;. Đặc biệt, sữa Similac Mom c&oacute; h&agrave;m lượng chất b&eacute;o thấp, vị nhạt, &iacute;t ngọt, &iacute;t b&eacute;o, kh&ocirc;ng g&acirc;y dư thừa năng lượng cho c&aacute;c mẹ bầu.</p>

<p><em><img alt="" src="https://cdn1.concung.com/storage/data/2021/thong-tin-bo-ich/2021/08/sua-bau-similac-mom-huong-sua-chua-dau-400-g-9.webp" style="height:800px; width:800px" />&nbsp;</em></p>

<p><em>&nbsp;Sữa bầu Similac Mom với h&agrave;m lượng dưỡng chất đa dạng</em></p>

<p>Nh&igrave;n chung, cả hai d&ograve;ng sữa Enfamama A+ v&agrave; Similac Mom đều sở hữu những đặc t&iacute;nh quan trọng, đem đến cho mẹ nguồn dinh dưỡng đầy đủ. Để c&oacute; thể chọn được loại&nbsp;<strong>sữa bầu tốt nhất</strong>, mẹ n&ecirc;n c&acirc;n nhắc c&aacute;c yếu tố như khẩu vị, khả năng t&agrave;i ch&iacute;nh cũng như nhu cầu về dưỡng chất.</p>

<h2><strong>3. Mua sữa bầu ch&iacute;nh h&atilde;ng, gi&aacute; tốt tại hơn 400 cửa h&agrave;ng Con Cưng&nbsp;</strong></h2>

<p>Cả hai loại sữa&nbsp;<a href="https://concung.com/search?search_query=enfamama&amp;submit_search=T%C3%ACm+ki%E1%BA%BFm">Enfamama A+</a>&nbsp;v&agrave;&nbsp;<a href="https://concung.com/search?search_query=similac+Mom&amp;submit_search=T%C3%ACm+ki%E1%BA%BFm">Similac Mom</a>&nbsp;đều đang được b&aacute;n tại hơn 400 cửa h&agrave;ng của Con Cưng tr&ecirc;n to&agrave;n quốc.</p>

<p>Với uy t&iacute;n trong suốt 10 năm qua, đến với Con Cưng, mẹ chắc chắn sẽ mua được loại&nbsp;<strong>sữa bầu tốt nhất</strong>. Gh&eacute; thăm cửa h&agrave;ng trực tiếp hoặc đặt h&agrave;ng tại web/app Con Cưng để nhận ưu đ&atilde;i miễn ph&iacute; giao h&agrave;ng, nhận h&agrave;ng liền tay chỉ trong 30 ph&uacute;t mẹ nh&eacute;!&nbsp;</p>
', N'./uploads/blog/052424122605_sua-enfamama-vani_3.jpg', CAST(N'2024-05-24T00:26:05.800' AS DateTime), NULL, 1, 0, 5)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [name], [img], [datePost], [dateUpdate], [status]) VALUES (5, N'Vinamilk', N'./uploads/brand/052824105351_vinamilk_logo.jpg', CAST(N'2024-05-21T22:51:48.290' AS DateTime), CAST(N'2024-05-28T22:53:51.793' AS DateTime), 1)
INSERT [dbo].[Brand] ([ID], [name], [img], [datePost], [dateUpdate], [status]) VALUES (7, N'Friso', N'./uploads/brand/052824103619_Friso_logo.jpg', CAST(N'2024-05-28T22:36:19.640' AS DateTime), NULL, 1)
INSERT [dbo].[Brand] ([ID], [name], [img], [datePost], [dateUpdate], [status]) VALUES (8, N'Nestle', N'./uploads/brand/052824104508_Nestle-Logo.png', CAST(N'2024-05-28T22:45:08.107' AS DateTime), NULL, 1)
INSERT [dbo].[Brand] ([ID], [name], [img], [datePost], [dateUpdate], [status]) VALUES (9, N'ILDONG', N'./uploads/brand/052824104833_ILDONT_logo.jpg', CAST(N'2024-05-28T22:48:33.917' AS DateTime), NULL, 1)
INSERT [dbo].[Brand] ([ID], [name], [img], [datePost], [dateUpdate], [status]) VALUES (10, N'Abbott Grow', N'./uploads/brand/052824105242_abbott brand.png', CAST(N'2024-05-28T22:52:42.797' AS DateTime), NULL, 1)
INSERT [dbo].[Brand] ([ID], [name], [img], [datePost], [dateUpdate], [status]) VALUES (11, N'Huggies', N'./uploads/brand/052824105913_Huggies_Logo.jpg', CAST(N'2024-05-28T22:59:13.263' AS DateTime), NULL, 1)
INSERT [dbo].[Brand] ([ID], [name], [img], [datePost], [dateUpdate], [status]) VALUES (12, N'Whito', N'./uploads/brand/052824110406_Whito_logo.jpg', CAST(N'2024-05-28T23:04:06.870' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [name], [datePost], [dateUpdate], [status]) VALUES (4, N'Milk', CAST(N'2024-05-17T23:38:43.077' AS DateTime), CAST(N'2024-05-20T21:30:50.583' AS DateTime), 1)
INSERT [dbo].[Category] ([ID], [name], [datePost], [dateUpdate], [status]) VALUES (5, N'Sữa Mỹ', CAST(N'2024-05-24T00:23:27.773' AS DateTime), CAST(N'2024-05-31T21:42:03.443' AS DateTime), 1)
INSERT [dbo].[Category] ([ID], [name], [datePost], [dateUpdate], [status]) VALUES (7, N'Diapers', CAST(N'2024-05-28T22:59:58.773' AS DateTime), NULL, 1)
INSERT [dbo].[Category] ([ID], [name], [datePost], [dateUpdate], [status]) VALUES (8, N'Nutrient Food', CAST(N'2024-05-28T23:11:19.603' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (1, 1, N'Quận Ba Đình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (2, 1, N'Quận Hoàn Kiếm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (3, 1, N'Quận Tây Hồ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (4, 1, N'Quận Long Biên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (5, 1, N'Quận Cầu Giấy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (6, 1, N'Quận Đống Đa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (7, 1, N'Quận Hai Bà Trưng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (8, 1, N'Quận Hoàng Mai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (9, 1, N'Quận Thanh Xuân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (10, 1, N'Huyện Sóc Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (11, 1, N'Huyện Đông Anh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (12, 1, N'Huyện Gia Lâm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (13, 1, N'Quận Nam Từ Liêm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (14, 1, N'Huyện Thanh Trì')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (15, 1, N'Quận Bắc Từ Liêm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (16, 1, N'Huyện Mê Linh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (17, 1, N'Quận Hà Đông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (18, 1, N'Thị xã Sơn Tây')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (19, 1, N'Huyện Ba Vì')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (20, 1, N'Huyện Phúc Thọ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (21, 1, N'Huyện Đan Phượng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (22, 1, N'Huyện Hoài Đức')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (23, 1, N'Huyện Quốc Oai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (24, 1, N'Huyện Thạch Thất')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (25, 1, N'Huyện Chương Mỹ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (26, 1, N'Huyện Thanh Oai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (27, 1, N'Huyện Thường Tín')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (28, 1, N'Huyện Phú Xuyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (29, 1, N'Huyện Ứng Hòa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (30, 1, N'Huyện Mỹ Đức')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (31, 2, N'Thành phố Hà Giang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (32, 2, N'Huyện Đồng Văn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (33, 2, N'Huyện Mèo Vạc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (34, 2, N'Huyện Yên Minh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (35, 2, N'Huyện Quản Bạ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (36, 2, N'Huyện Vị Xuyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (37, 2, N'Huyện Bắc Mê')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (38, 2, N'Huyện Hoàng Su Phì')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (39, 2, N'Huyện Xín Mần')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (40, 2, N'Huyện Bắc Quang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (41, 2, N'Huyện Quang Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (42, 3, N'Thành phố Cao Bằng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (43, 3, N'Huyện Bảo Lâm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (44, 3, N'Huyện Bảo Lạc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (45, 3, N'Huyện Hà Quảng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (46, 3, N'Huyện Trùng Khánh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (47, 3, N'Huyện Hạ Lang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (48, 3, N'Huyện Quảng Hòa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (49, 3, N'Huyện Hoà An')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (50, 3, N'Huyện Nguyên Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (51, 3, N'Huyện Thạch An')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (52, 4, N'Thành Phố Bắc Kạn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (53, 4, N'Huyện Pác Nặm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (54, 4, N'Huyện Ba Bể')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (55, 4, N'Huyện Ngân Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (56, 4, N'Huyện Bạch Thông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (57, 4, N'Huyện Chợ Đồn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (58, 4, N'Huyện Chợ Mới')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (59, 4, N'Huyện Na Rì')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (60, 5, N'Thành phố Tuyên Quang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (61, 5, N'Huyện Lâm Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (62, 5, N'Huyện Na Hang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (63, 5, N'Huyện Chiêm Hóa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (64, 5, N'Huyện Hàm Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (65, 5, N'Huyện Yên Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (66, 5, N'Huyện Sơn Dương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (67, 6, N'Thành phố Lào Cai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (68, 6, N'Huyện Bát Xát')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (69, 6, N'Huyện Mường Khương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (70, 6, N'Huyện Si Ma Cai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (71, 6, N'Huyện Bắc Hà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (72, 6, N'Huyện Bảo Thắng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (73, 6, N'Huyện Bảo Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (74, 6, N'Thị xã Sa Pa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (75, 6, N'Huyện Văn Bàn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (76, 7, N'Thành phố Điện Biên Phủ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (77, 7, N'Thị Xã Mường Lay')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (78, 7, N'Huyện Mường Nhé')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (79, 7, N'Huyện Mường Chà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (80, 7, N'Huyện Tủa Chùa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (81, 7, N'Huyện Tuần Giáo')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (82, 7, N'Huyện Điện Biên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (83, 7, N'Huyện Điện Biên Đông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (84, 7, N'Huyện Mường Ảng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (85, 7, N'Huyện Nậm Pồ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (86, 8, N'Thành phố Lai Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (87, 8, N'Huyện Tam Đường')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (88, 8, N'Huyện Mường Tè')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (89, 8, N'Huyện Sìn Hồ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (90, 8, N'Huyện Phong Thổ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (91, 8, N'Huyện Than Uyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (92, 8, N'Huyện Tân Uyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (93, 8, N'Huyện Nậm Nhùn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (94, 9, N'Thành phố Sơn La')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (95, 9, N'Huyện Quỳnh Nhai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (96, 9, N'Huyện Thuận Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (97, 9, N'Huyện Mường La')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (98, 9, N'Huyện Bắc Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (99, 9, N'Huyện Phù Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (100, 9, N'Huyện Mộc Châu')
GO
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (101, 9, N'Huyện Yên Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (102, 9, N'Huyện Mai Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (103, 9, N'Huyện Sông Mã')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (104, 9, N'Huyện Sốp Cộp')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (105, 9, N'Huyện Vân Hồ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (106, 10, N'Thành phố Yên Bái')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (107, 10, N'Thị xã Nghĩa Lộ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (108, 10, N'Huyện Lục Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (109, 10, N'Huyện Văn Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (110, 10, N'Huyện Mù Căng Chải')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (111, 10, N'Huyện Trấn Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (112, 10, N'Huyện Trạm Tấu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (113, 10, N'Huyện Văn Chấn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (114, 10, N'Huyện Yên Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (115, 11, N'Thành phố Hòa Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (116, 11, N'Huyện Đà Bắc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (117, 11, N'Huyện Lương Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (118, 11, N'Huyện Kim Bôi')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (119, 11, N'Huyện Cao Phong')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (120, 11, N'Huyện Tân Lạc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (121, 11, N'Huyện Mai Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (122, 11, N'Huyện Lạc Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (123, 11, N'Huyện Yên Thủy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (124, 11, N'Huyện Lạc Thủy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (125, 12, N'Thành phố Thái Nguyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (126, 12, N'Thành phố Sông Công')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (127, 12, N'Huyện Định Hóa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (128, 12, N'Huyện Phú Lương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (129, 12, N'Huyện Đồng Hỷ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (130, 12, N'Huyện Võ Nhai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (131, 12, N'Huyện Đại Từ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (132, 12, N'Thị xã Phổ Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (133, 12, N'Huyện Phú Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (134, 13, N'Thành phố Lạng Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (135, 13, N'Huyện Tràng Định')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (136, 13, N'Huyện Bình Gia')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (137, 13, N'Huyện Văn Lãng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (138, 13, N'Huyện Cao Lộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (139, 13, N'Huyện Văn Quan')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (140, 13, N'Huyện Bắc Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (141, 13, N'Huyện Hữu Lũng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (142, 13, N'Huyện Chi Lăng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (143, 13, N'Huyện Lộc Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (144, 13, N'Huyện Đình Lập')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (145, 14, N'Thành phố Hạ Long')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (146, 14, N'Thành phố Móng Cái')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (147, 14, N'Thành phố Cẩm Phả')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (148, 14, N'Thành phố Uông Bí')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (149, 14, N'Huyện Bình Liêu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (150, 14, N'Huyện Tiên Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (151, 14, N'Huyện Đầm Hà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (152, 14, N'Huyện Hải Hà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (153, 14, N'Huyện Ba Chẽ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (154, 14, N'Huyện Vân Đồn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (155, 14, N'Thị xã Đông Triều')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (156, 14, N'Thị xã Quảng Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (157, 14, N'Huyện Cô Tô')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (158, 15, N'Thành phố Bắc Giang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (159, 15, N'Huyện Yên Thế')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (160, 15, N'Huyện Tân Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (161, 15, N'Huyện Lạng Giang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (162, 15, N'Huyện Lục Nam')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (163, 15, N'Huyện Lục Ngạn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (164, 15, N'Huyện Sơn Động')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (165, 15, N'Huyện Yên Dũng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (166, 15, N'Huyện Việt Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (167, 15, N'Huyện Hiệp Hòa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (168, 16, N'Thành phố Việt Trì')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (169, 16, N'Thị xã Phú Thọ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (170, 16, N'Huyện Đoan Hùng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (171, 16, N'Huyện Hạ Hoà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (172, 16, N'Huyện Thanh Ba')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (173, 16, N'Huyện Phù Ninh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (174, 16, N'Huyện Yên Lập')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (175, 16, N'Huyện Cẩm Khê')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (176, 16, N'Huyện Tam Nông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (177, 16, N'Huyện Lâm Thao')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (178, 16, N'Huyện Thanh Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (179, 16, N'Huyện Thanh Thuỷ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (180, 16, N'Huyện Tân Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (181, 17, N'Thành phố Vĩnh Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (182, 17, N'Thành phố Phúc Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (183, 17, N'Huyện Lập Thạch')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (184, 17, N'Huyện Tam Dương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (185, 17, N'Huyện Tam Đảo')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (186, 17, N'Huyện Bình Xuyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (187, 17, N'Huyện Yên Lạc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (188, 17, N'Huyện Vĩnh Tường')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (189, 17, N'Huyện Sông Lô')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (190, 18, N'Thành phố Bắc Ninh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (191, 18, N'Huyện Yên Phong')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (192, 18, N'Huyện Quế Võ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (193, 18, N'Huyện Tiên Du')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (194, 18, N'Thành phố Từ Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (195, 18, N'Huyện Thuận Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (196, 18, N'Huyện Gia Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (197, 18, N'Huyện Lương Tài')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (198, 19, N'Thành phố Hải Dương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (199, 19, N'Thành phố Chí Linh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (200, 19, N'Huyện Nam Sách')
GO
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (201, 19, N'Thị xã Kinh Môn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (202, 19, N'Huyện Kim Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (203, 19, N'Huyện Thanh Hà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (204, 19, N'Huyện Cẩm Giàng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (205, 19, N'Huyện Bình Giang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (206, 19, N'Huyện Gia Lộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (207, 19, N'Huyện Tứ Kỳ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (208, 19, N'Huyện Ninh Giang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (209, 19, N'Huyện Thanh Miện')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (210, 20, N'Quận Hồng Bàng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (211, 20, N'Quận Ngô Quyền')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (212, 20, N'Quận Lê Chân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (213, 20, N'Quận Hải An')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (214, 20, N'Quận Kiến An')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (215, 20, N'Quận Đồ Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (216, 20, N'Quận Dương Kinh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (217, 20, N'Huyện Thuỷ Nguyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (218, 20, N'Huyện An Dương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (219, 20, N'Huyện An Lão')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (220, 20, N'Huyện Kiến Thuỵ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (221, 20, N'Huyện Tiên Lãng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (222, 20, N'Huyện Vĩnh Bảo')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (223, 20, N'Huyện Cát Hải')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (224, 20, N'Huyện Bạch Long Vĩ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (225, 21, N'Thành phố Hưng Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (226, 21, N'Huyện Văn Lâm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (227, 21, N'Huyện Văn Giang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (228, 21, N'Huyện Yên Mỹ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (229, 21, N'Thị xã Mỹ Hào')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (230, 21, N'Huyện Ân Thi')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (231, 21, N'Huyện Khoái Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (232, 21, N'Huyện Kim Động')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (233, 21, N'Huyện Tiên Lữ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (234, 21, N'Huyện Phù Cừ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (235, 22, N'Thành phố Thái Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (236, 22, N'Huyện Quỳnh Phụ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (237, 22, N'Huyện Hưng Hà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (238, 22, N'Huyện Đông Hưng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (239, 22, N'Huyện Thái Thụy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (240, 22, N'Huyện Tiền Hải')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (241, 22, N'Huyện Kiến Xương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (242, 22, N'Huyện Vũ Thư')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (243, 23, N'Thành phố Phủ Lý')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (244, 23, N'Thị xã Duy Tiên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (245, 23, N'Huyện Kim Bảng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (246, 23, N'Huyện Thanh Liêm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (247, 23, N'Huyện Bình Lục')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (248, 23, N'Huyện Lý Nhân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (249, 24, N'Thành phố Nam Định')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (250, 24, N'Huyện Mỹ Lộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (251, 24, N'Huyện Vụ Bản')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (252, 24, N'Huyện Ý Yên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (253, 24, N'Huyện Nghĩa Hưng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (254, 24, N'Huyện Nam Trực')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (255, 24, N'Huyện Trực Ninh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (256, 24, N'Huyện Xuân Trường')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (257, 24, N'Huyện Giao Thủy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (258, 24, N'Huyện Hải Hậu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (259, 25, N'Thành phố Ninh Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (260, 25, N'Thành phố Tam Điệp')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (261, 25, N'Huyện Nho Quan')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (262, 25, N'Huyện Gia Viễn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (263, 25, N'Huyện Hoa Lư')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (264, 25, N'Huyện Yên Khánh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (265, 25, N'Huyện Kim Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (266, 25, N'Huyện Yên Mô')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (267, 26, N'Thành phố Thanh Hóa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (268, 26, N'Thị xã Bỉm Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (269, 26, N'Thành phố Sầm Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (270, 26, N'Huyện Mường Lát')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (271, 26, N'Huyện Quan Hóa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (272, 26, N'Huyện Bá Thước')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (273, 26, N'Huyện Quan Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (274, 26, N'Huyện Lang Chánh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (275, 26, N'Huyện Ngọc Lặc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (276, 26, N'Huyện Cẩm Thủy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (277, 26, N'Huyện Thạch Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (278, 26, N'Huyện Hà Trung')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (279, 26, N'Huyện Vĩnh Lộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (280, 26, N'Huyện Yên Định')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (281, 26, N'Huyện Thọ Xuân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (282, 26, N'Huyện Thường Xuân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (283, 26, N'Huyện Triệu Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (284, 26, N'Huyện Thiệu Hóa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (285, 26, N'Huyện Hoằng Hóa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (286, 26, N'Huyện Hậu Lộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (287, 26, N'Huyện Nga Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (288, 26, N'Huyện Như Xuân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (289, 26, N'Huyện Như Thanh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (290, 26, N'Huyện Nông Cống')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (291, 26, N'Huyện Đông Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (292, 26, N'Huyện Quảng Xương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (293, 26, N'Thị xã Nghi Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (294, 27, N'Thành phố Vinh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (295, 27, N'Thị xã Cửa Lò')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (296, 27, N'Thị xã Thái Hoà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (297, 27, N'Huyện Quế Phong')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (298, 27, N'Huyện Quỳ Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (299, 27, N'Huyện Kỳ Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (300, 27, N'Huyện Tương Dương')
GO
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (301, 27, N'Huyện Nghĩa Đàn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (302, 27, N'Huyện Quỳ Hợp')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (303, 27, N'Huyện Quỳnh Lưu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (304, 27, N'Huyện Con Cuông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (305, 27, N'Huyện Tân Kỳ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (306, 27, N'Huyện Anh Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (307, 27, N'Huyện Diễn Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (308, 27, N'Huyện Yên Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (309, 27, N'Huyện Đô Lương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (310, 27, N'Huyện Thanh Chương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (311, 27, N'Huyện Nghi Lộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (312, 27, N'Huyện Nam Đàn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (313, 27, N'Huyện Hưng Nguyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (314, 27, N'Thị xã Hoàng Mai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (315, 28, N'Thành phố Hà Tĩnh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (316, 28, N'Thị xã Hồng Lĩnh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (317, 28, N'Huyện Hương Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (318, 28, N'Huyện Đức Thọ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (319, 28, N'Huyện Vũ Quang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (320, 28, N'Huyện Nghi Xuân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (321, 28, N'Huyện Can Lộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (322, 28, N'Huyện Hương Khê')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (323, 28, N'Huyện Thạch Hà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (324, 28, N'Huyện Cẩm Xuyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (325, 28, N'Huyện Kỳ Anh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (326, 28, N'Huyện Lộc Hà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (327, 28, N'Thị xã Kỳ Anh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (328, 29, N'Thành Phố Đồng Hới')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (329, 29, N'Huyện Minh Hóa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (330, 29, N'Huyện Tuyên Hóa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (331, 29, N'Huyện Quảng Trạch')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (332, 29, N'Huyện Bố Trạch')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (333, 29, N'Huyện Quảng Ninh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (334, 29, N'Huyện Lệ Thủy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (335, 29, N'Thị xã Ba Đồn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (336, 30, N'Thành phố Đông Hà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (337, 30, N'Thị xã Quảng Trị')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (338, 30, N'Huyện Vĩnh Linh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (339, 30, N'Huyện Hướng Hóa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (340, 30, N'Huyện Gio Linh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (341, 30, N'Huyện Đa Krông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (342, 30, N'Huyện Cam Lộ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (343, 30, N'Huyện Triệu Phong')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (344, 30, N'Huyện Hải Lăng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (345, 30, N'Huyện Cồn Cỏ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (346, 31, N'Thành phố Huế')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (347, 31, N'Huyện Phong Điền')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (348, 31, N'Huyện Quảng Điền')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (349, 31, N'Huyện Phú Vang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (350, 31, N'Thị xã Hương Thủy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (351, 31, N'Thị xã Hương Trà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (352, 31, N'Huyện A Lưới')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (353, 31, N'Huyện Phú Lộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (354, 31, N'Huyện Nam Đông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (355, 32, N'Quận Liên Chiểu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (356, 32, N'Quận Thanh Khê')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (357, 32, N'Quận Hải Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (358, 32, N'Quận Sơn Trà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (359, 32, N'Quận Ngũ Hành Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (360, 32, N'Quận Cẩm Lệ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (361, 32, N'Huyện Hòa Vang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (362, 32, N'Huyện Hoàng Sa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (363, 33, N'Thành phố Tam Kỳ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (364, 33, N'Thành phố Hội An')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (365, 33, N'Huyện Tây Giang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (366, 33, N'Huyện Đông Giang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (367, 33, N'Huyện Đại Lộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (368, 33, N'Thị xã Điện Bàn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (369, 33, N'Huyện Duy Xuyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (370, 33, N'Huyện Quế Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (371, 33, N'Huyện Nam Giang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (372, 33, N'Huyện Phước Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (373, 33, N'Huyện Hiệp Đức')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (374, 33, N'Huyện Thăng Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (375, 33, N'Huyện Tiên Phước')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (376, 33, N'Huyện Bắc Trà My')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (377, 33, N'Huyện Nam Trà My')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (378, 33, N'Huyện Núi Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (379, 33, N'Huyện Phú Ninh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (380, 33, N'Huyện Nông Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (381, 34, N'Thành phố Quảng Ngãi')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (382, 34, N'Huyện Bình Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (383, 34, N'Huyện Trà Bồng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (384, 34, N'Huyện Sơn Tịnh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (385, 34, N'Huyện Tư Nghĩa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (386, 34, N'Huyện Sơn Hà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (387, 34, N'Huyện Sơn Tây')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (388, 34, N'Huyện Minh Long')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (389, 34, N'Huyện Nghĩa Hành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (390, 34, N'Huyện Mộ Đức')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (391, 34, N'Thị xã Đức Phổ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (392, 34, N'Huyện Ba Tơ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (393, 34, N'Huyện Lý Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (394, 35, N'Thành phố Quy Nhơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (395, 35, N'Huyện An Lão')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (396, 35, N'Thị xã Hoài Nhơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (397, 35, N'Huyện Hoài Ân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (398, 35, N'Huyện Phù Mỹ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (399, 35, N'Huyện Vĩnh Thạnh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (400, 35, N'Huyện Tây Sơn')
GO
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (401, 35, N'Huyện Phù Cát')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (402, 35, N'Thị xã An Nhơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (403, 35, N'Huyện Tuy Phước')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (404, 35, N'Huyện Vân Canh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (405, 36, N'Thành phố Tuy Hoà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (406, 36, N'Thị xã Sông Cầu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (407, 36, N'Huyện Đồng Xuân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (408, 36, N'Huyện Tuy An')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (409, 36, N'Huyện Sơn Hòa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (410, 36, N'Huyện Sông Hinh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (411, 36, N'Huyện Tây Hoà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (412, 36, N'Huyện Phú Hoà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (413, 36, N'Thị xã Đông Hòa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (414, 37, N'Thành phố Nha Trang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (415, 37, N'Thành phố Cam Ranh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (416, 37, N'Huyện Cam Lâm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (417, 37, N'Huyện Vạn Ninh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (418, 37, N'Thị xã Ninh Hòa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (419, 37, N'Huyện Khánh Vĩnh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (420, 37, N'Huyện Diên Khánh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (421, 37, N'Huyện Khánh Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (422, 37, N'Huyện Trường Sa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (423, 38, N'Thành phố Phan Rang-Tháp Chàm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (424, 38, N'Huyện Bác Ái')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (425, 38, N'Huyện Ninh Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (426, 38, N'Huyện Ninh Hải')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (427, 38, N'Huyện Ninh Phước')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (428, 38, N'Huyện Thuận Bắc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (429, 38, N'Huyện Thuận Nam')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (430, 39, N'Thành phố Phan Thiết')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (431, 39, N'Thị xã La Gi')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (432, 39, N'Huyện Tuy Phong')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (433, 39, N'Huyện Bắc Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (434, 39, N'Huyện Hàm Thuận Bắc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (435, 39, N'Huyện Hàm Thuận Nam')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (436, 39, N'Huyện Tánh Linh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (437, 39, N'Huyện Đức Linh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (438, 39, N'Huyện Hàm Tân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (439, 39, N'Huyện Phú Quí')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (440, 40, N'Thành phố Kon Tum')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (441, 40, N'Huyện Đắk Glei')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (442, 40, N'Huyện Ngọc Hồi')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (443, 40, N'Huyện Đắk Tô')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (444, 40, N'Huyện Kon Plông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (445, 40, N'Huyện Kon Rẫy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (446, 40, N'Huyện Đắk Hà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (447, 40, N'Huyện Sa Thầy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (448, 40, N'Huyện Tu Mơ Rông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (449, 40, N'Huyện Ia H Drai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (450, 41, N'Thành phố Pleiku')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (451, 41, N'Thị xã An Khê')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (452, 41, N'Thị xã Ayun Pa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (453, 41, N'Huyện KBang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (454, 41, N'Huyện Đăk Đoa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (455, 41, N'Huyện Chư Păh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (456, 41, N'Huyện Ia Grai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (457, 41, N'Huyện Mang Yang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (458, 41, N'Huyện Kông Chro')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (459, 41, N'Huyện Đức Cơ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (460, 41, N'Huyện Chư Prông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (461, 41, N'Huyện Chư Sê')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (462, 41, N'Huyện Đăk Pơ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (463, 41, N'Huyện Ia Pa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (464, 41, N'Huyện Krông Pa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (465, 41, N'Huyện Phú Thiện')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (466, 41, N'Huyện Chư Pưh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (467, 42, N'Thành phố Buôn Ma Thuột')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (468, 42, N'Thị xã Buôn Hồ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (469, 42, N'Huyện Ea H leo')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (470, 42, N'Huyện Ea Súp')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (471, 42, N'Huyện Buôn Đôn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (472, 42, N'Huyện Cư M gar')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (473, 42, N'Huyện Krông Búk')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (474, 42, N'Huyện Krông Năng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (475, 42, N'Huyện Ea Kar')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (476, 42, N'Huyện M Đrắk')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (477, 42, N'Huyện Krông Bông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (478, 42, N'Huyện Krông Pắc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (479, 42, N'Huyện Krông A Na')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (480, 42, N'Huyện Lắk')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (481, 42, N'Huyện Cư Kuin')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (482, 43, N'Thành phố Gia Nghĩa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (483, 43, N'Huyện Đăk Glong')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (484, 43, N'Huyện Cư Jút')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (485, 43, N'Huyện Đắk Mil')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (486, 43, N'Huyện Krông Nô')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (487, 43, N'Huyện Đắk Song')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (488, 43, N'Huyện Đắk R Lấp')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (489, 43, N'Huyện Tuy Đức')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (490, 44, N'Thành phố Đà Lạt')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (491, 44, N'Thành phố Bảo Lộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (492, 44, N'Huyện Đam Rông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (493, 44, N'Huyện Lạc Dương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (494, 44, N'Huyện Lâm Hà')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (495, 44, N'Huyện Đơn Dương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (496, 44, N'Huyện Đức Trọng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (497, 44, N'Huyện Di Linh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (498, 44, N'Huyện Bảo Lâm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (499, 44, N'Huyện Đạ Huoai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (500, 44, N'Huyện Đạ Tẻh')
GO
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (501, 44, N'Huyện Cát Tiên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (502, 45, N'Thị xã Phước Long')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (503, 45, N'Thành phố Đồng Xoài')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (504, 45, N'Thị xã Bình Long')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (505, 45, N'Huyện Bù Gia Mập')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (506, 45, N'Huyện Lộc Ninh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (507, 45, N'Huyện Bù Đốp')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (508, 45, N'Huyện Hớn Quản')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (509, 45, N'Huyện Đồng Phú')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (510, 45, N'Huyện Bù Đăng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (511, 45, N'Huyện Chơn Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (512, 45, N'Huyện Phú Riềng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (513, 46, N'Thành phố Tây Ninh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (514, 46, N'Huyện Tân Biên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (515, 46, N'Huyện Tân Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (516, 46, N'Huyện Dương Minh Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (517, 46, N'Huyện Châu Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (518, 46, N'Thị xã Hòa Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (519, 46, N'Huyện Gò Dầu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (520, 46, N'Huyện Bến Cầu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (521, 46, N'Thị xã Trảng Bàng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (522, 47, N'Thành phố Thủ Dầu Một')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (523, 47, N'Huyện Bàu Bàng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (524, 47, N'Huyện Dầu Tiếng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (525, 47, N'Thị xã Bến Cát')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (526, 47, N'Huyện Phú Giáo')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (527, 47, N'Thị xã Tân Uyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (528, 47, N'Thành phố Dĩ An')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (529, 47, N'Thành phố Thuận An')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (530, 47, N'Huyện Bắc Tân Uyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (531, 48, N'Thành phố Biên Hòa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (532, 48, N'Thành phố Long Khánh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (533, 48, N'Huyện Tân Phú')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (534, 48, N'Huyện Vĩnh Cửu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (535, 48, N'Huyện Định Quán')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (536, 48, N'Huyện Trảng Bom')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (537, 48, N'Huyện Thống Nhất')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (538, 48, N'Huyện Cẩm Mỹ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (539, 48, N'Huyện Long Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (540, 48, N'Huyện Xuân Lộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (541, 48, N'Huyện Nhơn Trạch')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (542, 49, N'Thành phố Vũng Tàu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (543, 49, N'Thành phố Bà Rịa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (544, 49, N'Huyện Châu Đức')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (545, 49, N'Huyện Xuyên Mộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (546, 49, N'Huyện Long Điền')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (547, 49, N'Huyện Đất Đỏ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (548, 49, N'Thị xã Phú Mỹ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (549, 49, N'Huyện Côn Đảo')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (550, 50, N'Quận 1')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (551, 50, N'Quận 12')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (552, 50, N'Quận Gò Vấp')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (553, 50, N'Quận Bình Thạnh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (554, 50, N'Quận Tân Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (555, 50, N'Quận Tân Phú')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (556, 50, N'Quận Phú Nhuận')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (557, 50, N'Thành phố Thủ Đức')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (558, 50, N'Quận 3')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (559, 50, N'Quận 10')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (560, 50, N'Quận 11')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (561, 50, N'Quận 4')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (562, 50, N'Quận 5')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (563, 50, N'Quận 6')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (564, 50, N'Quận 8')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (565, 50, N'Quận Bình Tân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (566, 50, N'Quận 7')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (567, 50, N'Huyện Củ Chi')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (568, 50, N'Huyện Hóc Môn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (569, 50, N'Huyện Bình Chánh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (570, 50, N'Huyện Nhà Bè')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (571, 50, N'Huyện Cần Giờ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (572, 51, N'Thành phố Tân An')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (573, 51, N'Thị xã Kiến Tường')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (574, 51, N'Huyện Tân Hưng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (575, 51, N'Huyện Vĩnh Hưng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (576, 51, N'Huyện Mộc Hóa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (577, 51, N'Huyện Tân Thạnh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (578, 51, N'Huyện Thạnh Hóa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (579, 51, N'Huyện Đức Huệ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (580, 51, N'Huyện Đức Hòa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (581, 51, N'Huyện Bến Lức')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (582, 51, N'Huyện Thủ Thừa')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (583, 51, N'Huyện Tân Trụ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (584, 51, N'Huyện Cần Đước')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (585, 51, N'Huyện Cần Giuộc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (586, 51, N'Huyện Châu Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (587, 52, N'Thành phố Mỹ Tho')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (588, 52, N'Thị xã Gò Công')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (589, 52, N'Thị xã Cai Lậy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (590, 52, N'Huyện Tân Phước')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (591, 52, N'Huyện Cái Bè')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (592, 52, N'Huyện Cai Lậy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (593, 52, N'Huyện Châu Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (594, 52, N'Huyện Chợ Gạo')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (595, 52, N'Huyện Gò Công Tây')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (596, 52, N'Huyện Gò Công Đông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (597, 52, N'Huyện Tân Phú Đông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (598, 53, N'Thành phố Bến Tre')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (599, 53, N'Huyện Châu Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (600, 53, N'Huyện Chợ Lách')
GO
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (601, 53, N'Huyện Mỏ Cày Nam')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (602, 53, N'Huyện Giồng Trôm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (603, 53, N'Huyện Bình Đại')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (604, 53, N'Huyện Ba Tri')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (605, 53, N'Huyện Thạnh Phú')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (606, 53, N'Huyện Mỏ Cày Bắc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (607, 54, N'Thành phố Trà Vinh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (608, 54, N'Huyện Càng Long')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (609, 54, N'Huyện Cầu Kè')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (610, 54, N'Huyện Tiểu Cần')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (611, 54, N'Huyện Châu Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (612, 54, N'Huyện Cầu Ngang')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (613, 54, N'Huyện Trà Cú')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (614, 54, N'Huyện Duyên Hải')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (615, 54, N'Thị xã Duyên Hải')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (616, 55, N'Thành phố Vĩnh Long')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (617, 55, N'Huyện Long Hồ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (618, 55, N'Huyện Mang Thít')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (619, 55, N'Huyện  Vũng Liêm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (620, 55, N'Huyện Tam Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (621, 55, N'Thị xã Bình Minh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (622, 55, N'Huyện Trà Ôn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (623, 55, N'Huyện Bình Tân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (624, 56, N'Thành phố Cao Lãnh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (625, 56, N'Thành phố Sa Đéc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (626, 56, N'Thành phố Hồng Ngự')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (627, 56, N'Huyện Tân Hồng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (628, 56, N'Huyện Hồng Ngự')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (629, 56, N'Huyện Tam Nông')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (630, 56, N'Huyện Tháp Mười')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (631, 56, N'Huyện Cao Lãnh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (632, 56, N'Huyện Thanh Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (633, 56, N'Huyện Lấp Vò')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (634, 56, N'Huyện Lai Vung')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (635, 56, N'Huyện Châu Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (636, 57, N'Thành phố Long Xuyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (637, 57, N'Thành phố Châu Đốc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (638, 57, N'Huyện An Phú')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (639, 57, N'Thị xã Tân Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (640, 57, N'Huyện Phú Tân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (641, 57, N'Huyện Châu Phú')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (642, 57, N'Huyện Tịnh Biên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (643, 57, N'Huyện Tri Tôn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (644, 57, N'Huyện Châu Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (645, 57, N'Huyện Chợ Mới')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (646, 57, N'Huyện Thoại Sơn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (647, 58, N'Thành phố Rạch Giá')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (648, 58, N'Thành phố Hà Tiên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (649, 58, N'Huyện Kiên Lương')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (650, 58, N'Huyện Hòn Đất')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (651, 58, N'Huyện Tân Hiệp')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (652, 58, N'Huyện Châu Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (653, 58, N'Huyện Giồng Riềng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (654, 58, N'Huyện Gò Quao')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (655, 58, N'Huyện An Biên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (656, 58, N'Huyện An Minh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (657, 58, N'Huyện Vĩnh Thuận')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (658, 58, N'Thành phố Phú Quốc')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (659, 58, N'Huyện Kiên Hải')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (660, 58, N'Huyện U Minh Thượng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (661, 58, N'Huyện Giang Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (662, 59, N'Quận Ninh Kiều')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (663, 59, N'Quận Ô Môn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (664, 59, N'Quận Bình Thuỷ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (665, 59, N'Quận Cái Răng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (666, 59, N'Quận Thốt Nốt')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (667, 59, N'Huyện Vĩnh Thạnh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (668, 59, N'Huyện Cờ Đỏ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (669, 59, N'Huyện Phong Điền')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (670, 59, N'Huyện Thới Lai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (671, 60, N'Thành phố Vị Thanh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (672, 60, N'Thành phố Ngã Bảy')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (673, 60, N'Huyện Châu Thành A')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (674, 60, N'Huyện Châu Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (675, 60, N'Huyện Phụng Hiệp')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (676, 60, N'Huyện Vị Thuỷ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (677, 60, N'Huyện Long Mỹ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (678, 60, N'Thị xã Long Mỹ')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (679, 61, N'Thành phố Sóc Trăng')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (680, 61, N'Huyện Châu Thành')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (681, 61, N'Huyện Kế Sách')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (682, 61, N'Huyện Mỹ Tú')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (683, 61, N'Huyện Cù Lao Dung')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (684, 61, N'Huyện Long Phú')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (685, 61, N'Huyện Mỹ Xuyên')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (686, 61, N'Thị xã Ngã Năm')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (687, 61, N'Huyện Thạnh Trị')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (688, 61, N'Thị xã Vĩnh Châu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (689, 61, N'Huyện Trần Đề')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (690, 62, N'Thành phố Bạc Liêu')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (691, 62, N'Huyện Hồng Dân')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (692, 62, N'Huyện Phước Long')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (693, 62, N'Huyện Vĩnh Lợi')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (694, 62, N'Thị xã Giá Rai')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (695, 62, N'Huyện Đông Hải')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (696, 62, N'Huyện Hoà Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (697, 63, N'Thành phố Cà Mau')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (698, 63, N'Huyện U Minh')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (699, 63, N'Huyện Thới Bình')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (700, 63, N'Huyện Trần Văn Thời')
GO
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (701, 63, N'Huyện Cái Nước')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (702, 63, N'Huyện Đầm Dơi')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (703, 63, N'Huyện Năm Căn')
INSERT [dbo].[district] ([district_id], [province_id], [name]) VALUES (704, 63, N'Huyện Phú Tân')
GO
SET IDENTITY_INSERT [dbo].[ImgDescription] ON 

INSERT [dbo].[ImgDescription] ([ID], [imgUrl], [productID]) VALUES (37, N'./uploads/descriptions/052824103337_sua1_extra2.jpg', 12)
INSERT [dbo].[ImgDescription] ([ID], [imgUrl], [productID]) VALUES (38, N'./uploads/descriptions/052824103337_sua1_extra.jpg', 12)
INSERT [dbo].[ImgDescription] ([ID], [imgUrl], [productID]) VALUES (39, N'./uploads/descriptions/052824104303_sua2_extra.jpg', 13)
INSERT [dbo].[ImgDescription] ([ID], [imgUrl], [productID]) VALUES (40, N'./uploads/descriptions/052824104424_thuc-pham-bo-sung-bubs-supreme-junior-nutrition (1).png', 14)
INSERT [dbo].[ImgDescription] ([ID], [imgUrl], [productID]) VALUES (41, N'./uploads/descriptions/052824105005_sua3_extra2.png', 15)
INSERT [dbo].[ImgDescription] ([ID], [imgUrl], [productID]) VALUES (42, N'./uploads/descriptions/052824105005_sua3_extra1.png', 15)
INSERT [dbo].[ImgDescription] ([ID], [imgUrl], [productID]) VALUES (43, N'./uploads/descriptions/052824105243_sua4_extra.jpg', 16)
INSERT [dbo].[ImgDescription] ([ID], [imgUrl], [productID]) VALUES (44, N'./uploads/descriptions/052824105832_ta1_extra.png', 17)
INSERT [dbo].[ImgDescription] ([ID], [imgUrl], [productID]) VALUES (45, N'./uploads/descriptions/052824105838_abbott grow des.jpg', 18)
INSERT [dbo].[ImgDescription] ([ID], [imgUrl], [productID]) VALUES (46, N'./uploads/descriptions/052824110737_ta2.jpg', 19)
INSERT [dbo].[ImgDescription] ([ID], [imgUrl], [productID]) VALUES (47, N'./uploads/descriptions/052824111247_Food1_extra.jpg', 20)
SET IDENTITY_INSERT [dbo].[ImgDescription] OFF
GO
SET IDENTITY_INSERT [dbo].[Producer] ON 

INSERT [dbo].[Producer] ([ID], [name], [datePost], [dateUpdate], [status]) VALUES (6, N'Nestle VN', CAST(N'2024-05-28T22:43:24.587' AS DateTime), CAST(N'2024-05-28T22:43:37.707' AS DateTime), 1)
INSERT [dbo].[Producer] ([ID], [name], [datePost], [dateUpdate], [status]) VALUES (7, N'Friso VN', CAST(N'2024-05-28T22:43:49.363' AS DateTime), NULL, 1)
INSERT [dbo].[Producer] ([ID], [name], [datePost], [dateUpdate], [status]) VALUES (8, N'ILDONG KR', CAST(N'2024-05-28T22:48:44.353' AS DateTime), NULL, 1)
INSERT [dbo].[Producer] ([ID], [name], [datePost], [dateUpdate], [status]) VALUES (9, N'Abbott Grow', CAST(N'2024-05-28T22:49:16.030' AS DateTime), NULL, 1)
INSERT [dbo].[Producer] ([ID], [name], [datePost], [dateUpdate], [status]) VALUES (10, N'Vinamilk VN', CAST(N'2024-05-28T22:53:07.770' AS DateTime), NULL, 1)
INSERT [dbo].[Producer] ([ID], [name], [datePost], [dateUpdate], [status]) VALUES (11, N'Huggies ', CAST(N'2024-05-28T22:59:28.423' AS DateTime), NULL, 1)
INSERT [dbo].[Producer] ([ID], [name], [datePost], [dateUpdate], [status]) VALUES (12, N'Whito JP', CAST(N'2024-05-28T23:04:21.693' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Producer] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [name], [oldPrice], [newPrice], [description], [datePost], [dateUpdate], [mainImg], [status], [quantity], [sold], [model], [priority], [categoryID], [producerID], [brandID]) VALUES (12, N'Sữa bầu Friso Mum Gold 900g hương cam', 539000, 0, N'<table>
	<tbody>
		<tr>
			<td>T&ecirc;n sản phẩm</td>
			<td>Thực phẩm bổ sung cho mẹ mang thai v&agrave; cho con b&uacute;, hương cam nh&atilde;n hiệu Frisomum Gold DualCare+TM</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td>Friso</td>
		</tr>
		<tr>
			<td>Trọng lượng sản phẩm</td>
			<td>900g</td>
		</tr>
	</tbody>
</table>
', CAST(N'2024-05-28T22:33:37.717' AS DateTime), CAST(N'2024-05-28T22:46:11.740' AS DateTime), N'./uploads/product/052824103337_sua1.jpg', 1, 50, 0, N'Milk', 1, 4, 7, 7)
INSERT [dbo].[Product] ([ID], [name], [oldPrice], [newPrice], [description], [datePost], [dateUpdate], [mainImg], [status], [quantity], [sold], [model], [priority], [categoryID], [producerID], [brandID]) VALUES (13, N'Sữa Nestle S-26 ULTIMA số 3 750g (2 - 6 tuổi)', 875000, 825000, N'<table>
	<tbody>
		<tr>
			<td>T&ecirc;n sản phẩm</td>
			<td>Sản phẩm dinh dưỡng c&ocirc;ng thức S-26 ULTIMA 3 750G</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td>Nestl&eacute;</td>
		</tr>
		<tr>
			<td>Sản xuất tại</td>
			<td>Thụy Sĩ</td>
		</tr>
		<tr>
			<td>Trọng lượng sản phẩm</td>
			<td>750g</td>
		</tr>
		<tr>
			<td>Độ tuổi ph&ugrave; hợp</td>
			<td>D&ugrave;ng cho trẻ từ 2 - 6 tuổi</td>
		</tr>
		<tr>
			<td>Nh&agrave; sản xuất</td>
			<td>Nh&agrave; m&aacute;y Konolfingen</td>
		</tr>
	</tbody>
</table>
', CAST(N'2024-05-28T22:43:03.113' AS DateTime), CAST(N'2024-05-28T23:13:10.653' AS DateTime), N'./uploads/product/052824104303_sua2.jpg', 1, 100, 0, N'Milk', 2, 5, 6, 8)
INSERT [dbo].[Product] ([ID], [name], [oldPrice], [newPrice], [description], [datePost], [dateUpdate], [mainImg], [status], [quantity], [sold], [model], [priority], [categoryID], [producerID], [brandID]) VALUES (14, N'Sữa Bubs Supreme Junior Nutrition 800g (3-12 tuổi)', 780000, 0, N'<table>
	<tbody>
		<tr>
			<td>T&ecirc;n sản phẩm</td>
			<td>Thực phẩm bổ sung Bubs Supreme Junior Nutrition</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td>Bubs</td>
		</tr>
		<tr>
			<td>Xuất xứ thương hiệu</td>
			<td>&Uacute;c</td>
		</tr>
		<tr>
			<td>Trọng lượng sản phẩm</td>
			<td>800g</td>
		</tr>
		<tr>
			<td>Độ tuổi ph&ugrave; hợp</td>
			<td>D&agrave;nh cho trẻ từ 3-12 tuổi</td>
		</tr>
		<tr>
			<td>Nh&agrave; sản xuất</td>
			<td>The Infant Food Co. Pty Limited</td>
		</tr>
		<tr>
			<td>Hướng dẫn sử dụng</td>
			<td>. Rửa tay, cốc v&agrave; tất cả dụng cụ kỹ trước khi pha.<br />
			. Nước uống, đun s&ocirc;i nước trước khi sử dụng. Đổ lượng nước đun s&ocirc;i để nguội cần thiết v&agrave;o cốc.<br />
			. Th&ecirc;m nhẹ nh&agrave;ng số muỗng đong cần pha theo hướng dẫn pha, sử dụng muỗng được cung cấp v&agrave; x&acirc;y dựng theo mức độ của lon. Lu&ocirc;n cho 1 muỗng bột v&agrave;o mỗi 60ml nước.<br />
			. Khuấy, t&aacute;n hoặc lắc nhanh ch&oacute;ng cho đến khi tan bột. Thử nhiệt độ tại cổ tay trước khi cho ăn. Sữa n&ecirc;n ở nhiệt độ vừa ấm, kh&ocirc;ng n&oacute;ng. D&ugrave;ng ngay sau khi pha.<br />
			Lưu &yacute;:<br />
			. Mỗi cốc sữa n&ecirc;n được chuẩn bị nhanh ch&oacute;ng.<br />
			. Nếu sữa được pha chưa được sử dụng, ch&uacute;g phải được bảo quản trong tủ lạnh v&agrave; phải sử dụng trong v&ograve;ng 24 giờ.<br />
			. Sản phẩm c&ograve;n thừa lại sau khi sử dụng phải đổ bỏ.</td>
		</tr>
		<tr>
			<td>Hướng dẫn bảo quản</td>
			<td>. Đ&oacute;ng chặt nắp sau mỗi lần sử dụng.<br />
			. Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t dưới 25℃.<br />
			. Sử dụng trong v&ograve;ng 4 tuần sau khi mở nắp.<br />
			. Kh&ocirc;ng sử dụng nếu m&agrave;ng seal bị thiếu hoặc hỏng.</td>
		</tr>
	</tbody>
</table>
', CAST(N'2024-05-28T22:44:24.633' AS DateTime), CAST(N'2024-05-31T22:38:38.733' AS DateTime), N'./uploads/product/052824104424_thuc-pham-bo-sung-bubs-supreme-junior-nutrition.png', 1, 100, 0, N' Supreme Junior Nutrition', 1, 5, 7, 7)
INSERT [dbo].[Product] ([ID], [name], [oldPrice], [newPrice], [description], [datePost], [dateUpdate], [mainImg], [status], [quantity], [sold], [model], [priority], [categoryID], [producerID], [brandID]) VALUES (15, N'Sữa non Ildong số 1 90g (0-1 tuổi)', 299000, 249000, N'<table>
	<tbody>
		<tr>
			<td>T&ecirc;n sản phẩm</td>
			<td>Sữa non Ildong số 1 90g (0-1 tuổi)</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td>Ildong Foodis</td>
		</tr>
		<tr>
			<td>Sản xuất tại</td>
			<td>H&agrave;n Quốc</td>
		</tr>
		<tr>
			<td>Trọng lượng sản phẩm</td>
			<td>90g</td>
		</tr>
		<tr>
			<td>Độ tuổi ph&ugrave; hợp</td>
			<td>B&eacute; từ 0 - 1 tuổi</td>
		</tr>
	</tbody>
</table>
', CAST(N'2024-05-28T22:50:05.020' AS DateTime), CAST(N'2024-05-28T23:13:21.543' AS DateTime), N'./uploads/product/052824105005_sua3.jpg', 1, 70, 0, N'Milk', 1, 4, 8, 9)
INSERT [dbo].[Product] ([ID], [name], [oldPrice], [newPrice], [description], [datePost], [dateUpdate], [mainImg], [status], [quantity], [sold], [model], [priority], [categoryID], [producerID], [brandID]) VALUES (16, N'Vinamilk Optimum Gold 4, 850g, 2-6 tuổi', 319000, 0, N'<table>
	<tbody>
		<tr>
			<td>T&ecirc;n sản phẩm</td>
			<td>Vinamilk Optimum Gold 4, 850g, 2-6 tuổi</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td>Optimum Gold</td>
		</tr>
		<tr>
			<td>Xuất xứ thương hiệu</td>
			<td>Việt Nam</td>
		</tr>
		<tr>
			<td>Sản xuất tại</td>
			<td>Việt Nam</td>
		</tr>
		<tr>
			<td>Trọng lượng sản phẩm</td>
			<td>850g</td>
		</tr>
		<tr>
			<td>Nh&agrave; sản xuất</td>
			<td>Vinamilk</td>
		</tr>
		<tr>
			<td>Độ tuổi ph&ugrave; hợp</td>
			<td>Trẻ từ 2 đến 6 tuổi</td>
		</tr>
	</tbody>
</table>
', CAST(N'2024-05-28T22:52:43.353' AS DateTime), CAST(N'2024-05-28T22:55:57.010' AS DateTime), N'./uploads/product/052824105243_sua4.jpg', 1, 100, 0, N'Milk', 1, 4, 10, 5)
INSERT [dbo].[Product] ([ID], [name], [oldPrice], [newPrice], [description], [datePost], [dateUpdate], [mainImg], [status], [quantity], [sold], [model], [priority], [categoryID], [producerID], [brandID]) VALUES (17, N'Tã quần Huggies Skincare gói cực đại (L, 9-14kg, 68 miếng)', 319000, 0, N'<table>
	<tbody>
		<tr>
			<td>T&ecirc;n sản phẩm</td>
			<td>T&atilde; quần Huggies Skincare g&oacute;i cực đại (L, 9-14kg, 68 miếng)</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td>Huggies Skincare</td>
		</tr>
		<tr>
			<td>Sản xuất tại</td>
			<td>Việt Nam</td>
		</tr>
		<tr>
			<td>K&iacute;ch cỡ (size)</td>
			<td>L, 9-14kg</td>
		</tr>
		<tr>
			<td>Số miếng</td>
			<td>68 miếng</td>
		</tr>
	</tbody>
</table>
', CAST(N'2024-05-28T22:58:32.857' AS DateTime), CAST(N'2024-05-28T23:00:09.187' AS DateTime), N'./uploads/product/052824105832_ta1.png', 1, 100, 0, N'Diapers', 1, 7, 11, 11)
INSERT [dbo].[Product] ([ID], [name], [oldPrice], [newPrice], [description], [datePost], [dateUpdate], [mainImg], [status], [quantity], [sold], [model], [priority], [categoryID], [producerID], [brandID]) VALUES (18, N'Abbott Grow', 335000, 0, N'<table>
	<tbody>
		<tr>
			<td>T&ecirc;n sản phẩm</td>
			<td>Sữa Abbott Grow 4 900g (tr&ecirc;n 2 tuổi)</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td>ABBOTT</td>
		</tr>
		<tr>
			<td>Sản xuất tại</td>
			<td>Ireland</td>
		</tr>
		<tr>
			<td>Độ tuổi ph&ugrave; hợp</td>
			<td>Cho trẻ tr&ecirc;n 2 tuổi</td>
		</tr>
		<tr>
			<td>Cảnh b&aacute;o</td>
			<td>. Kh&ocirc;ng d&ugrave;ng l&ograve; vi s&oacute;ng để pha hay h&acirc;m n&oacute;ng v&igrave; c&oacute; thể g&acirc;y bỏng. D&ugrave;ng nhiều lần lượng pha kh&ocirc;ng đ&uacute;ng c&aacute;ch c&oacute; thể ảnh hưởng kh&ocirc;ng tốt cho sức khỏe của trẻ.</td>
		</tr>
		<tr>
			<td>Hướng dẫn sử dụng</td>
			<td>. Rửa sạch tay trước khi pha. . Cho 175ml nước ch&iacute;n để nguội v&agrave;o ly (khoảng 37&deg;C), từ từ cho v&agrave;o ly 3 muỗng gạt ngang (muỗng c&oacute; sẵn trong hộp), khuấy cho tan đều. . Uống ngay sau khi pha. Nếu kh&ocirc;ng uống ngay, n&ecirc;n đậy k&iacute;n cho v&agrave;o tủ lạnh ở 2&deg; - 4&deg;C v&agrave; d&ugrave;ng trong v&ograve;ng 24 giờ.</td>
		</tr>
		<tr>
			<td>Hướng dẫn bảo quản</td>
			<td>. Bảo quản hộp chưa sử dụng ở nhiệt độ ph&ograve;ng. Tr&aacute;nh &aacute;nh nắng trực tiếp. Khi đ&atilde; mở nắp phải được sử dụng trong v&ograve;ng 3 tuần. Đậy nắp v&agrave; bảo quản nơi kh&ocirc; m&aacute;t (kh&ocirc;ng cất trong tủ lạnh).</td>
		</tr>
	</tbody>
</table>
', CAST(N'2024-05-28T22:58:38.240' AS DateTime), NULL, N'./uploads/product/052824105838_abbott-grow-4-huong-vani-900g.jpg', 1, 10, 0, N'Milk', 1, 4, 9, 10)
INSERT [dbo].[Product] ([ID], [name], [oldPrice], [newPrice], [description], [datePost], [dateUpdate], [mainImg], [status], [quantity], [sold], [model], [priority], [categoryID], [producerID], [brandID]) VALUES (19, N'Combo 3 gói Bỉm tã quần Whito size XXL 26 miếng (13-28kg)', 809000, 0, N'<table>
	<tbody>
		<tr>
			<td>T&ecirc;n sản phẩm</td>
			<td>Bỉm t&atilde; quần Whito size XXL 26 miếng (13-28kg)</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td>Whito</td>
		</tr>
		<tr>
			<td>Xuất xứ thương hiệu</td>
			<td>Nhật Bản</td>
		</tr>
		<tr>
			<td>Sản xuất tại</td>
			<td>Nhật Bản</td>
		</tr>
		<tr>
			<td>K&iacute;ch cỡ (size)</td>
			<td>XXL, 13-28kg</td>
		</tr>
		<tr>
			<td>Số miếng</td>
			<td>26</td>
		</tr>
		<tr>
			<td>Chất liệu</td>
			<td>M&agrave;ng vải kh&ocirc;ng dệt, m&agrave;ng đ&aacute;y chống thấm, bột giấy, hạt thấm h&uacute;t, giấy, thun đ&agrave;n hồi, keo cấu tr&uacute;c, băng d&aacute;n.</td>
		</tr>
		<tr>
			<td>Nh&agrave; sản xuất</td>
			<td>Oji Nepia Co., Ltd.</td>
		</tr>
	</tbody>
</table>
', CAST(N'2024-05-28T23:07:37.793' AS DateTime), NULL, N'./uploads/product/052824110737_ta2.jpg', 1, 50, 0, N'Diapers', 1, 7, 12, 12)
INSERT [dbo].[Product] ([ID], [name], [oldPrice], [newPrice], [description], [datePost], [dateUpdate], [mainImg], [status], [quantity], [sold], [model], [priority], [categoryID], [producerID], [brandID]) VALUES (20, N'Thực phẩm dinh dưỡng y học Nestle Kid Essentials Nutritionally Complete 800g (1-10 tuổi)', 809000, 0, N'<table>
	<tbody>
		<tr>
			<td>T&ecirc;n sản phẩm</td>
			<td>Thực phẩm dinh dưỡng y học Kid Essentials Australia 800g hương vani (1-10 tuổi)</td>
		</tr>
		<tr>
			<td>Thương hiệu</td>
			<td>Kid Essentials</td>
		</tr>
		<tr>
			<td>Sản xuất tại</td>
			<td>Thuỵ Sĩ</td>
		</tr>
		<tr>
			<td>Trọng lượng sản phẩm</td>
			<td>800g</td>
		</tr>
		<tr>
			<td>Cảnh b&aacute;o</td>
			<td>. Sử dụng cho người bệnh với sự gi&aacute;m s&aacute;t của nh&acirc;n vi&ecirc;n y tế. Kh&ocirc;ng d&ugrave;ng qua đường tĩnh mạch. D&ugrave;ng nu&ocirc;i ăn bằng miệng hoặc ống th&ocirc;ng. Khi được d&ugrave;ng để nu&ocirc;i ăn bằng ống th&ocirc;ng, kh&ocirc;ng th&ecirc;m thuốc hoặc thực phẩm kh&aacute;c v&agrave;o sản phẩm.<br />
			. Thực phẩm cho mục đ&iacute;ch y tế đặc biệt. Liều lượng thay đổi t&ugrave;y theo nhu cầu của trẻ, l&agrave;m theo c&aacute;c khuyến nghị y tế.</td>
		</tr>
	</tbody>
</table>
', CAST(N'2024-05-28T23:12:47.967' AS DateTime), CAST(N'2024-05-31T21:49:47.157' AS DateTime), N'./uploads/product/052824111247_Food1.jpg', 1, 50, 0, N'Food', 1, 8, 6, 8)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[province] ([province_id], [name]) VALUES (1, N'Hà Nội')
INSERT [dbo].[province] ([province_id], [name]) VALUES (2, N'Hà Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (3, N'Cao Bằng')
INSERT [dbo].[province] ([province_id], [name]) VALUES (4, N'Bắc Kạn')
INSERT [dbo].[province] ([province_id], [name]) VALUES (5, N'Tuyên Quang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (6, N'Lào Cai')
INSERT [dbo].[province] ([province_id], [name]) VALUES (7, N'Điện Biên')
INSERT [dbo].[province] ([province_id], [name]) VALUES (8, N'Lai Châu')
INSERT [dbo].[province] ([province_id], [name]) VALUES (9, N'Sơn La')
INSERT [dbo].[province] ([province_id], [name]) VALUES (10, N'Yên Bái')
INSERT [dbo].[province] ([province_id], [name]) VALUES (11, N'Hoà Bình')
INSERT [dbo].[province] ([province_id], [name]) VALUES (12, N'Thái Nguyên')
INSERT [dbo].[province] ([province_id], [name]) VALUES (13, N'Lạng Sơn')
INSERT [dbo].[province] ([province_id], [name]) VALUES (14, N'Quảng Ninh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (15, N'Bắc Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (16, N'Phú Thọ')
INSERT [dbo].[province] ([province_id], [name]) VALUES (17, N'Vĩnh Phúc')
INSERT [dbo].[province] ([province_id], [name]) VALUES (18, N'Bắc Ninh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (19, N'Hải Dương')
INSERT [dbo].[province] ([province_id], [name]) VALUES (20, N'Hải Phòng')
INSERT [dbo].[province] ([province_id], [name]) VALUES (21, N'Hưng Yên')
INSERT [dbo].[province] ([province_id], [name]) VALUES (22, N'Thái Bình')
INSERT [dbo].[province] ([province_id], [name]) VALUES (23, N'Hà Nam')
INSERT [dbo].[province] ([province_id], [name]) VALUES (24, N'Nam Định')
INSERT [dbo].[province] ([province_id], [name]) VALUES (25, N'Ninh Bình')
INSERT [dbo].[province] ([province_id], [name]) VALUES (26, N'Thanh Hóa')
INSERT [dbo].[province] ([province_id], [name]) VALUES (27, N'Nghệ An')
INSERT [dbo].[province] ([province_id], [name]) VALUES (28, N'Hà Tĩnh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (29, N'Quảng Bình')
INSERT [dbo].[province] ([province_id], [name]) VALUES (30, N'Quảng Trị')
INSERT [dbo].[province] ([province_id], [name]) VALUES (31, N'Thừa Thiên Huế')
INSERT [dbo].[province] ([province_id], [name]) VALUES (32, N'Đà Nẵng')
INSERT [dbo].[province] ([province_id], [name]) VALUES (33, N'Quảng Nam')
INSERT [dbo].[province] ([province_id], [name]) VALUES (34, N'Quảng Ngãi')
INSERT [dbo].[province] ([province_id], [name]) VALUES (35, N'Bình Định')
INSERT [dbo].[province] ([province_id], [name]) VALUES (36, N'Phú Yên')
INSERT [dbo].[province] ([province_id], [name]) VALUES (37, N'Khánh Hòa')
INSERT [dbo].[province] ([province_id], [name]) VALUES (38, N'Ninh Thuận')
INSERT [dbo].[province] ([province_id], [name]) VALUES (39, N'Bình Thuận')
INSERT [dbo].[province] ([province_id], [name]) VALUES (40, N'Kon Tum')
INSERT [dbo].[province] ([province_id], [name]) VALUES (41, N'Gia Lai')
INSERT [dbo].[province] ([province_id], [name]) VALUES (42, N'Đắk Lắk')
INSERT [dbo].[province] ([province_id], [name]) VALUES (43, N'Đắk Nông')
INSERT [dbo].[province] ([province_id], [name]) VALUES (44, N'Lâm Đồng')
INSERT [dbo].[province] ([province_id], [name]) VALUES (45, N'Bình Phước')
INSERT [dbo].[province] ([province_id], [name]) VALUES (46, N'Tây Ninh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (47, N'Bình Dương')
INSERT [dbo].[province] ([province_id], [name]) VALUES (48, N'Đồng Nai')
INSERT [dbo].[province] ([province_id], [name]) VALUES (49, N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[province] ([province_id], [name]) VALUES (50, N'Hồ Chí Minh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (51, N'Long An')
INSERT [dbo].[province] ([province_id], [name]) VALUES (52, N'Tiền Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (53, N'Bến Tre')
INSERT [dbo].[province] ([province_id], [name]) VALUES (54, N'Trà Vinh')
INSERT [dbo].[province] ([province_id], [name]) VALUES (55, N'Vĩnh Long')
INSERT [dbo].[province] ([province_id], [name]) VALUES (56, N'Đồng Tháp')
INSERT [dbo].[province] ([province_id], [name]) VALUES (57, N'An Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (58, N'Kiên Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (59, N'Cần Thơ')
INSERT [dbo].[province] ([province_id], [name]) VALUES (60, N'Hậu Giang')
INSERT [dbo].[province] ([province_id], [name]) VALUES (61, N'Sóc Trăng')
INSERT [dbo].[province] ([province_id], [name]) VALUES (62, N'Bạc Liêu')
INSERT [dbo].[province] ([province_id], [name]) VALUES (63, N'Cà Mau')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [name], [type], [status]) VALUES (1, N'admin', 1, 1)
INSERT [dbo].[Role] ([ID], [name], [type], [status]) VALUES (2, N'user', 0, 1)
INSERT [dbo].[Role] ([ID], [name], [type], [status]) VALUES (3, N'staff', 2, 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1, 1, N'Phường Phúc Xá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (2, 1, N'Phường Trúc Bạch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (3, 1, N'Phường Vĩnh Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (4, 1, N'Phường Cống Vị')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (5, 1, N'Phường Liễu Giai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (6, 1, N'Phường Nguyễn Trung Trực')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (7, 1, N'Phường Quán Thánh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (8, 1, N'Phường Ngọc Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (9, 1, N'Phường Điện Biên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (10, 1, N'Phường Đội Cấn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (11, 1, N'Phường Ngọc Khánh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (12, 1, N'Phường Kim Mã')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (13, 1, N'Phường Giảng Võ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (14, 1, N'Phường Thành Công')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (15, 2, N'Phường Phúc Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (16, 2, N'Phường Đồng Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (17, 2, N'Phường Hàng Mã')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (18, 2, N'Phường Hàng Buồm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (19, 2, N'Phường Hàng Đào')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (20, 2, N'Phường Hàng Bồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (21, 2, N'Phường Cửa Đông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (22, 2, N'Phường Lý Thái Tổ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (23, 2, N'Phường Hàng Bạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (24, 2, N'Phường Hàng Gai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (25, 2, N'Phường Chương Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (26, 2, N'Phường Hàng Trống')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (27, 2, N'Phường Cửa Nam')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (28, 2, N'Phường Hàng Bông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (29, 2, N'Phường Tràng Tiền')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (30, 2, N'Phường Trần Hưng Đạo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (31, 2, N'Phường Phan Chu Trình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (32, 2, N'Phường Hàng Bài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (33, 3, N'Phường Phú Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (34, 3, N'Phường Nhật Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (35, 3, N'Phường Tứ Liên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (36, 3, N'Phường Quảng An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (37, 3, N'Phường Xuân La')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (38, 3, N'Phường Yên Phụ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (39, 3, N'Phường Bưởi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (40, 3, N'Phường Thụy Khuê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (41, 4, N'Phường Thượng Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (42, 4, N'Phường Ngọc Thụy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (43, 4, N'Phường Giang Biên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (44, 4, N'Phường Đức Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (45, 4, N'Phường Việt Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (46, 4, N'Phường Gia Thụy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (47, 4, N'Phường Ngọc Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (48, 4, N'Phường Phúc Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (49, 4, N'Phường Bồ Đề')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (50, 4, N'Phường Sài Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (51, 4, N'Phường Long Biên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (52, 4, N'Phường Thạch Bàn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (53, 4, N'Phường Phúc Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (54, 4, N'Phường Cự Khối')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (55, 5, N'Phường Nghĩa Đô')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (56, 5, N'Phường Nghĩa Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (57, 5, N'Phường Mai Dịch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (58, 5, N'Phường Dịch Vọng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (59, 5, N'Phường Dịch Vọng Hậu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (60, 5, N'Phường Quan Hoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (61, 5, N'Phường Yên Hoà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (62, 5, N'Phường Trung Hoà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (63, 6, N'Phường Cát Linh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (64, 6, N'Phường Văn Miếu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (65, 6, N'Phường Quốc Tử Giám')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (66, 6, N'Phường Láng Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (67, 6, N'Phường Ô Chợ Dừa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (68, 6, N'Phường Văn Chương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (69, 6, N'Phường Hàng Bột')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (70, 6, N'Phường Láng Hạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (71, 6, N'Phường Khâm Thiên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (72, 6, N'Phường Thổ Quan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (73, 6, N'Phường Nam Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (74, 6, N'Phường Trung Phụng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (75, 6, N'Phường Quang Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (76, 6, N'Phường Trung Liệt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (77, 6, N'Phường Phương Liên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (78, 6, N'Phường Thịnh Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (79, 6, N'Phường Trung Tự')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (80, 6, N'Phường Kim Liên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (81, 6, N'Phường Phương Mai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (82, 6, N'Phường Ngã Tư Sở')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (83, 6, N'Phường Khương Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (84, 7, N'Phường Nguyễn Du')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (85, 7, N'Phường Bạch Đằng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (86, 7, N'Phường Phạm Đình Hổ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (87, 7, N'Phường Lê Đại Hành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (88, 7, N'Phường Đồng Nhân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (89, 7, N'Phường Phố Huế')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (90, 7, N'Phường Đống Mác')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (91, 7, N'Phường Thanh Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (92, 7, N'Phường Thanh Nhàn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (93, 7, N'Phường Cầu Dền')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (94, 7, N'Phường Bách Khoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (95, 7, N'Phường Đồng Tâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (96, 7, N'Phường Vĩnh Tuy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (97, 7, N'Phường Bạch Mai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (98, 7, N'Phường Quỳnh Mai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (99, 7, N'Phường Quỳnh Lôi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (100, 7, N'Phường Minh Khai')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (101, 7, N'Phường Trương Định')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (102, 8, N'Phường Thanh Trì')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (103, 8, N'Phường Vĩnh Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (104, 8, N'Phường Định Công')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (105, 8, N'Phường Mai Động')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (106, 8, N'Phường Tương Mai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (107, 8, N'Phường Đại Kim')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (108, 8, N'Phường Tân Mai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (109, 8, N'Phường Hoàng Văn Thụ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (110, 8, N'Phường Giáp Bát')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (111, 8, N'Phường Lĩnh Nam')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (112, 8, N'Phường Thịnh Liệt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (113, 8, N'Phường Trần Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (114, 8, N'Phường Hoàng Liệt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (115, 8, N'Phường Yên Sở')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (116, 9, N'Phường Nhân Chính')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (117, 9, N'Phường Thượng Đình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (118, 9, N'Phường Khương Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (119, 9, N'Phường Khương Mai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (120, 9, N'Phường Thanh Xuân Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (121, 9, N'Phường Phương Liệt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (122, 9, N'Phường Hạ Đình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (123, 9, N'Phường Khương Đình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (124, 9, N'Phường Thanh Xuân Bắc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (125, 9, N'Phường Thanh Xuân Nam')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (126, 9, N'Phường Kim Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (127, 10, N'Thị trấn Sóc Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (128, 10, N'Xã Bắc Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (129, 10, N'Xã Minh Trí')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (130, 10, N'Xã Hồng Kỳ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (131, 10, N'Xã Nam Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (132, 10, N'Xã Trung Giã')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (133, 10, N'Xã Tân Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (134, 10, N'Xã Minh Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (135, 10, N'Xã Phù Linh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (136, 10, N'Xã Bắc Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (137, 10, N'Xã Tân Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (138, 10, N'Xã Quang Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (139, 10, N'Xã Hiền Ninh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (140, 10, N'Xã Tân Dân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (141, 10, N'Xã Tiên Dược')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (142, 10, N'Xã Việt Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (143, 10, N'Xã Xuân Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (144, 10, N'Xã Mai Đình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (145, 10, N'Xã Đức Hoà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (146, 10, N'Xã Thanh Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (147, 10, N'Xã Đông Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (148, 10, N'Xã Kim Lũ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (149, 10, N'Xã Phú Cường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (150, 10, N'Xã Phú Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (151, 10, N'Xã Phù Lỗ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (152, 10, N'Xã Xuân Thu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (153, 11, N'Thị trấn Đông Anh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (154, 11, N'Xã Xuân Nộn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (155, 11, N'Xã Thuỵ Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (156, 11, N'Xã Bắc Hồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (157, 11, N'Xã Nguyên Khê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (158, 11, N'Xã Nam Hồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (159, 11, N'Xã Tiên Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (160, 11, N'Xã Vân Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (161, 11, N'Xã Uy Nỗ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (162, 11, N'Xã Vân Nội')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (163, 11, N'Xã Liên Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (164, 11, N'Xã Việt Hùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (165, 11, N'Xã Kim Nỗ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (166, 11, N'Xã Kim Chung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (167, 11, N'Xã Dục Tú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (168, 11, N'Xã Đại Mạch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (169, 11, N'Xã Vĩnh Ngọc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (170, 11, N'Xã Cổ Loa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (171, 11, N'Xã Hải Bối')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (172, 11, N'Xã Xuân Canh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (173, 11, N'Xã Võng La')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (174, 11, N'Xã Tàm Xá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (175, 11, N'Xã Mai Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (176, 11, N'Xã Đông Hội')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (177, 12, N'Thị trấn Yên Viên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (178, 12, N'Xã Yên Thường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (179, 12, N'Xã Yên Viên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (180, 12, N'Xã Ninh Hiệp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (181, 12, N'Xã Đình Xuyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (182, 12, N'Xã Dương Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (183, 12, N'Xã Phù Đổng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (184, 12, N'Xã Trung Mầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (185, 12, N'Xã Lệ Chi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (186, 12, N'Xã Cổ Bi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (187, 12, N'Xã Đặng Xá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (188, 12, N'Xã Phú Thị')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (189, 12, N'Xã Kim Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (190, 12, N'Thị trấn Trâu Quỳ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (191, 12, N'Xã Dương Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (192, 12, N'Xã Dương Xá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (193, 12, N'Xã Đông Dư')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (194, 12, N'Xã Đa Tốn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (195, 12, N'Xã Kiêu Kỵ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (196, 12, N'Xã Bát Tràng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (197, 12, N'Xã Kim Lan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (198, 12, N'Xã Văn Đức')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (199, 13, N'Phường Cầu Diễn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (200, 13, N'Phường Xuân Phương')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (201, 13, N'Phường Phương Canh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (202, 13, N'Phường Mỹ Đình 1')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (203, 13, N'Phường Mỹ Đình 2')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (204, 13, N'Phường Tây Mỗ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (205, 13, N'Phường Mễ Trì')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (206, 13, N'Phường Phú Đô')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (207, 13, N'Phường Đại Mỗ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (208, 13, N'Phường Trung Văn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (209, 14, N'Thị trấn Văn Điển')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (210, 14, N'Xã Tân Triều')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (211, 14, N'Xã Thanh Liệt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (212, 14, N'Xã Tả Thanh Oai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (213, 14, N'Xã Hữu Hoà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (214, 14, N'Xã Tam Hiệp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (215, 14, N'Xã Tứ Hiệp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (216, 14, N'Xã Yên Mỹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (217, 14, N'Xã Vĩnh Quỳnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (218, 14, N'Xã Ngũ Hiệp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (219, 14, N'Xã Duyên Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (220, 14, N'Xã Ngọc Hồi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (221, 14, N'Xã Vạn Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (222, 14, N'Xã Đại áng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (223, 14, N'Xã Liên Ninh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (224, 14, N'Xã Đông Mỹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (225, 15, N'Phường Thượng Cát')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (226, 15, N'Phường Liên Mạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (227, 15, N'Phường Đông Ngạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (228, 15, N'Phường Đức Thắng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (229, 15, N'Phường Thụy Phương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (230, 15, N'Phường Tây Tựu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (231, 15, N'Phường Xuân Đỉnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (232, 15, N'Phường Xuân Tảo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (233, 15, N'Phường Minh Khai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (234, 15, N'Phường Cổ Nhuế 1')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (235, 15, N'Phường Cổ Nhuế 2')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (236, 15, N'Phường Phú Diễn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (237, 15, N'Phường Phúc Diễn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (238, 16, N'Thị trấn Chi Đông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (239, 16, N'Xã Đại Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (240, 16, N'Xã Kim Hoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (241, 16, N'Xã Thạch Đà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (242, 16, N'Xã Tiến Thắng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (243, 16, N'Xã Tự Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (244, 16, N'Thị trấn Quang Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (245, 16, N'Xã Thanh Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (246, 16, N'Xã Tam Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (247, 16, N'Xã Liên Mạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (248, 16, N'Xã Vạn Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (249, 16, N'Xã Chu Phan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (250, 16, N'Xã Tiến Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (251, 16, N'Xã Mê Linh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (252, 16, N'Xã Văn Khê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (253, 16, N'Xã Hoàng Kim')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (254, 16, N'Xã Tiền Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (255, 16, N'Xã Tráng Việt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (256, 17, N'Phường Nguyễn Trãi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (257, 17, N'Phường Mộ Lao')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (258, 17, N'Phường Văn Quán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (259, 17, N'Phường Vạn Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (260, 17, N'Phường Yết Kiêu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (261, 17, N'Phường Quang Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (262, 17, N'Phường La Khê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (263, 17, N'Phường Phú La')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (264, 17, N'Phường Phúc La')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (265, 17, N'Phường Hà Cầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (266, 17, N'Phường Yên Nghĩa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (267, 17, N'Phường Kiến Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (268, 17, N'Phường Phú Lãm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (269, 17, N'Phường Phú Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (270, 17, N'Phường Dương Nội')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (271, 17, N'Phường Đồng Mai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (272, 17, N'Phường Biên Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (273, 18, N'Phường Lê Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (274, 18, N'Phường Phú Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (275, 18, N'Phường Ngô Quyền')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (276, 18, N'Phường Quang Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (277, 18, N'Phường Sơn Lộc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (278, 18, N'Phường Xuân Khanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (279, 18, N'Xã Đường Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (280, 18, N'Phường Viên Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (281, 18, N'Xã Xuân Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (282, 18, N'Phường Trung Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (283, 18, N'Xã Thanh Mỹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (284, 18, N'Phường Trung Sơn Trầm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (285, 18, N'Xã Kim Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (286, 18, N'Xã Sơn Đông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (287, 18, N'Xã Cổ Đông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (288, 19, N'Thị trấn Tây Đằng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (289, 19, N'Xã Phú Cường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (290, 19, N'Xã Cổ Đô')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (291, 19, N'Xã Tản Hồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (292, 19, N'Xã Vạn Thắng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (293, 19, N'Xã Châu Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (294, 19, N'Xã Phong Vân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (295, 19, N'Xã Phú Đông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (296, 19, N'Xã Phú Phương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (297, 19, N'Xã Phú Châu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (298, 19, N'Xã Thái Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (299, 19, N'Xã Đồng Thái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (300, 19, N'Xã Phú Sơn')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (301, 19, N'Xã Minh Châu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (302, 19, N'Xã Vật Lại')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (303, 19, N'Xã Chu Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (304, 19, N'Xã Tòng Bạt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (305, 19, N'Xã Cẩm Lĩnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (306, 19, N'Xã Sơn Đà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (307, 19, N'Xã Đông Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (308, 19, N'Xã Tiên Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (309, 19, N'Xã Thụy An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (310, 19, N'Xã Cam Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (311, 19, N'Xã Thuần Mỹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (312, 19, N'Xã Tản Lĩnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (313, 19, N'Xã Ba Trại')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (314, 19, N'Xã Minh Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (315, 19, N'Xã Ba Vì')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (316, 19, N'Xã Vân Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (317, 19, N'Xã Yên Bài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (318, 19, N'Xã Khánh Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (319, 20, N'Thị trấn Phúc Thọ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (320, 20, N'Xã Vân Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (321, 20, N'Xã Vân Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (322, 20, N'Xã Vân Nam')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (323, 20, N'Xã Xuân Đình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (324, 20, N'Xã Sen Phương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (325, 20, N'Xã Võng Xuyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (326, 20, N'Xã Thọ Lộc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (327, 20, N'Xã Long Xuyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (328, 20, N'Xã Thượng Cốc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (329, 20, N'Xã Hát Môn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (330, 20, N'Xã Tích Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (331, 20, N'Xã Thanh Đa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (332, 20, N'Xã Trạch Mỹ Lộc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (333, 20, N'Xã Phúc Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (334, 20, N'Xã Ngọc Tảo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (335, 20, N'Xã Phụng Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (336, 20, N'Xã Tam Thuấn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (337, 20, N'Xã Tam Hiệp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (338, 20, N'Xã Hiệp Thuận')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (339, 20, N'Xã Liên Hiệp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (340, 21, N'Thị trấn Phùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (341, 21, N'Xã Trung Châu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (342, 21, N'Xã Thọ An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (343, 21, N'Xã Thọ Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (344, 21, N'Xã Hồng Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (345, 21, N'Xã Liên Hồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (346, 21, N'Xã Liên Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (347, 21, N'Xã Hạ Mỗ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (348, 21, N'Xã Liên Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (349, 21, N'Xã Phương Đình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (350, 21, N'Xã Thượng Mỗ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (351, 21, N'Xã Tân Hội')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (352, 21, N'Xã Tân Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (353, 21, N'Xã Đan Phượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (354, 21, N'Xã Đồng Tháp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (355, 21, N'Xã Song Phượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (356, 22, N'Thị trấn Trạm Trôi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (357, 22, N'Xã Đức Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (358, 22, N'Xã Minh Khai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (359, 22, N'Xã Dương Liễu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (360, 22, N'Xã Di Trạch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (361, 22, N'Xã Đức Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (362, 22, N'Xã Cát Quế')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (363, 22, N'Xã Kim Chung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (364, 22, N'Xã Yên Sở')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (365, 22, N'Xã Sơn Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (366, 22, N'Xã Vân Canh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (367, 22, N'Xã Đắc Sở')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (368, 22, N'Xã Lại Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (369, 22, N'Xã Tiền Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (370, 22, N'Xã Song Phương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (371, 22, N'Xã An Khánh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (372, 22, N'Xã An Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (373, 22, N'Xã Vân Côn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (374, 22, N'Xã La Phù')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (375, 22, N'Xã Đông La')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (376, 23, N'Xã Đông Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (377, 23, N'Thị trấn Quốc Oai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (378, 23, N'Xã Sài Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (379, 23, N'Xã Phượng Cách')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (380, 23, N'Xã Yên Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (381, 23, N'Xã Ngọc Liệp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (382, 23, N'Xã Ngọc Mỹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (383, 23, N'Xã Liệp Tuyết')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (384, 23, N'Xã Thạch Thán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (385, 23, N'Xã Đồng Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (386, 23, N'Xã Phú Cát')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (387, 23, N'Xã Tuyết Nghĩa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (388, 23, N'Xã Nghĩa Hương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (389, 23, N'Xã Cộng Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (390, 23, N'Xã Tân Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (391, 23, N'Xã Đại Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (392, 23, N'Xã Phú Mãn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (393, 23, N'Xã Cấn Hữu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (394, 23, N'Xã Tân Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (395, 23, N'Xã Hòa Thạch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (396, 23, N'Xã Đông Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (397, 24, N'Xã Yên Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (398, 24, N'Xã Yên Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (399, 24, N'Xã Tiến Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (400, 24, N'Thị trấn Liên Quan')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (401, 24, N'Xã Đại Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (402, 24, N'Xã Cẩm Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (403, 24, N'Xã Lại Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (404, 24, N'Xã Phú Kim')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (405, 24, N'Xã Hương Ngải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (406, 24, N'Xã Canh Nậu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (407, 24, N'Xã Kim Quan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (408, 24, N'Xã Dị Nậu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (409, 24, N'Xã Bình Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (410, 24, N'Xã Chàng Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (411, 24, N'Xã Thạch Hoà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (412, 24, N'Xã Cần Kiệm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (413, 24, N'Xã Hữu Bằng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (414, 24, N'Xã Phùng Xá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (415, 24, N'Xã Tân Xã')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (416, 24, N'Xã Thạch Xá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (417, 24, N'Xã Bình Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (418, 24, N'Xã Hạ Bằng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (419, 24, N'Xã Đồng Trúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (420, 25, N'Thị trấn Chúc Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (421, 25, N'Thị trấn Xuân Mai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (422, 25, N'Xã Phụng Châu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (423, 25, N'Xã Tiên Phương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (424, 25, N'Xã Đông Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (425, 25, N'Xã Đông Phương Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (426, 25, N'Xã Phú Nghĩa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (427, 25, N'Xã Trường Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (428, 25, N'Xã Ngọc Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (429, 25, N'Xã Thủy Xuân Tiên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (430, 25, N'Xã Thanh Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (431, 25, N'Xã Trung Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (432, 25, N'Xã Đại Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (433, 25, N'Xã Thụy Hương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (434, 25, N'Xã Tốt Động')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (435, 25, N'Xã Lam Điền')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (436, 25, N'Xã Tân Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (437, 25, N'Xã Nam Phương Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (438, 25, N'Xã Hợp Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (439, 25, N'Xã Hoàng Văn Thụ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (440, 25, N'Xã Hoàng Diệu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (441, 25, N'Xã Hữu Văn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (442, 25, N'Xã Quảng Bị')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (443, 25, N'Xã Mỹ Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (444, 25, N'Xã Thượng Vực')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (445, 25, N'Xã Hồng Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (446, 25, N'Xã Đồng Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (447, 25, N'Xã Trần Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (448, 25, N'Xã Văn Võ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (449, 25, N'Xã Đồng Lạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (450, 25, N'Xã Hòa Chính')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (451, 25, N'Xã Phú Nam An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (452, 26, N'Thị trấn Kim Bài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (453, 26, N'Xã Cự Khê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (454, 26, N'Xã Bích Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (455, 26, N'Xã Mỹ Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (456, 26, N'Xã Cao Viên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (457, 26, N'Xã Bình Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (458, 26, N'Xã Tam Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (459, 26, N'Xã Thanh Cao')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (460, 26, N'Xã Thanh Thùy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (461, 26, N'Xã Thanh Mai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (462, 26, N'Xã Thanh Văn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (463, 26, N'Xã Đỗ Động')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (464, 26, N'Xã Kim An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (465, 26, N'Xã Kim Thư')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (466, 26, N'Xã Phương Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (467, 26, N'Xã Tân Ước')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (468, 26, N'Xã Dân Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (469, 26, N'Xã Liên Châu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (470, 26, N'Xã Cao Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (471, 26, N'Xã Xuân Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (472, 26, N'Xã Hồng Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (473, 27, N'Thị trấn Thường Tín')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (474, 27, N'Xã Ninh Sở')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (475, 27, N'Xã Nhị Khê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (476, 27, N'Xã Duyên Thái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (477, 27, N'Xã Khánh Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (478, 27, N'Xã Hòa Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (479, 27, N'Xã Văn Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (480, 27, N'Xã Hiền Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (481, 27, N'Xã Hồng Vân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (482, 27, N'Xã Vân Tảo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (483, 27, N'Xã Liên Phương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (484, 27, N'Xã Văn Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (485, 27, N'Xã Tự Nhiên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (486, 27, N'Xã Tiền Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (487, 27, N'Xã Hà Hồi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (488, 27, N'Xã Thư Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (489, 27, N'Xã Nguyễn Trãi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (490, 27, N'Xã Quất Động')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (491, 27, N'Xã Chương Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (492, 27, N'Xã Tân Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (493, 27, N'Xã Lê Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (494, 27, N'Xã Thắng Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (495, 27, N'Xã Dũng Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (496, 27, N'Xã Thống Nhất')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (497, 27, N'Xã Nghiêm Xuyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (498, 27, N'Xã Tô Hiệu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (499, 27, N'Xã Văn Tự')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (500, 27, N'Xã Vạn Điểm')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (501, 27, N'Xã Minh Cường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (502, 28, N'Thị trấn Phú Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (503, 28, N'Thị trấn Phú Xuyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (504, 28, N'Xã Hồng Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (505, 28, N'Xã Phượng Dực')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (506, 28, N'Xã Nam Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (507, 28, N'Xã Tri Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (508, 28, N'Xã Đại Thắng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (509, 28, N'Xã Phú Túc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (510, 28, N'Xã Văn Hoàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (511, 28, N'Xã Hồng Thái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (512, 28, N'Xã Hoàng Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (513, 28, N'Xã Quang Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (514, 28, N'Xã Nam Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (515, 28, N'Xã Nam Triều')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (516, 28, N'Xã Tân Dân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (517, 28, N'Xã Sơn Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (518, 28, N'Xã Chuyên Mỹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (519, 28, N'Xã Khai Thái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (520, 28, N'Xã Phúc Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (521, 28, N'Xã Vân Từ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (522, 28, N'Xã Tri Thủy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (523, 28, N'Xã Đại Xuyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (524, 28, N'Xã Phú Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (525, 28, N'Xã Bạch Hạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (526, 28, N'Xã Quang Lãng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (527, 28, N'Xã Châu Can')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (528, 28, N'Xã Minh Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (529, 29, N'Thị trấn Vân Đình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (530, 29, N'Xã Viên An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (531, 29, N'Xã Viên Nội')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (532, 29, N'Xã Hoa Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (533, 29, N'Xã Quảng Phú Cầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (534, 29, N'Xã Trường Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (535, 29, N'Xã Cao Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (536, 29, N'Xã Liên Bạt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (537, 29, N'Xã Sơn Công')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (538, 29, N'Xã Đồng Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (539, 29, N'Xã Phương Tú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (540, 29, N'Xã Trung Tú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (541, 29, N'Xã Đồng Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (542, 29, N'Xã Tảo Dương Văn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (543, 29, N'Xã Vạn Thái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (544, 29, N'Xã Minh Đức')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (545, 29, N'Xã Hòa Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (546, 29, N'Xã Hòa Xá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (547, 29, N'Xã Trầm Lộng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (548, 29, N'Xã Kim Đường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (549, 29, N'Xã Hòa Nam')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (550, 29, N'Xã Hòa Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (551, 29, N'Xã Đội Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (552, 29, N'Xã Đại Hùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (553, 29, N'Xã Đông Lỗ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (554, 29, N'Xã Phù Lưu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (555, 29, N'Xã Đại Cường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (556, 29, N'Xã Lưu Hoàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (557, 29, N'Xã Hồng Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (558, 30, N'Thị trấn Đại Nghĩa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (559, 30, N'Xã Đồng Tâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (560, 30, N'Xã Thượng Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (561, 30, N'Xã Tuy Lai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (562, 30, N'Xã Phúc Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (563, 30, N'Xã Mỹ Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (564, 30, N'Xã Bột Xuyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (565, 30, N'Xã An Mỹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (566, 30, N'Xã Hồng Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (567, 30, N'Xã Lê Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (568, 30, N'Xã Xuy Xá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (569, 30, N'Xã Phùng Xá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (570, 30, N'Xã Phù Lưu Tế')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (571, 30, N'Xã Đại Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (572, 30, N'Xã Vạn Kim')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (573, 30, N'Xã Đốc Tín')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (574, 30, N'Xã Hương Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (575, 30, N'Xã Hùng Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (576, 30, N'Xã An Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (577, 30, N'Xã Hợp Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (578, 30, N'Xã Hợp Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (579, 30, N'Xã An Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (580, 31, N'Phường Quang Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (581, 31, N'Phường Trần Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (582, 31, N'Phường Ngọc Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (583, 31, N'Phường Nguyễn Trãi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (584, 31, N'Phường Minh Khai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (585, 31, N'Xã Ngọc Đường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (586, 31, N'Xã Phương Độ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (587, 31, N'Xã Phương Thiện')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (588, 32, N'Thị trấn Phó Bảng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (589, 32, N'Xã Lũng Cú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (590, 32, N'Xã Má Lé')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (591, 32, N'Thị trấn Đồng Văn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (592, 32, N'Xã Lũng Táo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (593, 32, N'Xã Phố Là')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (594, 32, N'Xã Thài Phìn Tủng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (595, 32, N'Xã Sủng Là')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (596, 32, N'Xã Xà Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (597, 32, N'Xã Tả Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (598, 32, N'Xã Tả Lủng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (599, 32, N'Xã Phố Cáo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (600, 32, N'Xã Sính Lủng')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (601, 32, N'Xã Sảng Tủng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (602, 32, N'Xã Lũng Thầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (603, 32, N'Xã Hố Quáng Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (604, 32, N'Xã Vần Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (605, 32, N'Xã Lũng Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (606, 32, N'Xã Sủng Trái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (607, 33, N'Thị trấn Mèo Vạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (608, 33, N'Xã Thượng Phùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (609, 33, N'Xã Pải Lủng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (610, 33, N'Xã Xín Cái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (611, 33, N'Xã Pả Vi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (612, 33, N'Xã Giàng Chu Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (613, 33, N'Xã Sủng Trà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (614, 33, N'Xã Sủng Máng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (615, 33, N'Xã Sơn Vĩ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (616, 33, N'Xã Tả Lủng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (617, 33, N'Xã Cán Chu Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (618, 33, N'Xã Lũng Pù')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (619, 33, N'Xã Lũng Chinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (620, 33, N'Xã Tát Ngà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (621, 33, N'Xã Nậm Ban')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (622, 33, N'Xã Khâu Vai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (623, 33, N'Xã Niêm Tòng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (624, 33, N'Xã Niêm Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (625, 34, N'Thị trấn Yên Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (626, 34, N'Xã Thắng Mố')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (627, 34, N'Xã Phú Lũng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (628, 34, N'Xã Sủng Tráng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (629, 34, N'Xã Bạch Đích')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (630, 34, N'Xã Na Khê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (631, 34, N'Xã Sủng Thài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (632, 34, N'Xã Hữu Vinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (633, 34, N'Xã Lao Và Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (634, 34, N'Xã Mậu Duệ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (635, 34, N'Xã Đông Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (636, 34, N'Xã Mậu Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (637, 34, N'Xã Ngam La')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (638, 34, N'Xã Ngọc Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (639, 34, N'Xã Đường Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (640, 34, N'Xã Lũng Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (641, 34, N'Xã Du Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (642, 34, N'Xã Du Già')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (643, 35, N'Thị trấn Tam Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (644, 35, N'Xã Bát Đại Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (645, 35, N'Xã Nghĩa Thuận')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (646, 35, N'Xã Cán Tỷ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (647, 35, N'Xã Cao Mã Pờ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (648, 35, N'Xã Thanh Vân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (649, 35, N'Xã Tùng Vài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (650, 35, N'Xã Đông Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (651, 35, N'Xã Quản Bạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (652, 35, N'Xã Lùng Tám')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (653, 35, N'Xã Quyết Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (654, 35, N'Xã Tả Ván')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (655, 35, N'Xã Thái An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (656, 36, N'Xã Kim Thạch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (657, 36, N'Xã Phú Linh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (658, 36, N'Xã Kim Linh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (659, 36, N'Thị trấn Vị Xuyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (660, 36, N'Thị trấn Nông Trường Việt Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (661, 36, N'Xã Minh Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (662, 36, N'Xã Thuận Hoà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (663, 36, N'Xã Tùng Bá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (664, 36, N'Xã Thanh Thủy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (665, 36, N'Xã Thanh Đức')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (666, 36, N'Xã Phong Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (667, 36, N'Xã Xín Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (668, 36, N'Xã Phương Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (669, 36, N'Xã Lao Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (670, 36, N'Xã Cao Bồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (671, 36, N'Xã Đạo Đức')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (672, 36, N'Xã Thượng Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (673, 36, N'Xã Linh Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (674, 36, N'Xã Quảng Ngần')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (675, 36, N'Xã Việt Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (676, 36, N'Xã Ngọc Linh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (677, 36, N'Xã Ngọc Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (678, 36, N'Xã Bạch Ngọc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (679, 36, N'Xã Trung Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (680, 37, N'Xã Minh Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (681, 37, N'Xã Giáp Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (682, 37, N'Xã Yên Định')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (683, 37, N'Thị trấn Yên Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (684, 37, N'Xã Minh Ngọc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (685, 37, N'Xã Yên Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (686, 37, N'Xã Lạc Nông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (687, 37, N'Xã Phú Nam')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (688, 37, N'Xã Yên Cường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (689, 37, N'Xã Thượng Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (690, 37, N'Xã Đường Âm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (691, 37, N'Xã Đường Hồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (692, 37, N'Xã Phiêng Luông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (693, 38, N'Thị trấn Vinh Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (694, 38, N'Xã Bản Máy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (695, 38, N'Xã Thàng Tín')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (696, 38, N'Xã Thèn Chu Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (697, 38, N'Xã Pố Lồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (698, 38, N'Xã Bản Phùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (699, 38, N'Xã Túng Sán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (700, 38, N'Xã Chiến Phố')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (701, 38, N'Xã Đản Ván')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (702, 38, N'Xã Tụ Nhân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (703, 38, N'Xã Tân Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (704, 38, N'Xã Nàng Đôn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (705, 38, N'Xã Pờ Ly Ngài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (706, 38, N'Xã Sán Xả Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (707, 38, N'Xã Bản Luốc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (708, 38, N'Xã Ngàm Đăng Vài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (709, 38, N'Xã Bản Nhùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (710, 38, N'Xã Tả Sử Choóng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (711, 38, N'Xã Nậm Dịch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (712, 38, N'Xã Hồ Thầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (713, 38, N'Xã Nam Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (714, 38, N'Xã Nậm Tỵ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (715, 38, N'Xã Thông Nguyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (716, 38, N'Xã Nậm Khòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (717, 39, N'Thị trấn Cốc Pài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (718, 39, N'Xã Nàn Xỉn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (719, 39, N'Xã Bản Díu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (720, 39, N'Xã Chí Cà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (721, 39, N'Xã Xín Mần')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (722, 39, N'Xã Thèn Phàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (723, 39, N'Xã Trung Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (724, 39, N'Xã Pà Vầy Sủ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (725, 39, N'Xã Cốc Rế')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (726, 39, N'Xã Thu Tà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (727, 39, N'Xã Nàn Ma')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (728, 39, N'Xã Tả Nhìu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (729, 39, N'Xã Bản Ngò')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (730, 39, N'Xã Chế Là')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (731, 39, N'Xã Nấm Dẩn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (732, 39, N'Xã Quảng Nguyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (733, 39, N'Xã Nà Chì')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (734, 39, N'Xã Khuôn Lùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (735, 40, N'Thị trấn Việt Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (736, 40, N'Thị trấn Vĩnh Tuy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (737, 40, N'Xã Tân Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (738, 40, N'Xã Tân Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (739, 40, N'Xã Đồng Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (740, 40, N'Xã Đồng Tâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (741, 40, N'Xã Tân Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (742, 40, N'Xã Thượng Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (743, 40, N'Xã Hữu Sản')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (744, 40, N'Xã Kim Ngọc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (745, 40, N'Xã Việt Vinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (746, 40, N'Xã Bằng Hành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (747, 40, N'Xã Quang Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (748, 40, N'Xã Liên Hiệp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (749, 40, N'Xã Vô Điếm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (750, 40, N'Xã Việt Hồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (751, 40, N'Xã Hùng An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (752, 40, N'Xã Đức Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (753, 40, N'Xã Tiên Kiều')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (754, 40, N'Xã Vĩnh Hảo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (755, 40, N'Xã Vĩnh Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (756, 40, N'Xã Đồng Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (757, 40, N'Xã Đông Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (758, 41, N'Xã Xuân Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (759, 41, N'Xã Tiên Nguyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (760, 41, N'Xã Tân Nam')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (761, 41, N'Xã Bản Rịa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (762, 41, N'Xã Yên Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (763, 41, N'Thị trấn Yên Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (764, 41, N'Xã Tân Trịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (765, 41, N'Xã Tân Bắc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (766, 41, N'Xã Bằng Lang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (767, 41, N'Xã Yên Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (768, 41, N'Xã Hương Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (769, 41, N'Xã Xuân Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (770, 41, N'Xã Nà Khương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (771, 41, N'Xã Tiên Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (772, 41, N'Xã Vĩ Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (773, 42, N'Phường Sông Hiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (774, 42, N'Phường Sông Bằng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (775, 42, N'Phường Hợp Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (776, 42, N'Phường Tân Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (777, 42, N'Phường Ngọc Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (778, 42, N'Phường Đề Thám')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (779, 42, N'Phường Hoà Chung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (780, 42, N'Phường Duyệt Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (781, 42, N'Xã Vĩnh Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (782, 42, N'Xã Hưng Đạo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (783, 42, N'Xã Chu Trinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (784, 43, N'Thị trấn Pác Miầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (785, 43, N'Xã Đức Hạnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (786, 43, N'Xã Lý Bôn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (787, 43, N'Xã Nam Cao')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (788, 43, N'Xã Nam Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (789, 43, N'Xã Vĩnh Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (790, 43, N'Xã Quảng Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (791, 43, N'Xã Thạch Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (792, 43, N'Xã Vĩnh Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (793, 43, N'Xã Mông Ân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (794, 43, N'Xã Thái Học')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (795, 43, N'Xã Thái Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (796, 43, N'Xã Yên Thổ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (797, 44, N'Thị trấn Bảo Lạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (798, 44, N'Xã Cốc Pàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (799, 44, N'Xã Thượng Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (800, 44, N'Xã Cô Ba')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (801, 44, N'Xã Bảo Toàn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (802, 44, N'Xã Khánh Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (803, 44, N'Xã Xuân Trường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (804, 44, N'Xã Hồng Trị')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (805, 44, N'Xã Kim Cúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (806, 44, N'Xã Phan Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (807, 44, N'Xã Hồng An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (808, 44, N'Xã Hưng Đạo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (809, 44, N'Xã Hưng Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (810, 44, N'Xã Huy Giáp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (811, 44, N'Xã Đình Phùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (812, 44, N'Xã Sơn Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (813, 44, N'Xã Sơn Lộ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (814, 45, N'Thị trấn Thông Nông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (815, 45, N'Xã Cần Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (816, 45, N'Xã Cần Nông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (817, 45, N'Xã Lương Thông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (818, 45, N'Xã Đa Thông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (819, 45, N'Xã Ngọc Động')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (820, 45, N'Xã Yên Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (821, 45, N'Xã Lương Can')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (822, 45, N'Xã Thanh Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (823, 45, N'Thị trấn Xuân Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (824, 45, N'Xã Lũng Nặm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (825, 45, N'Xã Trường Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (826, 45, N'Xã Cải Viên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (827, 45, N'Xã Nội Thôn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (828, 45, N'Xã Tổng Cọt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (829, 45, N'Xã Sóc Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (830, 45, N'Xã Thượng Thôn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (831, 45, N'Xã Hồng Sỹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (832, 45, N'Xã Quý Quân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (833, 45, N'Xã Mã Ba')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (834, 45, N'Xã Ngọc Đào')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (835, 46, N'Thị trấn Trà Lĩnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (836, 46, N'Xã Tri Phương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (837, 46, N'Xã Quang Hán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (838, 46, N'Xã Xuân Nội')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (839, 46, N'Xã Quang Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (840, 46, N'Xã Quang Vinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (841, 46, N'Xã Cao Chương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (842, 46, N'Thị trấn Trùng Khánh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (843, 46, N'Xã Ngọc Khê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (844, 46, N'Xã Ngọc Côn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (845, 46, N'Xã Phong Nậm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (846, 46, N'Xã Đình Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (847, 46, N'Xã Đàm Thuỷ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (848, 46, N'Xã Khâm Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (849, 46, N'Xã Chí Viễn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (850, 46, N'Xã Lăng Hiếu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (851, 46, N'Xã Phong Châu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (852, 46, N'Xã Trung Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (853, 46, N'Xã Cao Thăng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (854, 46, N'Xã Đức Hồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (855, 46, N'Xã Đoài Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (856, 47, N'Xã Minh Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (857, 47, N'Xã Lý Quốc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (858, 47, N'Xã Thắng Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (859, 47, N'Xã Đồng Loan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (860, 47, N'Xã Đức Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (861, 47, N'Xã Kim Loan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (862, 47, N'Xã Quang Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (863, 47, N'Xã An Lạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (864, 47, N'Thị trấn Thanh Nhật')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (865, 47, N'Xã Vinh Quý')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (866, 47, N'Xã Thống Nhất')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (867, 47, N'Xã Cô Ngân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (868, 47, N'Xã Thị Hoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (869, 48, N'Xã Quốc Toản')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (870, 48, N'Thị trấn Quảng Uyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (871, 48, N'Xã Phi Hải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (872, 48, N'Xã Quảng Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (873, 48, N'Xã Độc Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (874, 48, N'Xã Cai Bộ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (875, 48, N'Xã Phúc Sen')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (876, 48, N'Xã Chí Thảo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (877, 48, N'Xã Tự Do')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (878, 48, N'Xã Hồng Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (879, 48, N'Xã Ngọc Động')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (880, 48, N'Xã Hạnh Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (881, 48, N'Thị trấn Tà Lùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (882, 48, N'Xã Bế Văn Đàn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (883, 48, N'Xã Cách Linh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (884, 48, N'Xã Đại Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (885, 48, N'Xã Tiên Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (886, 48, N'Thị trấn Hoà Thuận')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (887, 48, N'Xã Mỹ Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (888, 49, N'Thị trấn Nước Hai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (889, 49, N'Xã Dân Chủ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (890, 49, N'Xã Nam Tuấn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (891, 49, N'Xã Đại Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (892, 49, N'Xã Đức Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (893, 49, N'Xã Ngũ Lão')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (894, 49, N'Xã Trương Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (895, 49, N'Xã Hồng Việt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (896, 49, N'Xã Hoàng Tung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (897, 49, N'Xã Nguyễn Huệ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (898, 49, N'Xã Quang Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (899, 49, N'Xã Bạch Đằng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (900, 49, N'Xã Bình Dương')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (901, 49, N'Xã Lê Chung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (902, 49, N'Xã Hồng Nam')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (903, 50, N'Thị trấn Nguyên Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (904, 50, N'Thị trấn Tĩnh Túc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (905, 50, N'Xã Yên Lạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (906, 50, N'Xã Triệu Nguyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (907, 50, N'Xã Ca Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (908, 50, N'Xã Vũ Nông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (909, 50, N'Xã Minh Tâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (910, 50, N'Xã Thể Dục')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (911, 50, N'Xã Mai Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (912, 50, N'Xã Vũ Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (913, 50, N'Xã Hoa Thám')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (914, 50, N'Xã Phan Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (915, 50, N'Xã Quang Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (916, 50, N'Xã Tam Kim')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (917, 50, N'Xã Thành Công')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (918, 50, N'Xã Thịnh Vượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (919, 50, N'Xã Hưng Đạo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (920, 51, N'Thị trấn Đông Khê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (921, 51, N'Xã Canh Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (922, 51, N'Xã Kim Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (923, 51, N'Xã Minh Khai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (924, 51, N'Xã Đức Thông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (925, 51, N'Xã Thái Cường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (926, 51, N'Xã Vân Trình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (927, 51, N'Xã Thụy Hùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (928, 51, N'Xã Quang Trọng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (929, 51, N'Xã Trọng Con')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (930, 51, N'Xã Lê Lai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (931, 51, N'Xã Đức Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (932, 51, N'Xã Lê Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (933, 51, N'Xã Đức Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (934, 52, N'Phường Nguyễn Thị Minh Khai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (935, 52, N'Phường Sông Cầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (936, 52, N'Phường Đức Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (937, 52, N'Phường Phùng Chí Kiên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (938, 52, N'Phường Huyền Tụng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (939, 52, N'Xã Dương Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (940, 52, N'Xã Nông Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (941, 52, N'Phường Xuất Hóa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (942, 53, N'Xã Bằng Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (943, 53, N'Xã Nhạn Môn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (944, 53, N'Xã Bộc Bố')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (945, 53, N'Xã Công Bằng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (946, 53, N'Xã Giáo Hiệu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (947, 53, N'Xã Xuân La')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (948, 53, N'Xã An Thắng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (949, 53, N'Xã Cổ Linh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (950, 53, N'Xã Nghiên Loan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (951, 53, N'Xã Cao Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (952, 54, N'Thị trấn Chợ Rã')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (953, 54, N'Xã Bành Trạch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (954, 54, N'Xã Phúc Lộc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (955, 54, N'Xã Hà Hiệu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (956, 54, N'Xã Cao Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (957, 54, N'Xã Khang Ninh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (958, 54, N'Xã Nam Mẫu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (959, 54, N'Xã Thượng Giáo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (960, 54, N'Xã Địa Linh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (961, 54, N'Xã Yến Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (962, 54, N'Xã Chu Hương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (963, 54, N'Xã Quảng Khê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (964, 54, N'Xã Mỹ Phương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (965, 54, N'Xã Hoàng Trĩ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (966, 54, N'Xã Đồng Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (967, 55, N'Thị trấn Nà Phặc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (968, 55, N'Xã Thượng Ân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (969, 55, N'Xã Bằng Vân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (970, 55, N'Xã Cốc Đán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (971, 55, N'Xã Trung Hoà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (972, 55, N'Xã Đức Vân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (973, 55, N'Xã Vân Tùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (974, 55, N'Xã Thượng Quan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (975, 55, N'Xã Hiệp Lực')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (976, 55, N'Xã Thuần Mang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (977, 56, N'Thị trấn Phủ Thông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (978, 56, N'Xã Vi Hương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (979, 56, N'Xã Sĩ Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (980, 56, N'Xã Vũ Muộn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (981, 56, N'Xã Đôn Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (982, 56, N'Xã Lục Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (983, 56, N'Xã Tân Tú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (984, 56, N'Xã Nguyên Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (985, 56, N'Xã Cao Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (986, 56, N'Xã Quân Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (987, 56, N'Xã Cẩm Giàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (988, 56, N'Xã Mỹ Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (989, 56, N'Xã Dương Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (990, 56, N'Xã Quang Thuận')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (991, 57, N'Thị trấn Bằng Lũng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (992, 57, N'Xã Xuân Lạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (993, 57, N'Xã Nam Cường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (994, 57, N'Xã Đồng Lạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (995, 57, N'Xã Tân Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (996, 57, N'Xã Bản Thi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (997, 57, N'Xã Quảng Bạch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (998, 57, N'Xã Bằng Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (999, 57, N'Xã Yên Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1000, 57, N'Xã Yên Thượng')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1001, 57, N'Xã Phương Viên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1002, 57, N'Xã Ngọc Phái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1003, 57, N'Xã Đồng Thắng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1004, 57, N'Xã Lương Bằng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1005, 57, N'Xã Bằng Lãng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1006, 57, N'Xã Đại Sảo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1007, 57, N'Xã Nghĩa Tá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1008, 57, N'Xã Yên Mỹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1009, 57, N'Xã Bình Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1010, 57, N'Xã Yên Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1011, 58, N'Thị trấn Đồng Tâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1012, 58, N'Xã Tân Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1013, 58, N'Xã Thanh Vận')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1014, 58, N'Xã Mai Lạp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1015, 58, N'Xã Hoà Mục')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1016, 58, N'Xã Thanh Mai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1017, 58, N'Xã Cao Kỳ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1018, 58, N'Xã Nông Hạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1019, 58, N'Xã Yên Cư')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1020, 58, N'Xã Thanh Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1021, 58, N'Xã Yên Hân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1022, 58, N'Xã Như Cố')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1023, 58, N'Xã Bình Văn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1024, 58, N'Xã Quảng Chu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1025, 59, N'Xã Văn Vũ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1026, 59, N'Xã Văn Lang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1027, 59, N'Xã Lương Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1028, 59, N'Xã Kim Hỷ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1029, 59, N'Xã Cường Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1030, 59, N'Thị trấn Yến Lạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1031, 59, N'Xã Kim Lư')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1032, 59, N'Xã Sơn Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1033, 59, N'Xã Văn Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1034, 59, N'Xã Côn Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1035, 59, N'Xã Cư Lễ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1036, 59, N'Xã Trần Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1037, 59, N'Xã Quang Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1038, 59, N'Xã Dương Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1039, 59, N'Xã Xuân Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1040, 59, N'Xã Đổng Xá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1041, 59, N'Xã Liêm Thuỷ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1042, 60, N'Phường Phan Thiết')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1043, 60, N'Phường Minh Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1044, 60, N'Phường Tân Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1045, 60, N'Xã Tràng Đà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1046, 60, N'Phường Nông Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1047, 60, N'Phường Ỷ La')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1048, 60, N'Phường Tân Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1049, 60, N'Phường Hưng Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1050, 60, N'Xã Kim Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1051, 60, N'Xã An Khang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1052, 60, N'Phường Mỹ Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1053, 60, N'Phường An Tường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1054, 60, N'Xã Lưỡng Vượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1055, 60, N'Xã Thái Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1056, 60, N'Phường Đội Cấn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1057, 61, N'Xã Phúc Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1058, 61, N'Xã Xuân Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1059, 61, N'Xã Khuôn Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1060, 61, N'Thị trấn Lăng Can')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1061, 61, N'Xã Thượng Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1062, 61, N'Xã Bình An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1063, 61, N'Xã Hồng Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1064, 61, N'Xã Thổ Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1065, 61, N'Xã Phúc Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1066, 61, N'Xã Minh Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1067, 62, N'Thị trấn Na Hang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1068, 62, N'Xã Sinh Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1069, 62, N'Xã Thượng Giáp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1070, 62, N'Xã Thượng Nông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1071, 62, N'Xã Côn Lôn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1072, 62, N'Xã Yên Hoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1073, 62, N'Xã Hồng Thái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1074, 62, N'Xã Đà Vị')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1075, 62, N'Xã Khau Tinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1076, 62, N'Xã Sơn Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1077, 62, N'Xã Năng Khả')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1078, 62, N'Xã Thanh Tương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1079, 63, N'Thị trấn Vĩnh Lộc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1080, 63, N'Xã Trung Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1081, 63, N'Xã Tân Mỹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1082, 63, N'Xã Hà Lang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1083, 63, N'Xã Hùng Mỹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1084, 63, N'Xã Yên Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1085, 63, N'Xã Tân An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1086, 63, N'Xã Bình Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1087, 63, N'Xã Xuân Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1088, 63, N'Xã Ngọc Hội')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1089, 63, N'Xã Phú Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1090, 63, N'Xã Hòa Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1091, 63, N'Xã Phúc Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1092, 63, N'Xã Kiên Đài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1093, 63, N'Xã Tân Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1094, 63, N'Xã Trung Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1095, 63, N'Xã Kim Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1096, 63, N'Xã Hòa An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1097, 63, N'Xã Vinh Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1098, 63, N'Xã Tri Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1099, 63, N'Xã Nhân Lý')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1100, 63, N'Xã Yên Nguyên')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1101, 63, N'Xã Linh Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1102, 63, N'Xã Bình Nhân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1103, 64, N'Thị trấn Tân Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1104, 64, N'Xã Yên Thuận')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1105, 64, N'Xã Bạch Xa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1106, 64, N'Xã Minh Khương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1107, 64, N'Xã Yên Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1108, 64, N'Xã Minh Dân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1109, 64, N'Xã Phù Lưu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1110, 64, N'Xã Minh Hương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1111, 64, N'Xã Yên Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1112, 64, N'Xã Tân Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1113, 64, N'Xã Bình Xa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1114, 64, N'Xã Thái Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1115, 64, N'Xã Nhân Mục')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1116, 64, N'Xã Thành Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1117, 64, N'Xã Bằng Cốc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1118, 64, N'Xã Thái Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1119, 64, N'Xã Đức Ninh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1120, 64, N'Xã Hùng Đức')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1121, 65, N'Xã Quí Quân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1122, 65, N'Xã Lực Hành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1123, 65, N'Xã Kiến Thiết')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1124, 65, N'Xã Trung Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1125, 65, N'Xã Chiêu Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1126, 65, N'Xã Trung Trực')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1127, 65, N'Xã Xuân Vân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1128, 65, N'Xã Phúc Ninh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1129, 65, N'Xã Hùng Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1130, 65, N'Xã Trung Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1131, 65, N'Xã Tân Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1132, 65, N'Xã Tứ Quận')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1133, 65, N'Xã Đạo Viện')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1134, 65, N'Xã Tân Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1135, 65, N'Thị trấn Yên Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1136, 65, N'Xã Kim Quan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1137, 65, N'Xã Lang Quán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1138, 65, N'Xã Phú Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1139, 65, N'Xã Công Đa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1140, 65, N'Xã Trung Môn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1141, 65, N'Xã Chân Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1142, 65, N'Xã Thái Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1143, 65, N'Xã Tiến Bộ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1144, 65, N'Xã Mỹ Bằng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1145, 65, N'Xã Hoàng Khai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1146, 65, N'Xã Nhữ Hán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1147, 65, N'Xã Nhữ Khê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1148, 65, N'Xã Đội Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1149, 66, N'Thị trấn Sơn Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1150, 66, N'Xã Trung Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1151, 66, N'Xã Minh Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1152, 66, N'Xã Tân Trào')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1153, 66, N'Xã Vĩnh Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1154, 66, N'Xã Thượng Ấm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1155, 66, N'Xã Bình Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1156, 66, N'Xã Lương Thiện')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1157, 66, N'Xã Tú Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1158, 66, N'Xã Cấp Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1159, 66, N'Xã Hợp Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1160, 66, N'Xã Phúc Ứng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1161, 66, N'Xã Đông Thọ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1162, 66, N'Xã Kháng Nhật')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1163, 66, N'Xã Hợp Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1164, 66, N'Xã Quyết Thắng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1165, 66, N'Xã Đồng Quý')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1166, 66, N'Xã Tân Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1167, 66, N'Xã Vân Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1168, 66, N'Xã Văn Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1169, 66, N'Xã Chi Thiết')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1170, 66, N'Xã Đông Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1171, 66, N'Xã Thiện Kế')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1172, 66, N'Xã Hồng Lạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1173, 66, N'Xã Phú Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1174, 66, N'Xã Ninh Lai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1175, 66, N'Xã Đại Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1176, 66, N'Xã Sơn Nam')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1177, 66, N'Xã Hào Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1178, 66, N'Xã Tam Đa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1179, 66, N'Xã Trường Sinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1180, 67, N'Phường Duyên Hải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1181, 67, N'Phường Lào Cai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1182, 67, N'Phường Cốc Lếu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1183, 67, N'Phường Kim Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1184, 67, N'Phường Bắc Lệnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1185, 67, N'Phường Pom Hán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1186, 67, N'Phường Xuân Tăng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1187, 67, N'Phường Bình Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1188, 67, N'Xã Thống Nhất')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1189, 67, N'Xã Đồng Tuyển')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1190, 67, N'Xã Vạn Hoà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1191, 67, N'Phường Bắc Cường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1192, 67, N'Phường Nam Cường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1193, 67, N'Xã Cam Đường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1194, 67, N'Xã Tả Phời')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1195, 67, N'Xã Hợp Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1196, 67, N'Xã Cốc San')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1197, 68, N'Thị trấn Bát Xát')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1198, 68, N'Xã A Mú Sung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1199, 68, N'Xã Nậm Chạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1200, 68, N'Xã A Lù')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1201, 68, N'Xã Trịnh Tường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1202, 68, N'Xã Y Tý')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1203, 68, N'Xã Cốc Mỳ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1204, 68, N'Xã Dền Sáng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1205, 68, N'Xã Bản Vược')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1206, 68, N'Xã Sàng Ma Sáo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1207, 68, N'Xã Bản Qua')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1208, 68, N'Xã Mường Vi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1209, 68, N'Xã Dền Thàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1210, 68, N'Xã Bản Xèo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1211, 68, N'Xã Mường Hum')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1212, 68, N'Xã Trung Lèng Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1213, 68, N'Xã Quang Kim')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1214, 68, N'Xã Pa Cheo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1215, 68, N'Xã Nậm Pung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1216, 68, N'Xã Phìn Ngan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1217, 68, N'Xã Tòng Sành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1218, 69, N'Xã Pha Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1219, 69, N'Xã Tả Ngải Chồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1220, 69, N'Xã Tung Chung Phố')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1221, 69, N'Thị trấn Mường Khương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1222, 69, N'Xã Dìn Chin')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1223, 69, N'Xã Tả Gia Khâu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1224, 69, N'Xã Nậm Chảy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1225, 69, N'Xã Nấm Lư')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1226, 69, N'Xã Lùng Khấu Nhin')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1227, 69, N'Xã Thanh Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1228, 69, N'Xã Cao Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1229, 69, N'Xã Lùng Vai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1230, 69, N'Xã Bản Lầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1231, 69, N'Xã La Pan Tẩn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1232, 69, N'Xã Tả Thàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1233, 69, N'Xã Bản Sen')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1234, 70, N'Xã Nàn Sán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1235, 70, N'Xã Thào Chư Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1236, 70, N'Xã Bản Mế')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1237, 70, N'Thị trấn Si Ma Cai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1238, 70, N'Xã Sán Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1239, 70, N'Xã Lùng Thẩn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1240, 70, N'Xã Cán Cấu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1241, 70, N'Xã Sín Chéng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1242, 70, N'Xã Quan Hồ Thẩn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1243, 70, N'Xã Nàn Xín')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1244, 71, N'Thị trấn Bắc Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1245, 71, N'Xã Lùng Cải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1246, 71, N'Xã Lùng Phình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1247, 71, N'Xã Tả Van Chư')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1248, 71, N'Xã Tả Củ Tỷ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1249, 71, N'Xã Thải Giàng Phố')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1250, 71, N'Xã Hoàng Thu Phố')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1251, 71, N'Xã Bản Phố')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1252, 71, N'Xã Bản Liền')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1253, 71, N'Xã Tà Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1254, 71, N'Xã Na Hối')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1255, 71, N'Xã Cốc Ly')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1256, 71, N'Xã Nậm Mòn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1257, 71, N'Xã Nậm Đét')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1258, 71, N'Xã Nậm Khánh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1259, 71, N'Xã Bảo Nhai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1260, 71, N'Xã Nậm Lúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1261, 71, N'Xã Cốc Lầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1262, 71, N'Xã Bản Cái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1263, 72, N'Thị trấn N.T Phong Hải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1264, 72, N'Thị trấn Phố Lu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1265, 72, N'Thị trấn Tằng Loỏng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1266, 72, N'Xã Bản Phiệt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1267, 72, N'Xã Bản Cầm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1268, 72, N'Xã Thái Niên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1269, 72, N'Xã Phong Niên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1270, 72, N'Xã Gia Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1271, 72, N'Xã Xuân Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1272, 72, N'Xã Sơn Hải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1273, 72, N'Xã Xuân Giao')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1274, 72, N'Xã Trì Quang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1275, 72, N'Xã Sơn Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1276, 72, N'Xã Phú Nhuận')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1277, 73, N'Thị trấn Phố Ràng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1278, 73, N'Xã Tân Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1279, 73, N'Xã Nghĩa Đô')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1280, 73, N'Xã Vĩnh Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1281, 73, N'Xã Điện Quan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1282, 73, N'Xã Xuân Hoà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1283, 73, N'Xã Tân Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1284, 73, N'Xã Thượng Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1285, 73, N'Xã Kim Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1286, 73, N'Xã Cam Cọn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1287, 73, N'Xã Minh Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1288, 73, N'Xã Xuân Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1289, 73, N'Xã Việt Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1290, 73, N'Xã Yên Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1291, 73, N'Xã Bảo Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1292, 73, N'Xã Lương Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1293, 73, N'Xã Phúc Khánh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1294, 74, N'Phường Sa Pa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1295, 74, N'Phường Ô Quý Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1296, 74, N'Xã Ngũ Chỉ Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1297, 74, N'Phường Phan Si Păng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1298, 74, N'Xã Trung Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1299, 74, N'Xã Tả Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1300, 74, N'Phường Hàm Rồng')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1301, 74, N'Xã Hoàng Liên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1302, 74, N'Xã Thanh Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1303, 74, N'Phường Cầu Mây')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1304, 74, N'Xã Mường Hoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1305, 74, N'Xã Tả Van')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1306, 74, N'Xã Mường Bo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1307, 74, N'Xã Bản Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1308, 74, N'Xã Liên Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1309, 75, N'Thị trấn Khánh Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1310, 75, N'Xã Võ Lao')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1311, 75, N'Xã Sơn Thuỷ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1312, 75, N'Xã Nậm Mả')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1313, 75, N'Xã Tân Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1314, 75, N'Xã Nậm Rạng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1315, 75, N'Xã Nậm Chầy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1316, 75, N'Xã Tân An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1317, 75, N'Xã Khánh Yên Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1318, 75, N'Xã Nậm Xé')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1319, 75, N'Xã Dần Thàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1320, 75, N'Xã Chiềng Ken')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1321, 75, N'Xã Làng Giàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1322, 75, N'Xã Hoà Mạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1323, 75, N'Xã Khánh Yên Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1324, 75, N'Xã Khánh Yên Hạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1325, 75, N'Xã Dương Quỳ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1326, 75, N'Xã Nậm Tha')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1327, 75, N'Xã Minh Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1328, 75, N'Xã Thẩm Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1329, 75, N'Xã Liêm Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1330, 75, N'Xã Nậm Xây')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1331, 76, N'Phường Noong Bua')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1332, 76, N'Phường Him Lam')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1333, 76, N'Phường Thanh Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1334, 76, N'Phường Tân Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1335, 76, N'Phường Mường Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1336, 76, N'Phường Nam Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1337, 76, N'Phường Thanh Trường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1338, 76, N'Xã Thanh Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1339, 76, N'Xã Nà Tấu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1340, 76, N'Xã Nà Nhạn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1341, 76, N'Xã Mường Phăng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1342, 76, N'Xã Pá Khoang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1343, 77, N'Phường Sông Đà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1344, 77, N'Phường Na Lay')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1345, 77, N'Xã Lay Nưa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1346, 78, N'Xã Sín Thầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1347, 78, N'Xã Sen Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1348, 78, N'Xã Chung Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1349, 78, N'Xã Leng Su Sìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1350, 78, N'Xã Pá Mỳ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1351, 78, N'Xã Mường Nhé')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1352, 78, N'Xã Nậm Vì')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1353, 78, N'Xã Nậm Kè')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1354, 78, N'Xã Mường Toong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1355, 78, N'Xã Quảng Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1356, 78, N'Xã Huổi Lếnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1357, 79, N'Thị Trấn Mường Chà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1358, 79, N'Xã Xá Tổng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1359, 79, N'Xã Mường Tùng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1360, 79, N'Xã Hừa Ngài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1361, 79, N'Xã Huổi Mí')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1362, 79, N'Xã Pa Ham')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1363, 79, N'Xã Nậm Nèn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1364, 79, N'Xã Huổi Lèng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1365, 79, N'Xã Sa Lông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1366, 79, N'Xã Ma Thì Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1367, 79, N'Xã Na Sang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1368, 79, N'Xã Mường Mươn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1369, 80, N'Thị trấn Tủa Chùa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1370, 80, N'Xã Huổi Só')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1371, 80, N'Xã Xín Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1372, 80, N'Xã Tả Sìn Thàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1373, 80, N'Xã Lao Xả Phình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1374, 80, N'Xã Tả Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1375, 80, N'Xã Tủa Thàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1376, 80, N'Xã Trung Thu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1377, 80, N'Xã Sính Phình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1378, 80, N'Xã Sáng Nhè')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1379, 80, N'Xã Mường Đun')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1380, 80, N'Xã Mường Báng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1381, 81, N'Thị trấn Tuần Giáo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1382, 81, N'Xã Phình Sáng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1383, 81, N'Xã Rạng Đông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1384, 81, N'Xã Mùn Chung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1385, 81, N'Xã Nà Tòng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1386, 81, N'Xã Ta Ma')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1387, 81, N'Xã Mường Mùn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1388, 81, N'Xã Pú Xi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1389, 81, N'Xã Pú Nhung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1390, 81, N'Xã Quài Nưa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1391, 81, N'Xã Mường Thín')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1392, 81, N'Xã Tỏa Tình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1393, 81, N'Xã Nà Sáy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1394, 81, N'Xã Mường Khong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1395, 81, N'Xã Quài Cang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1396, 81, N'Xã Quài Tở')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1397, 81, N'Xã Chiềng Sinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1398, 81, N'Xã Chiềng Đông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1399, 81, N'Xã Tênh Phông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1400, 82, N'Xã Mường Pồn')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1401, 82, N'Xã Thanh Nưa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1402, 82, N'Xã Hua Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1403, 82, N'Xã Thanh Luông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1404, 82, N'Xã Thanh Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1405, 82, N'Xã Thanh Xương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1406, 82, N'Xã Thanh Chăn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1407, 82, N'Xã Pa Thơm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1408, 82, N'Xã Thanh An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1409, 82, N'Xã Thanh Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1410, 82, N'Xã Noong Luống')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1411, 82, N'Xã Noọng Hẹt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1412, 82, N'Xã Sam Mứn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1413, 82, N'Xã Pom Lót')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1414, 82, N'Xã Núa Ngam')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1415, 82, N'Xã Hẹ Muông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1416, 82, N'Xã Na Ư')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1417, 82, N'Xã Mường Nhà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1418, 82, N'Xã Na Tông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1419, 82, N'Xã Mường Lói')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1420, 82, N'Xã Phu Luông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1421, 83, N'Thị trấn Điện Biên Đông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1422, 83, N'Xã Na Son')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1423, 83, N'Xã Phì Nhừ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1424, 83, N'Xã Chiềng Sơ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1425, 83, N'Xã Mường Luân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1426, 83, N'Xã Pú Nhi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1427, 83, N'Xã Nong U')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1428, 83, N'Xã Xa Dung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1429, 83, N'Xã Keo Lôm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1430, 83, N'Xã Luân Giới')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1431, 83, N'Xã Phình Giàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1432, 83, N'Xã Pú Hồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1433, 83, N'Xã Tìa Dình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1434, 83, N'Xã Háng Lìa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1435, 84, N'Thị trấn Mường Ảng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1436, 84, N'Xã Mường Đăng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1437, 84, N'Xã Ngối Cáy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1438, 84, N'Xã Ẳng Tở')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1439, 84, N'Xã Búng Lao')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1440, 84, N'Xã Xuân Lao')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1441, 84, N'Xã Ẳng Nưa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1442, 84, N'Xã Ẳng Cang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1443, 84, N'Xã Nặm Lịch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1444, 84, N'Xã Mường Lạn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1445, 85, N'Xã Nậm Tin')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1446, 85, N'Xã Pa Tần')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1447, 85, N'Xã Chà Cang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1448, 85, N'Xã Na Cô Sa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1449, 85, N'Xã Nà Khoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1450, 85, N'Xã Nà Hỳ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1451, 85, N'Xã Nà Bủng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1452, 85, N'Xã Nậm Nhừ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1453, 85, N'Xã Nậm Chua')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1454, 85, N'Xã Nậm Khăn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1455, 85, N'Xã Chà Tở')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1456, 85, N'Xã Vàng Đán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1457, 85, N'Xã Chà Nưa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1458, 85, N'Xã Phìn Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1459, 85, N'Xã Si Pa Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1460, 86, N'Phường Quyết Thắng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1461, 86, N'Phường Tân Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1462, 86, N'Phường Quyết Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1463, 86, N'Phường Đoàn Kết')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1464, 86, N'Xã Sùng Phài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1465, 86, N'Phường Đông Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1466, 86, N'Xã San Thàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1467, 87, N'Thị trấn Tam Đường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1468, 87, N'Xã Thèn Sin')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1469, 87, N'Xã Tả Lèng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1470, 87, N'Xã Giang Ma')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1471, 87, N'Xã Hồ Thầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1472, 87, N'Xã Bình Lư')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1473, 87, N'Xã Sơn Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1474, 87, N'Xã Nùng Nàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1475, 87, N'Xã Bản Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1476, 87, N'Xã Bản Hon')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1477, 87, N'Xã Bản Bo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1478, 87, N'Xã Nà Tăm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1479, 87, N'Xã Khun Há')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1480, 88, N'Thị trấn Mường Tè')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1481, 88, N'Xã Thu Lũm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1482, 88, N'Xã Ka Lăng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1483, 88, N'Xã Tá Bạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1484, 88, N'Xã Pa ủ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1485, 88, N'Xã Mường Tè')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1486, 88, N'Xã Pa Vệ Sử')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1487, 88, N'Xã Mù Cả')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1488, 88, N'Xã Bum Tở')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1489, 88, N'Xã Nậm Khao')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1490, 88, N'Xã Tà Tổng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1491, 88, N'Xã Bum Nưa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1492, 88, N'Xã Vàng San')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1493, 88, N'Xã Kan Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1494, 89, N'Thị trấn Sìn Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1495, 89, N'Xã Chăn Nưa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1496, 89, N'Xã Pa Tần')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1497, 89, N'Xã Phìn Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1498, 89, N'Xã Hồng Thu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1499, 89, N'Xã Phăng Sô Lin')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1500, 89, N'Xã Ma Quai')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1501, 89, N'Xã Lùng Thàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1502, 89, N'Xã Tả Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1503, 89, N'Xã Sà Dề Phìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1504, 89, N'Xã Nậm Tăm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1505, 89, N'Xã Tả Ngảo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1506, 89, N'Xã Pu Sam Cáp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1507, 89, N'Xã Nậm Cha')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1508, 89, N'Xã Pa Khoá')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1509, 89, N'Xã Làng Mô')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1510, 89, N'Xã Noong Hẻo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1511, 89, N'Xã Nậm Mạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1512, 89, N'Xã Căn Co')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1513, 89, N'Xã Tủa Sín Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1514, 89, N'Xã Nậm Cuổi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1515, 89, N'Xã Nậm Hăn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1516, 90, N'Xã Lả Nhì Thàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1517, 90, N'Xã Huổi Luông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1518, 90, N'Thị trấn Phong Thổ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1519, 90, N'Xã Sì Lở Lầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1520, 90, N'Xã Mồ Sì San')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1521, 90, N'Xã Pa Vây Sử')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1522, 90, N'Xã Vàng Ma Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1523, 90, N'Xã Tông Qua Lìn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1524, 90, N'Xã Mù Sang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1525, 90, N'Xã Dào San')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1526, 90, N'Xã Ma Ly Pho')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1527, 90, N'Xã Bản Lang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1528, 90, N'Xã Hoang Thèn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1529, 90, N'Xã Khổng Lào')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1530, 90, N'Xã Nậm Xe')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1531, 90, N'Xã Mường So')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1532, 90, N'Xã Sin Suối Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1533, 91, N'Thị trấn Than Uyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1534, 91, N'Xã Phúc Than')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1535, 91, N'Xã Mường Than')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1536, 91, N'Xã Mường Mít')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1537, 91, N'Xã Pha Mu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1538, 91, N'Xã Mường Cang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1539, 91, N'Xã Hua Nà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1540, 91, N'Xã Tà Hừa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1541, 91, N'Xã Mường Kim')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1542, 91, N'Xã Tà Mung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1543, 91, N'Xã Tà Gia')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1544, 91, N'Xã Khoen On')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1545, 92, N'Thị trấn Tân Uyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1546, 92, N'Xã Mường Khoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1547, 92, N'Xã Phúc Khoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1548, 92, N'Xã Thân Thuộc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1549, 92, N'Xã Trung Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1550, 92, N'Xã Hố Mít')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1551, 92, N'Xã Nậm Cần')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1552, 92, N'Xã Nậm Sỏ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1553, 92, N'Xã Pắc Ta')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1554, 92, N'Xã Tà Mít')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1555, 93, N'Thị trấn Nậm Nhùn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1556, 93, N'Xã Hua Bun')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1557, 93, N'Xã Mường Mô')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1558, 93, N'Xã Nậm Chà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1559, 93, N'Xã Nậm Manh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1560, 93, N'Xã Nậm Hàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1561, 93, N'Xã Lê Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1562, 93, N'Xã Pú Đao')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1563, 93, N'Xã Nậm Pì')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1564, 93, N'Xã Nậm Ban')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1565, 93, N'Xã Trung Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1566, 94, N'Phường Chiềng Lề')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1567, 94, N'Phường Tô Hiệu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1568, 94, N'Phường Quyết Thắng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1569, 94, N'Phường Quyết Tâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1570, 94, N'Xã Chiềng Cọ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1571, 94, N'Xã Chiềng Đen')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1572, 94, N'Xã Chiềng Xôm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1573, 94, N'Phường Chiềng An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1574, 94, N'Phường Chiềng Cơi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1575, 94, N'Xã Chiềng Ngần')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1576, 94, N'Xã Hua La')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1577, 94, N'Phường Chiềng Sinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1578, 95, N'Xã Mường Chiên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1579, 95, N'Xã Cà Nàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1580, 95, N'Xã Chiềng Khay')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1581, 95, N'Xã Mường Giôn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1582, 95, N'Xã Pá Ma Pha Khinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1583, 95, N'Xã Chiềng Ơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1584, 95, N'Xã Mường Giàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1585, 95, N'Xã Chiềng Bằng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1586, 95, N'Xã Mường Sại')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1587, 95, N'Xã Nậm ét')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1588, 95, N'Xã Chiềng Khoang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1589, 96, N'Thị trấn Thuận Châu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1590, 96, N'Xã Phổng Lái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1591, 96, N'Xã Mường é')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1592, 96, N'Xã Chiềng Pha')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1593, 96, N'Xã Chiềng La')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1594, 96, N'Xã Chiềng Ngàm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1595, 96, N'Xã Liệp Tè')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1596, 96, N'Xã é Tòng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1597, 96, N'Xã Phổng Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1598, 96, N'Xã Phổng Lăng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1599, 96, N'Xã Chiềng Ly')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1600, 96, N'Xã Noong Lay')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1601, 96, N'Xã Mường Khiêng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1602, 96, N'Xã Mường Bám')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1603, 96, N'Xã Long Hẹ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1604, 96, N'Xã Chiềng Bôm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1605, 96, N'Xã Thôm Mòn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1606, 96, N'Xã Tông Lạnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1607, 96, N'Xã Tông Cọ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1608, 96, N'Xã Bó Mười')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1609, 96, N'Xã Co Mạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1610, 96, N'Xã Púng Tra')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1611, 96, N'Xã Chiềng Pấc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1612, 96, N'Xã Nậm Lầu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1613, 96, N'Xã Bon Phặng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1614, 96, N'Xã Co Tòng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1615, 96, N'Xã Muổi Nọi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1616, 96, N'Xã Pá Lông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1617, 96, N'Xã Bản Lầm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1618, 97, N'Thị trấn Ít Ong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1619, 97, N'Xã Nậm Giôn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1620, 97, N'Xã Chiềng Lao')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1621, 97, N'Xã Hua Trai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1622, 97, N'Xã Ngọc Chiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1623, 97, N'Xã Mường Trai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1624, 97, N'Xã Nậm Păm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1625, 97, N'Xã Chiềng Muôn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1626, 97, N'Xã Chiềng Ân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1627, 97, N'Xã Pi Toong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1628, 97, N'Xã Chiềng Công')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1629, 97, N'Xã Tạ Bú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1630, 97, N'Xã Chiềng San')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1631, 97, N'Xã Mường Bú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1632, 97, N'Xã Chiềng Hoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1633, 97, N'Xã Mường Chùm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1634, 98, N'Thị trấn Bắc Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1635, 98, N'Xã Phiêng Ban')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1636, 98, N'Xã Hang Chú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1637, 98, N'Xã Xím Vàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1638, 98, N'Xã Tà Xùa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1639, 98, N'Xã Háng Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1640, 98, N'Xã Pắc Ngà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1641, 98, N'Xã Làng Chếu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1642, 98, N'Xã Chim Vàn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1643, 98, N'Xã Mường Khoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1644, 98, N'Xã Song Pe')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1645, 98, N'Xã Hồng Ngài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1646, 98, N'Xã Tạ Khoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1647, 98, N'Xã Hua Nhàn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1648, 98, N'Xã Phiêng Côn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1649, 98, N'Xã Chiềng Sại')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1650, 99, N'Thị trấn Phù Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1651, 99, N'Xã Suối Tọ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1652, 99, N'Xã Mường Thải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1653, 99, N'Xã Mường Cơi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1654, 99, N'Xã Quang Huy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1655, 99, N'Xã Huy Bắc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1656, 99, N'Xã Huy Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1657, 99, N'Xã Tân Lang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1658, 99, N'Xã Gia Phù')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1659, 99, N'Xã Tường Phù')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1660, 99, N'Xã Huy Hạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1661, 99, N'Xã Huy Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1662, 99, N'Xã Mường Lang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1663, 99, N'Xã Suối Bau')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1664, 99, N'Xã Huy Tường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1665, 99, N'Xã Mường Do')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1666, 99, N'Xã Sập Xa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1667, 99, N'Xã Tường Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1668, 99, N'Xã Tường Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1669, 99, N'Xã Tường Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1670, 99, N'Xã Tường Hạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1671, 99, N'Xã Kim Bon')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1672, 99, N'Xã Mường Bang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1673, 99, N'Xã Đá Đỏ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1674, 99, N'Xã Tân Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1675, 99, N'Xã Nam Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1676, 99, N'Xã Bắc Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1677, 100, N'Thị trấn Mộc Châu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1678, 100, N'Thị trấn NT Mộc Châu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1679, 100, N'Xã Chiềng Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1680, 100, N'Xã Tân Hợp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1681, 100, N'Xã Qui Hướng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1682, 100, N'Xã Tân Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1683, 100, N'Xã Nà Mường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1684, 100, N'Xã Tà Lai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1685, 100, N'Xã Chiềng Hắc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1686, 100, N'Xã Hua Păng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1687, 100, N'Xã Chiềng Khừa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1688, 100, N'Xã Mường Sang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1689, 100, N'Xã Đông Sang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1690, 100, N'Xã Phiêng Luông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1691, 100, N'Xã Lóng Sập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1692, 101, N'Thị trấn Yên Châu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1693, 101, N'Xã Chiềng Đông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1694, 101, N'Xã Sập Vạt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1695, 101, N'Xã Chiềng Sàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1696, 101, N'Xã Chiềng Pằn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1697, 101, N'Xã Viêng Lán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1698, 101, N'Xã Chiềng Hặc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1699, 101, N'Xã Mường Lựm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1700, 101, N'Xã Chiềng On')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1701, 101, N'Xã Yên Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1702, 101, N'Xã Chiềng Khoi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1703, 101, N'Xã Tú Nang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1704, 101, N'Xã Lóng Phiêng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1705, 101, N'Xã Phiêng Khoài')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1706, 101, N'Xã Chiềng Tương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1707, 102, N'Thị trấn Hát Lót')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1708, 102, N'Xã Chiềng Sung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1709, 102, N'Xã Mường Bằng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1710, 102, N'Xã Chiềng Chăn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1711, 102, N'Xã Mương Chanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1712, 102, N'Xã Chiềng Ban')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1713, 102, N'Xã Chiềng Mung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1714, 102, N'Xã Mường Bon')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1715, 102, N'Xã Chiềng Chung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1716, 102, N'Xã Chiềng Mai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1717, 102, N'Xã Hát Lót')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1718, 102, N'Xã Nà Pó')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1719, 102, N'Xã Cò  Nòi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1720, 102, N'Xã Chiềng Nơi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1721, 102, N'Xã Phiêng Cằm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1722, 102, N'Xã Chiềng Dong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1723, 102, N'Xã Chiềng Kheo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1724, 102, N'Xã Chiềng Ve')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1725, 102, N'Xã Chiềng Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1726, 102, N'Xã Phiêng Pằn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1727, 102, N'Xã Nà Ơt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1728, 102, N'Xã Tà Hộc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1729, 103, N'Thị trấn Sông Mã')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1730, 103, N'Xã Bó Sinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1731, 103, N'Xã Pú Pẩu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1732, 103, N'Xã Chiềng Phung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1733, 103, N'Xã Chiềng En')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1734, 103, N'Xã Mường Lầm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1735, 103, N'Xã Nậm Ty')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1736, 103, N'Xã Đứa Mòn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1737, 103, N'Xã Yên Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1738, 103, N'Xã Chiềng Sơ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1739, 103, N'Xã Nà Nghịu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1740, 103, N'Xã Nậm Mằn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1741, 103, N'Xã Chiềng Khoong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1742, 103, N'Xã Chiềng Cang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1743, 103, N'Xã Huổi Một')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1744, 103, N'Xã Mường Sai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1745, 103, N'Xã Mường Cai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1746, 103, N'Xã Mường Hung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1747, 103, N'Xã Chiềng Khương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1748, 104, N'Xã Sam Kha')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1749, 104, N'Xã Púng Bánh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1750, 104, N'Xã Sốp Cộp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1751, 104, N'Xã Dồm Cang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1752, 104, N'Xã Nậm Lạnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1753, 104, N'Xã Mường Lèo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1754, 104, N'Xã Mường Và')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1755, 104, N'Xã Mường Lạn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1756, 105, N'Xã Suối Bàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1757, 105, N'Xã Song Khủa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1758, 105, N'Xã Liên Hoà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1759, 105, N'Xã Tô Múa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1760, 105, N'Xã Mường Tè')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1761, 105, N'Xã Chiềng Khoa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1762, 105, N'Xã Mường Men')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1763, 105, N'Xã Quang Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1764, 105, N'Xã Vân Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1765, 105, N'Xã Lóng Luông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1766, 105, N'Xã Chiềng Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1767, 105, N'Xã Chiềng Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1768, 105, N'Xã Xuân Nha')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1769, 105, N'Xã Tân Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1770, 106, N'Phường Yên Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1771, 106, N'Phường Yên Ninh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1772, 106, N'Phường Minh Tân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1773, 106, N'Phường Nguyễn Thái Học')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1774, 106, N'Phường Đồng Tâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1775, 106, N'Phường Nguyễn Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1776, 106, N'Phường Hồng Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1777, 106, N'Xã Minh Bảo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1778, 106, N'Phường Nam Cường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1779, 106, N'Xã Tuy Lộc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1780, 106, N'Xã Tân Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1781, 106, N'Xã Âu Lâu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1782, 106, N'Xã Giới Phiên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1783, 106, N'Phường Hợp Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1784, 106, N'Xã Văn Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1785, 107, N'Phường Pú Trạng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1786, 107, N'Phường Trung Tâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1787, 107, N'Phường Tân An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1788, 107, N'Phường Cầu Thia')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1789, 107, N'Xã Nghĩa Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1790, 107, N'Xã Nghĩa Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1791, 107, N'Xã Nghĩa An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1792, 107, N'Xã Nghĩa Lộ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1793, 107, N'Xã Sơn A')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1794, 107, N'Xã Phù Nham')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1795, 107, N'Xã Thanh Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1796, 107, N'Xã Hạnh Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1797, 107, N'Xã Phúc Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1798, 107, N'Xã Thạch Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1799, 108, N'Thị trấn Yên Thế')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1800, 108, N'Xã Tân Phượng')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1801, 108, N'Xã Lâm Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1802, 108, N'Xã Khánh Thiện')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1803, 108, N'Xã Minh Chuẩn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1804, 108, N'Xã Mai Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1805, 108, N'Xã Khai Trung')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1806, 108, N'Xã Mường Lai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1807, 108, N'Xã An Lạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1808, 108, N'Xã Minh Xuân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1809, 108, N'Xã Tô Mậu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1810, 108, N'Xã Tân Lĩnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1811, 108, N'Xã Yên Thắng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1812, 108, N'Xã Khánh Hoà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1813, 108, N'Xã Vĩnh Lạc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1814, 108, N'Xã Liễu Đô')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1815, 108, N'Xã Động Quan')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1816, 108, N'Xã Tân Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1817, 108, N'Xã Minh Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1818, 108, N'Xã Trúc Lâu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1819, 108, N'Xã Phúc Lợi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1820, 108, N'Xã Phan Thanh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1821, 108, N'Xã An Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1822, 108, N'Xã Trung Tâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1823, 109, N'Thị trấn Mậu A')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1824, 109, N'Xã Lang Thíp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1825, 109, N'Xã Lâm Giang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1826, 109, N'Xã Châu Quế Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1827, 109, N'Xã Châu Quế Hạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1828, 109, N'Xã An Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1829, 109, N'Xã Quang Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1830, 109, N'Xã Đông An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1831, 109, N'Xã Đông Cuông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1832, 109, N'Xã Phong Dụ Hạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1833, 109, N'Xã Mậu Đông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1834, 109, N'Xã Ngòi A')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1835, 109, N'Xã Xuân Tầm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1836, 109, N'Xã Tân Hợp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1837, 109, N'Xã An Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1838, 109, N'Xã Yên Thái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1839, 109, N'Xã Phong Dụ Thượng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1840, 109, N'Xã Yên Hợp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1841, 109, N'Xã Đại Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1842, 109, N'Xã Đại Phác')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1843, 109, N'Xã Yên Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1844, 109, N'Xã Xuân Ái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1845, 109, N'Xã Viễn Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1846, 109, N'Xã Mỏ Vàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1847, 109, N'Xã Nà Hẩu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1848, 110, N'Thị trấn Mù Căng Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1849, 110, N'Xã Hồ Bốn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1850, 110, N'Xã Nậm Có')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1851, 110, N'Xã Khao Mang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1852, 110, N'Xã Mồ Dề')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1853, 110, N'Xã Chế Cu Nha')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1854, 110, N'Xã Lao Chải')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1855, 110, N'Xã Kim Nọi')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1856, 110, N'Xã Cao Phạ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1857, 110, N'Xã La Pán Tẩn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1858, 110, N'Xã Dế Su Phình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1859, 110, N'Xã Chế Tạo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1860, 110, N'Xã Púng Luông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1861, 110, N'Xã Nậm Khắt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1862, 111, N'Thị trấn Cổ Phúc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1863, 111, N'Xã Tân Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1864, 111, N'Xã Báo Đáp')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1865, 111, N'Xã Đào Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1866, 111, N'Xã Việt Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1867, 111, N'Xã Hòa Cuông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1868, 111, N'Xã Minh Quán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1869, 111, N'Xã Quy Mông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1870, 111, N'Xã Cường Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1871, 111, N'Xã Kiên Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1872, 111, N'Xã Nga Quán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1873, 111, N'Xã Y Can')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1874, 111, N'Xã Lương Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1875, 111, N'Xã Bảo Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1876, 111, N'Xã Việt Cường')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1877, 111, N'Xã Hồng Ca')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1878, 111, N'Xã Hưng Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1879, 111, N'Xã Hưng Khánh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1880, 111, N'Xã Việt Hồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1881, 111, N'Xã Vân Hội')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1882, 112, N'Thị trấn Trạm Tấu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1883, 112, N'Xã Túc Đán')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1884, 112, N'Xã Pá Lau')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1885, 112, N'Xã Xà Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1886, 112, N'Xã Phình Hồ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1887, 112, N'Xã Trạm Tấu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1888, 112, N'Xã Tà Si Láng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1889, 112, N'Xã Pá Hu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1890, 112, N'Xã Làng Nhì')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1891, 112, N'Xã Bản Công')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1892, 112, N'Xã Bản Mù')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1893, 112, N'Xã Hát Lìu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1894, 113, N'Thị trấn NT Liên Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1895, 113, N'Thị trấn NT Trần Phú')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1896, 113, N'Xã Tú Lệ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1897, 113, N'Xã Nậm Búng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1898, 113, N'Xã Gia Hội')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1899, 113, N'Xã Sùng Đô')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1900, 113, N'Xã Nậm Mười')
GO
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1901, 113, N'Xã An Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1902, 113, N'Xã Nậm Lành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1903, 113, N'Xã Sơn Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1904, 113, N'Xã Suối Quyền')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1905, 113, N'Xã Suối Giàng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1906, 113, N'Xã Nghĩa Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1907, 113, N'Xã Suối Bu')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1908, 113, N'Thị trấn Sơn Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1909, 113, N'Xã Đại Lịch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1910, 113, N'Xã Đồng Khê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1911, 113, N'Xã Cát Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1912, 113, N'Xã Tân Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1913, 113, N'Xã Chấn Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1914, 113, N'Xã Bình Thuận')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1915, 113, N'Xã Thượng Bằng La')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1916, 113, N'Xã Minh An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1917, 113, N'Xã Nghĩa Tâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1918, 114, N'Thị trấn Yên Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1919, 114, N'Thị trấn Thác Bà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1920, 114, N'Xã Xuân Long')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1921, 114, N'Xã Cảm Nhân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1922, 114, N'Xã Ngọc Chấn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1923, 114, N'Xã Tân Nguyên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1924, 114, N'Xã Phúc Ninh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1925, 114, N'Xã Bảo Ái')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1926, 114, N'Xã Mỹ Gia')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1927, 114, N'Xã Xuân Lai')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1928, 114, N'Xã Mông Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1929, 114, N'Xã Cảm Ân')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1930, 114, N'Xã Yên Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1931, 114, N'Xã Tân Hương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1932, 114, N'Xã Phúc An')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1933, 114, N'Xã Bạch Hà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1934, 114, N'Xã Vũ Linh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1935, 114, N'Xã Đại Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1936, 114, N'Xã Vĩnh Kiên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1937, 114, N'Xã Yên Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1938, 114, N'Xã Thịnh Hưng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1939, 114, N'Xã Hán Đà')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1940, 114, N'Xã Phú Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1941, 114, N'Xã Đại Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1942, 115, N'Phường Thái Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1943, 115, N'Phường Tân Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1944, 115, N'Phường Thịnh Lang')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1945, 115, N'Phường Hữu Nghị')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1946, 115, N'Phường Tân Thịnh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1947, 115, N'Phường Đồng Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1948, 115, N'Phường Phương Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1949, 115, N'Xã Yên Mông')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1950, 115, N'Phường Quỳnh Lâm')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1951, 115, N'Phường Dân Chủ')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1952, 115, N'Xã Hòa Bình')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1953, 115, N'Phường Thống Nhất')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1954, 115, N'Phường Kỳ Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1955, 115, N'Xã Thịnh Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1956, 115, N'Xã Hợp Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1957, 115, N'Xã Quang Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1958, 115, N'Xã Mông Hóa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1959, 115, N'Phường Trung Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1960, 115, N'Xã Độc Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1961, 116, N'Thị trấn Đà Bắc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1962, 116, N'Xã Nánh Nghê')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1963, 116, N'Xã Giáp Đắt')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1964, 116, N'Xã Mường Chiềng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1965, 116, N'Xã Tân Pheo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1966, 116, N'Xã Đồng Chum')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1967, 116, N'Xã Tân Minh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1968, 116, N'Xã Đoàn Kết')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1969, 116, N'Xã Đồng Ruộng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1970, 116, N'Xã Tú Lý')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1971, 116, N'Xã Trung Thành')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1972, 116, N'Xã Yên Hòa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1973, 116, N'Xã Cao Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1974, 116, N'Xã Toàn Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1975, 116, N'Xã Hiền Lương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1976, 116, N'Xã Tiền Phong')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1977, 116, N'Xã Vầy Nưa')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1978, 117, N'Thị trấn Lương Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1979, 117, N'Xã Lâm Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1980, 117, N'Xã Hòa Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1981, 117, N'Xã Tân Vinh')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1982, 117, N'Xã Nhuận Trạch')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1983, 117, N'Xã Cao Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1984, 117, N'Xã Cư Yên')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1985, 117, N'Xã Liên Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1986, 117, N'Xã Cao Dương')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1987, 117, N'Xã Thanh Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1988, 117, N'Xã Thanh Cao')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1989, 118, N'Thị trấn Bo')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1990, 118, N'Xã Đú Sáng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1991, 118, N'Xã Hùng Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1992, 118, N'Xã Bình Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1993, 118, N'Xã Tú Sơn')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1994, 118, N'Xã Vĩnh Tiến')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1995, 118, N'Xã Đông Bắc')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1996, 118, N'Xã Xuân Thủy')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1997, 118, N'Xã Vĩnh Đồng')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1998, 118, N'Xã Kim Lập')
INSERT [dbo].[wards] ([wards_id], [district_id], [name]) VALUES (1999, 118, N'Xã Hợp Tiến')
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__User__status__35BCFE0A]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_balance]  DEFAULT ((0)) FOR [balance]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF_Bill_customerID]  DEFAULT (NULL) FOR [accountID]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__status__398D8EEE]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF_Bill_isGetPoint]  DEFAULT ((0)) FOR [isGetPoint]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF_Bill_isUsedPoint]  DEFAULT ((0)) FOR [isUsedPoint]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__status__24927208]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF__Comment__status__412EB0B6]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF__Producer__status__276EDEB3]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__status__2A4B4B5E]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_sold]  DEFAULT ((0)) FOR [sold]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__priorit__2B3F6F97]  DEFAULT ((0)) FOR [priority]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK__Bill__customerID__38996AB5] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK__Bill__customerID__38996AB5]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_voucher] FOREIGN KEY([voucherID])
REFERENCES [dbo].[voucher] ([ID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_voucher]
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK__BillDetai__billI__3C69FB99] FOREIGN KEY([billID])
REFERENCES [dbo].[Bill] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK__BillDetai__billI__3C69FB99]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Category]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[district]  WITH CHECK ADD  CONSTRAINT [FK_district_province] FOREIGN KEY([province_id])
REFERENCES [dbo].[province] ([province_id])
GO
ALTER TABLE [dbo].[district] CHECK CONSTRAINT [FK_district_province]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK__Comment__userID__3F466844] FOREIGN KEY([userID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK__Comment__userID__3F466844]
GO
ALTER TABLE [dbo].[ImgDescription]  WITH CHECK ADD  CONSTRAINT [FK__ImgDescri__produ__300424B4] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImgDescription] CHECK CONSTRAINT [FK__ImgDescri__produ__300424B4]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__2C3393D0] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__2C3393D0]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__produce__2D27B809] FOREIGN KEY([producerID])
REFERENCES [dbo].[Producer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__produce__2D27B809]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([brandID])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[used]  WITH CHECK ADD  CONSTRAINT [FK_used_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[used] CHECK CONSTRAINT [FK_used_Account]
GO
ALTER TABLE [dbo].[used]  WITH CHECK ADD  CONSTRAINT [FK_used_voucher] FOREIGN KEY([voucherID])
REFERENCES [dbo].[voucher] ([ID])
GO
ALTER TABLE [dbo].[used] CHECK CONSTRAINT [FK_used_voucher]
GO
ALTER TABLE [dbo].[wards]  WITH CHECK ADD  CONSTRAINT [FK_wards_district] FOREIGN KEY([district_id])
REFERENCES [dbo].[district] ([district_id])
GO
ALTER TABLE [dbo].[wards] CHECK CONSTRAINT [FK_wards_district]
GO
