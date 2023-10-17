USE [QLPhongTro]
GO
/****** Object:  Table [dbo].[DangBai]    Script Date: 10/10/2023 2:18:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangBai](
	[IDPost] [int] NOT NULL,
	[title] [nvarchar](max) NULL,
	[star] [nvarchar](max) NULL,
	[IDUser] [int] NULL,
	[IDIMG] [nchar](10) NULL,
	[IDTiemKiem] [nchar](10) NULL,
	[address] [nvarchar](50) NULL,
	[IDThongTin] [int] NULL,
 CONSTRAINT [PK_DangBai] PRIMARY KEY CLUSTERED 
(
	[IDPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[IDDangNhap] [nchar](10) NOT NULL,
	[IDUsers] [nchar](10) NOT NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[IDDangNhap] ASC,
	[IDUsers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[IDDichVu] [int] NOT NULL,
	[TenDichVu] [nvarchar](50) NULL,
	[Gia] [bigint] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[IDDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DienNuoc]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienNuoc](
	[IDDN] [nchar](10) NOT NULL,
	[IDPhong] [nchar](10) NULL,
	[GiaDien] [int] NULL,
	[GiaNuoc] [int] NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[ChiSoCuD] [int] NULL,
	[ChiSoMoiD] [int] NULL,
	[TienDien] [bigint] NULL,
	[ChiSoCuN] [int] NULL,
	[ChiSoMoiN] [int] NULL,
	[TienNuoc] [bigint] NULL,
 CONSTRAINT [PK_DienNuoc] PRIMARY KEY CLUSTERED 
(
	[IDDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GhiNho]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GhiNho](
	[ID] [nchar](10) NULL,
	[Pass] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[IDIMG] [nchar](10) NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[IDIMG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhach] [nchar](10) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[AnhNhanDien] [image] NULL,
	[NgaySinh] [date] NULL,
	[CMND] [nchar](10) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[NgheNghiep] [nvarchar](50) NULL,
	[MaPhong] [nchar](10) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[IDKhuVuc] [nchar](10) NOT NULL,
	[TenKhuVuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[IDKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[IDLoaiPhong] [nchar](10) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NULL,
	[DienTichPhong] [float] NULL,
	[DonGia] [float] NULL,
	[SoLuong] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[IDLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuThu]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThu](
	[IDPhieuThu] [nchar](10) NOT NULL,
	[IDPhong] [nchar](10) NULL,
	[IDDichVu] [int] NULL,
	[IDDN] [nchar](10) NULL,
	[NgayLap] [datetime] NULL,
	[NgayThu] [datetime] NULL,
	[TienNha] [bigint] NULL,
	[TienDien] [bigint] NULL,
	[TienNuoc] [bigint] NULL,
	[TienDV] [bigint] NULL,
	[TongTien] [bigint] NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuThu] PRIMARY KEY CLUSTERED 
(
	[IDPhieuThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[IDPhong] [nchar](10) NOT NULL,
	[IDLoaiPhong] [nchar](10) NOT NULL,
	[IDKhuVuc] [nchar](10) NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
	[Day] [datetime] NOT NULL,
	[TrangThai] [nvarchar](10) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[IDPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinBai]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinBai](
	[IDThongTin] [int] NOT NULL,
	[LoaiPhong] [nvarchar](max) NULL,
	[Gia] [int] NULL,
	[DienTich] [int] NULL,
	[ThoiGian] [datetime] NULL,
	[hastag] [nchar](10) NULL,
 CONSTRAINT [PK_ThongTinBai] PRIMARY KEY CLUSTERED 
(
	[IDThongTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinDangKyPhong]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinDangKyPhong](
	[IdDK] [int] NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[CMND] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](max) NULL,
	[NgheNghiep] [nvarchar](50) NULL,
	[IDKhuVuc] [nchar](10) NULL,
	[IDLoaiPhong] [nchar](10) NULL,
 CONSTRAINT [PK_DangKyPhong] PRIMARY KEY CLUSTERED 
(
	[IdDK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuePhong]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuePhong](
	[IDThue] [nchar](10) NOT NULL,
	[IDKhach] [nchar](10) NOT NULL,
	[IDPhong] [nchar](10) NOT NULL,
	[NgayThue] [datetime] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThongTinThuePhong_1] PRIMARY KEY CLUSTERED 
(
	[IDThue] ASC,
	[IDKhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TraPhong]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraPhong](
	[IDTraPhong] [int] NOT NULL,
	[IDPhong] [nchar](10) NULL,
	[IDKhach] [nchar](10) NULL,
	[NgayThue] [datetime] NULL,
	[NgayTraPhong] [datetime] NULL,
 CONSTRAINT [PK_TraPhong] PRIMARY KEY CLUSTERED 
(
	[IDTraPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IDUser] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[PassWord] [nvarchar](max) NULL,
	[Phone] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DangBai]  WITH CHECK ADD  CONSTRAINT [FK_DangBai_Image] FOREIGN KEY([IDIMG])
REFERENCES [dbo].[Image] ([IDIMG])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DangBai] CHECK CONSTRAINT [FK_DangBai_Image]
GO
ALTER TABLE [dbo].[DangBai]  WITH CHECK ADD  CONSTRAINT [FK_DangBai_ThongTinBai] FOREIGN KEY([IDThongTin])
REFERENCES [dbo].[ThongTinBai] ([IDThongTin])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DangBai] CHECK CONSTRAINT [FK_DangBai_ThongTinBai]
GO
ALTER TABLE [dbo].[DangBai]  WITH CHECK ADD  CONSTRAINT [FK_DangBai_User] FOREIGN KEY([IDUser])
REFERENCES [dbo].[User] ([IDUser])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DangBai] CHECK CONSTRAINT [FK_DangBai_User]
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThu_DichVu] FOREIGN KEY([IDDichVu])
REFERENCES [dbo].[DichVu] ([IDDichVu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuThu] CHECK CONSTRAINT [FK_PhieuThu_DichVu]
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThu_DienNuoc] FOREIGN KEY([IDDN])
REFERENCES [dbo].[DienNuoc] ([IDDN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuThu] CHECK CONSTRAINT [FK_PhieuThu_DienNuoc]
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThu_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuThu] CHECK CONSTRAINT [FK_PhieuThu_Phong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_KhuVuc] FOREIGN KEY([IDKhuVuc])
REFERENCES [dbo].[KhuVuc] ([IDKhuVuc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_KhuVuc]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([IDLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([IDLoaiPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[ThongTinDangKyPhong]  WITH CHECK ADD  CONSTRAINT [FK_DangKyPhong_KhuVuc] FOREIGN KEY([IDKhuVuc])
REFERENCES [dbo].[KhuVuc] ([IDKhuVuc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThongTinDangKyPhong] CHECK CONSTRAINT [FK_DangKyPhong_KhuVuc]
GO
ALTER TABLE [dbo].[ThongTinDangKyPhong]  WITH CHECK ADD  CONSTRAINT [FK_DangKyPhong_LoaiPhong] FOREIGN KEY([IDLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([IDLoaiPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThongTinDangKyPhong] CHECK CONSTRAINT [FK_DangKyPhong_LoaiPhong]
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThuePhong_KhachHang] FOREIGN KEY([IDKhach])
REFERENCES [dbo].[KhachHang] ([IDKhach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThuePhong] CHECK CONSTRAINT [FK_ThuePhong_KhachHang]
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThuePhong_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThuePhong] CHECK CONSTRAINT [FK_ThuePhong_Phong]
GO
ALTER TABLE [dbo].[TraPhong]  WITH CHECK ADD  CONSTRAINT [FK_TraPhong_KhachHang] FOREIGN KEY([IDKhach])
REFERENCES [dbo].[KhachHang] ([IDKhach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TraPhong] CHECK CONSTRAINT [FK_TraPhong_KhachHang]
GO
ALTER TABLE [dbo].[TraPhong]  WITH CHECK ADD  CONSTRAINT [FK_TraPhong_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TraPhong] CHECK CONSTRAINT [FK_TraPhong_Phong]
GO
/****** Object:  StoredProcedure [dbo].[ChangePass]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ChangePass] (@name nvarchar(50), @Pass nchar (10))
as
begin
	Update DangNhap
	Set PassWord = @Pass
	Where Name = @name
end
GO
/****** Object:  StoredProcedure [dbo].[Converdatetime]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Converdatetime]
as

SELECT CONVERT(varchar(10),k.NgayThue,103) as [Ngày sinh]
From ThuePhong k
GO
/****** Object:  StoredProcedure [dbo].[SaveP]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SaveP](@ID nchar (10), @Pass nchar (10))
as
		DELETE FROM GhiNho
		INSERT INTO GhiNho (ID, Pass) Values (@ID, @Pass)
GO
/****** Object:  StoredProcedure [dbo].[Xoa]    Script Date: 10/10/2023 2:18:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Xoa]
as
	DELETE from GhiNho
GO
USE [QLPhongTro]
GO
INSERT [dbo].[LoaiPhong] ([IDLoaiPhong], [TenLoaiPhong], [DienTichPhong], [DonGia], [SoLuong], [GhiChu]) VALUES (N'L1        ', N'Nhỏ', 10, 1000000, 20, NULL)
GO
INSERT [dbo].[LoaiPhong] ([IDLoaiPhong], [TenLoaiPhong], [DienTichPhong], [DonGia], [SoLuong], [GhiChu]) VALUES (N'L2        ', N'Vừa', 20, 1500000, 10, NULL)
GO
INSERT [dbo].[LoaiPhong] ([IDLoaiPhong], [TenLoaiPhong], [DienTichPhong], [DonGia], [SoLuong], [GhiChu]) VALUES (N'L3        ', N'Lớn', 30, 2000000, 15, NULL)
GO
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV01      ', N'Khu A')
GO
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV02      ', N'Khu B')
GO
INSERT [dbo].[KhuVuc] ([IDKhuVuc], [TenKhuVuc]) VALUES (N'KV03      ', N'Khu C')
GO
INSERT [dbo].[Phong] ([IDPhong], [IDLoaiPhong], [IDKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'P1        ', N'L1        ', N'KV02      ', N'Phòng 001', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'Đã thuê', NULL)
GO
INSERT [dbo].[Phong] ([IDPhong], [IDLoaiPhong], [IDKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'P10       ', N'L3        ', N'KV01      ', N'Phòng 005', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'Đã thuê', NULL)
GO
INSERT [dbo].[Phong] ([IDPhong], [IDLoaiPhong], [IDKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'P11       ', N'L3        ', N'KV01      ', N'Phòng 005', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'Đã thuê', NULL)
GO
INSERT [dbo].[Phong] ([IDPhong], [IDLoaiPhong], [IDKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'P2        ', N'L1        ', N'KV02      ', N'Phòng 002', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'Đã thuê', NULL)
GO
INSERT [dbo].[Phong] ([IDPhong], [IDLoaiPhong], [IDKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'P3        ', N'L2        ', N'KV02      ', N'Phòng 003', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'Đã thuê', NULL)
GO
INSERT [dbo].[Phong] ([IDPhong], [IDLoaiPhong], [IDKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'P4        ', N'L2        ', N'KV02      ', N'Phòng 004', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'Trống', NULL)
GO
INSERT [dbo].[Phong] ([IDPhong], [IDLoaiPhong], [IDKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'P5        ', N'L3        ', N'KV02      ', N'Phòng 005', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'Trống', NULL)
GO
INSERT [dbo].[Phong] ([IDPhong], [IDLoaiPhong], [IDKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'P6        ', N'L1        ', N'KV01      ', N'Phòng 001', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'Đã thuê', NULL)
GO
INSERT [dbo].[Phong] ([IDPhong], [IDLoaiPhong], [IDKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'P7        ', N'L1        ', N'KV01      ', N'Phòng 002', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'Đã thuê', NULL)
GO
INSERT [dbo].[Phong] ([IDPhong], [IDLoaiPhong], [IDKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'P8        ', N'L2        ', N'KV01      ', N'Phòng 003', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'Đã thuê', NULL)
GO
INSERT [dbo].[Phong] ([IDPhong], [IDLoaiPhong], [IDKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'P9        ', N'L2        ', N'KV01      ', N'Phòng 004', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'Trống', NULL)
GO
INSERT [dbo].[DichVu] ([IDDichVu], [TenDichVu], [Gia]) VALUES (3, N'Internet', 200000)
GO
INSERT [dbo].[DichVu] ([IDDichVu], [TenDichVu], [Gia]) VALUES (4, N'Nước Lọc', 10000)
GO
INSERT [dbo].[DichVu] ([IDDichVu], [TenDichVu], [Gia]) VALUES (5, N'Cap Quang', 25000)
GO
INSERT [dbo].[PhieuThu] ([IDPhieuThu], [IDPhong], [IDDichVu], [IDDN], [NgayLap], [NgayThu], [TienNha], [TienDien], [TienNuoc], [TienDV], [TongTien], [TrangThai]) VALUES (N'1         ', N'P1        ', 3, NULL, CAST(N'2017-05-28T00:00:00.000' AS DateTime), CAST(N'2017-05-28T00:00:00.000' AS DateTime), 1000000, 12500, 30000, NULL, 1042500, N'Đã thu')
GO
INSERT [dbo].[PhieuThu] ([IDPhieuThu], [IDPhong], [IDDichVu], [IDDN], [NgayLap], [NgayThu], [TienNha], [TienDien], [TienNuoc], [TienDV], [TongTien], [TrangThai]) VALUES (N'2         ', N'P2        ', 4, NULL, CAST(N'2017-05-28T00:00:00.000' AS DateTime), CAST(N'2017-05-28T00:00:00.000' AS DateTime), 1000000, 12500, 75000, NULL, 1087500, N'Đã thu')
GO
INSERT [dbo].[PhieuThu] ([IDPhieuThu], [IDPhong], [IDDichVu], [IDDN], [NgayLap], [NgayThu], [TienNha], [TienDien], [TienNuoc], [TienDV], [TongTien], [TrangThai]) VALUES (N'3         ', N'P3        ', 5, NULL, CAST(N'2017-05-28T00:00:00.000' AS DateTime), CAST(N'2017-05-28T00:00:00.000' AS DateTime), 2000000, 12500, 40000, NULL, 2052500, N'Đã thu')
GO
INSERT [dbo].[PhieuThu] ([IDPhieuThu], [IDPhong], [IDDichVu], [IDDN], [NgayLap], [NgayThu], [TienNha], [TienDien], [TienNuoc], [TienDV], [TongTien], [TrangThai]) VALUES (N'4         ', N'P4        ', 3, NULL, CAST(N'2017-05-28T00:00:00.000' AS DateTime), CAST(N'2017-05-28T00:00:00.000' AS DateTime), 1500000, 12500, 75000, NULL, 1587500, N'Đã thu')
GO
INSERT [dbo].[PhieuThu] ([IDPhieuThu], [IDPhong], [IDDichVu], [IDDN], [NgayLap], [NgayThu], [TienNha], [TienDien], [TienNuoc], [TienDV], [TongTien], [TrangThai]) VALUES (N'5         ', N'P5        ', 3, NULL, CAST(N'2017-05-28T00:00:00.000' AS DateTime), CAST(N'2017-05-28T00:00:00.000' AS DateTime), 1000000, 12500, 75000, NULL, 1087500, N'Đã thu')
GO
INSERT [dbo].[User] ([IDUser], [Name], [PassWord], [Phone]) VALUES (1, N'admin', N'admin', 971784954)
GO
INSERT [dbo].[User] ([IDUser], [Name], [PassWord], [Phone]) VALUES (2, N'CTRO1', N'CTR01', 345678912)
GO
INSERT [dbo].[User] ([IDUser], [Name], [PassWord], [Phone]) VALUES (3, N'CTR2', N'CTR02', 234567891)
GO
INSERT [dbo].[User] ([IDUser], [Name], [PassWord], [Phone]) VALUES (4, N'CTR3', N'CTR03', 123456789)
GO
INSERT [dbo].[KhachHang] ([IDKhach], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KH001     ', N'Hà Tuấn', N'An', N'Nam', NULL, CAST(N'1995-01-01' AS Date), N'123456789 ', N'Hà Nội', N'Công Nhân', N'P1        ', N'1')
GO
INSERT [dbo].[KhachHang] ([IDKhach], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KH002     ', N'Trần Quốc', N'Bảo', N'Nam', NULL, CAST(N'1995-01-02' AS Date), N'123456788 ', N'Hải Phòng', N'Công Nhân', N'P2        ', N'1')
GO
INSERT [dbo].[KhachHang] ([IDKhach], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KH003     ', N'Trần Quốc', N'Bảo', N'Nam', NULL, CAST(N'1996-01-01' AS Date), N'123456788 ', N'Hải Phòng', N'Công Nhân', N'P3        ', N'1')
GO
INSERT [dbo].[KhachHang] ([IDKhach], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KH004     ', N'Đinh Văn', N'Hưng', N'Nam', NULL, CAST(N'1980-02-03' AS Date), N'123456786 ', N'Huế', N'Giáo Viên', N'P4        ', N'1')
GO
INSERT [dbo].[KhachHang] ([IDKhach], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KH005     ', N'Bùi Quang', N'Minh', N'Nam', NULL, CAST(N'1990-02-15' AS Date), N'123456785 ', N'Đà Nẵng', N'Giáo Viên', N'P5        ', N'1')
GO
INSERT [dbo].[KhachHang] ([IDKhach], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KH006     ', N'Nguyễn Phương', N'Ngọc', N'Nữ', NULL, CAST(N'1991-08-15' AS Date), N'123456784 ', N'TP.HCM', N'Giáo Viên', N'P6        ', N'1')
GO
INSERT [dbo].[KhachHang] ([IDKhach], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KH007     ', N'Lê Ngọc', N'Tuyết', N'Nữ', NULL, CAST(N'1993-12-07' AS Date), N'123456783 ', N'TP.HCM', N'Nhân Viên Bán Hàng', N'P8        ', N'1')
GO
INSERT [dbo].[KhachHang] ([IDKhach], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KH008     ', N'Nguyễn Minh', N'Nhật', N'Nam', NULL, CAST(N'1997-07-09' AS Date), N'123456782 ', N'TP.HCM', N'Sinh Viên', N'P9        ', N'1')
GO
INSERT [dbo].[KhachHang] ([IDKhach], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KH009     ', N'Trần Ngọc', N'Thủy', N'Nữ', NULL, CAST(N'1997-02-08' AS Date), N'123456781 ', N'Hà Tĩnh', N'Sinh Viên', N'P7        ', N'1')
GO
INSERT [dbo].[KhachHang] ([IDKhach], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KH010     ', N'Nguyễn Huỳnh', N'Trang', N'Nữ', NULL, CAST(N'1998-12-13' AS Date), N'123456780 ', N'Vĩnh Long', N'Sinh Viên', N'P10       ', N'1')
GO
INSERT [dbo].[KhachHang] ([IDKhach], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KH011     ', N'Trần Đức', N'Huy', N'Nam', NULL, CAST(N'1995-02-02' AS Date), N'123456787 ', N'Hà Nội', N'Công Nhân', N'P1        ', N'1')
GO
INSERT [dbo].[ThuePhong] ([IDThue], [IDKhach], [IDPhong], [NgayThue], [GhiChu]) VALUES (N'0         ', N'KH002     ', N'P1        ', CAST(N'2017-05-27T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ThuePhong] ([IDThue], [IDKhach], [IDPhong], [NgayThue], [GhiChu]) VALUES (N'1         ', N'KH001     ', N'P7        ', CAST(N'2017-05-27T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ThuePhong] ([IDThue], [IDKhach], [IDPhong], [NgayThue], [GhiChu]) VALUES (N'11        ', N'KH011     ', N'P9        ', CAST(N'2017-05-27T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ThuePhong] ([IDThue], [IDKhach], [IDPhong], [NgayThue], [GhiChu]) VALUES (N'2         ', N'KH004     ', N'P5        ', CAST(N'2017-05-27T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ThuePhong] ([IDThue], [IDKhach], [IDPhong], [NgayThue], [GhiChu]) VALUES (N'3         ', N'KH003     ', N'P6        ', CAST(N'2017-05-27T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ThuePhong] ([IDThue], [IDKhach], [IDPhong], [NgayThue], [GhiChu]) VALUES (N'4         ', N'KH006     ', N'P2        ', CAST(N'2017-05-27T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ThuePhong] ([IDThue], [IDKhach], [IDPhong], [NgayThue], [GhiChu]) VALUES (N'5         ', N'KH005     ', N'P4        ', CAST(N'2017-05-27T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ThuePhong] ([IDThue], [IDKhach], [IDPhong], [NgayThue], [GhiChu]) VALUES (N'6         ', N'KH008     ', N'P8        ', CAST(N'2017-05-27T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ThuePhong] ([IDThue], [IDKhach], [IDPhong], [NgayThue], [GhiChu]) VALUES (N'7         ', N'KH007     ', N'P10       ', CAST(N'2017-05-27T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ThuePhong] ([IDThue], [IDKhach], [IDPhong], [NgayThue], [GhiChu]) VALUES (N'8         ', N'KH010     ', N'P3        ', CAST(N'2017-05-27T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[ThuePhong] ([IDThue], [IDKhach], [IDPhong], [NgayThue], [GhiChu]) VALUES (N'9         ', N'KH009     ', N'P11       ', CAST(N'2017-05-27T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[GhiNho] ([ID], [Pass]) VALUES (N'KDC       ', N'1996      ')
GO
