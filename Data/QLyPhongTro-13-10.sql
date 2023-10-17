USE [master]
GO
/****** Object:  Database [QuanLyPhongtro]    Script Date: 10/13/2023 11:19:01 PM ******/
CREATE DATABASE [QuanLyPhongtro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyPhongtro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyPhongtro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyPhongtro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyPhongtro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyPhongtro] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyPhongtro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyPhongtro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyPhongtro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyPhongtro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyPhongtro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyPhongtro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyPhongtro] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyPhongtro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyPhongtro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyPhongtro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyPhongtro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyPhongtro] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyPhongtro] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyPhongtro', N'ON'
GO
ALTER DATABASE [QuanLyPhongtro] SET QUERY_STORE = OFF
GO
USE [QuanLyPhongtro]
GO
/****** Object:  Table [dbo].[ChiSo]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiSo](
	[IDChiSo] [nchar](10) NOT NULL,
	[IDDichVu] [nchar](10) NULL,
	[IDPhong] [nchar](10) NULL,
	[IDThang] [nchar](10) NULL,
	[ChiSoCu] [int] NULL,
	[ChiSoMoi] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiSo] PRIMARY KEY CLUSTERED 
(
	[IDChiSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuTro]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuTro](
	[IDChuTro] [nchar](10) NULL,
	[TenChuTro] [nvarchar](50) NULL,
	[IDDangNhap] [nchar](10) NULL,
	[SDT] [int] NULL,
	[DiaChi] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHopDong]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHopDong](
	[IDThue] [nchar](10) NOT NULL,
	[IDPhong] [nchar](10) NOT NULL,
	[SoNguoiThue] [int] NULL,
	[SoTienCoc] [int] NULL,
	[NgayThanhToan] [datetime] NULL,
	[TrangThaiThanhToan] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK__CTThuePh__866D74BD6C1F8AC1] PRIMARY KEY CLUSTERED 
(
	[IDThue] ASC,
	[IDPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPT]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPT](
	[IDPhieuThu] [nchar](10) NOT NULL,
	[IDDichVu] [nchar](10) NOT NULL,
	[NgayThu] [datetime] NULL,
	[PhuThu] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK__CTPT__D6A3C113A8256BF3] PRIMARY KEY CLUSTERED 
(
	[IDPhieuThu] ASC,
	[IDDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangBai]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangBai](
	[IDPost] [nchar](10) NOT NULL,
	[TieuDe] [nvarchar](50) NULL,
	[star] [nvarchar](50) NULL,
	[IDUser] [nchar](10) NULL,
	[IDIMG] [nchar](10) NULL,
	[IDTiemKiem] [nchar](10) NULL,
	[address] [nvarchar](50) NULL,
	[IDThongTin] [nchar](10) NULL,
	[IDDanhMuc] [nchar](10) NULL,
	[MieuTa] [nchar](10) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 10/13/2023 11:19:01 PM ******/
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
/****** Object:  Table [dbo].[DanhGiaComment]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaComment](
	[IDDanhGia] [nchar](10) NOT NULL,
	[IDUser] [nchar](10) NULL,
	[IDPost] [nchar](10) NULL,
	[DanhGia] [float] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[IDDanhMuc] [nchar](10) NULL,
	[TenDanhMuc] [nchar](10) NULL,
	[PhuDe] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[IDDichVu] [nchar](10) NOT NULL,
	[TenDichVu] [nvarchar](255) NULL,
	[IDGia] [nchar](10) NULL,
 CONSTRAINT [PK__DichVu__C0C959283728047F] PRIMARY KEY CLUSTERED 
(
	[IDDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaDichVu]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaDichVu](
	[IDGia] [nchar](10) NOT NULL,
	[IDDichVu] [nchar](10) NULL,
	[NgayApDung] [date] NULL,
	[GiaTien] [int] NULL,
 CONSTRAINT [PK__GiaDichV__94965AE010362308] PRIMARY KEY CLUSTERED 
(
	[IDGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[IDThue] [nchar](10) NOT NULL,
	[IDKhach] [nchar](10) NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
 CONSTRAINT [PK__ThuePhon__BE71C5A85E2EAD78] PRIMARY KEY CLUSTERED 
(
	[IDThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[IDIMG] [nchar](10) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[IDIMG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhach] [nchar](10) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](255) NULL,
	[SoCMND_CCCD] [int] NULL,
	[DiaChi] [varchar](255) NULL,
	[SDT] [varchar](20) NULL,
	[Email] [varchar](255) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[DKTamChu] [nvarchar](50) NULL,
 CONSTRAINT [PK__KhachHan__01FC3D413003BB1B] PRIMARY KEY CLUSTERED 
(
	[IDKhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[IDKhuVuc] [nchar](10) NOT NULL,
	[TenKhuVuc] [varchar](10) NULL,
 CONSTRAINT [PK__KhuVuc__3389054A26BF6DDB] PRIMARY KEY CLUSTERED 
(
	[IDKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[IDLoaiPhong] [nchar](10) NOT NULL,
	[TenLoaiPhong] [varchar](10) NULL,
 CONSTRAINT [PK__LoaiPhon__485287E233E1D7CA] PRIMARY KEY CLUSTERED 
(
	[IDLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuThu]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThu](
	[IDPhieuThu] [nchar](10) NOT NULL,
	[IDPhong] [nchar](10) NULL,
	[NgayLap] [date] NULL,
	[NguoiLap] [nchar](10) NULL,
 CONSTRAINT [PK__PhieuThu__4AAF5481EEF69ACB] PRIMARY KEY CLUSTERED 
(
	[IDPhieuThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[IDPhong] [nchar](10) NOT NULL,
	[TenPhong] [nvarchar](10) NULL,
	[IDKhuVuc] [nchar](10) NULL,
	[IDLoaiPhong] [nchar](10) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK__Phong__81CB11524094868B] PRIMARY KEY CLUSTERED 
(
	[IDPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tab]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tab](
	[IDTab] [nchar](10) NOT NULL,
	[NameTab] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tab] PRIMARY KEY CLUSTERED 
(
	[IDTab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thang]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thang](
	[IDThang] [nchar](10) NOT NULL,
	[Thang] [nchar](10) NULL,
 CONSTRAINT [PK_Thang] PRIMARY KEY CLUSTERED 
(
	[IDThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thang']    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thang'](
	[IDThang] [nchar](10) NOT NULL,
	[Thang] [int] NULL,
 CONSTRAINT [PK_Thang'] PRIMARY KEY CLUSTERED 
(
	[IDThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinBai]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinBai](
	[IDThongTin] [nchar](10) NOT NULL,
	[IDTienIch] [nchar](10) NULL,
	[LoaiPhong] [nchar](10) NULL,
	[KhuVuc] [nchar](10) NULL,
	[Gia] [int] NULL,
	[DienTich] [int] NULL,
	[ThoiGian] [datetime] NULL,
	[hastag] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TienIch]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TienIch](
	[IDTienIch] [nchar](10) NOT NULL,
	[TenTienIch] [nvarchar](255) NULL,
	[MoTa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTienIch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/13/2023 11:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IDUser] [nchar](10) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](max) NULL,
	[Phone] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiSo]  WITH CHECK ADD  CONSTRAINT [FK_ChiSo_DichVu] FOREIGN KEY([IDDichVu])
REFERENCES [dbo].[DichVu] ([IDDichVu])
GO
ALTER TABLE [dbo].[ChiSo] CHECK CONSTRAINT [FK_ChiSo_DichVu]
GO
ALTER TABLE [dbo].[ChiSo]  WITH CHECK ADD  CONSTRAINT [FK_ChiSo_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
GO
ALTER TABLE [dbo].[ChiSo] CHECK CONSTRAINT [FK_ChiSo_Phong]
GO
ALTER TABLE [dbo].[ChiSo]  WITH CHECK ADD  CONSTRAINT [FK_ChiSo_Thang'] FOREIGN KEY([IDThang])
REFERENCES [dbo].[Thang'] ([IDThang])
GO
ALTER TABLE [dbo].[ChiSo] CHECK CONSTRAINT [FK_ChiSo_Thang']
GO
ALTER TABLE [dbo].[CTHopDong]  WITH CHECK ADD  CONSTRAINT [FK__CTThuePho__IDPho__34C8D9D1] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
GO
ALTER TABLE [dbo].[CTHopDong] CHECK CONSTRAINT [FK__CTThuePho__IDPho__34C8D9D1]
GO
ALTER TABLE [dbo].[CTHopDong]  WITH CHECK ADD  CONSTRAINT [FK__CTThuePho__IDThu__33D4B598] FOREIGN KEY([IDThue])
REFERENCES [dbo].[HopDong] ([IDThue])
GO
ALTER TABLE [dbo].[CTHopDong] CHECK CONSTRAINT [FK__CTThuePho__IDThu__33D4B598]
GO
ALTER TABLE [dbo].[CTPT]  WITH CHECK ADD  CONSTRAINT [FK__CTPT__IDDichVu__403A8C7D] FOREIGN KEY([IDDichVu])
REFERENCES [dbo].[DichVu] ([IDDichVu])
GO
ALTER TABLE [dbo].[CTPT] CHECK CONSTRAINT [FK__CTPT__IDDichVu__403A8C7D]
GO
ALTER TABLE [dbo].[CTPT]  WITH CHECK ADD  CONSTRAINT [FK__CTPT__IDPhieuThu__3F466844] FOREIGN KEY([IDPhieuThu])
REFERENCES [dbo].[PhieuThu] ([IDPhieuThu])
GO
ALTER TABLE [dbo].[CTPT] CHECK CONSTRAINT [FK__CTPT__IDPhieuThu__3F466844]
GO
ALTER TABLE [dbo].[DangBai]  WITH CHECK ADD  CONSTRAINT [FK_DangBai_Image] FOREIGN KEY([IDIMG])
REFERENCES [dbo].[Image] ([IDIMG])
GO
ALTER TABLE [dbo].[DangBai] CHECK CONSTRAINT [FK_DangBai_Image]
GO
ALTER TABLE [dbo].[DangBai]  WITH CHECK ADD  CONSTRAINT [FK_DangBai_User] FOREIGN KEY([IDUser])
REFERENCES [dbo].[User] ([IDUser])
GO
ALTER TABLE [dbo].[DangBai] CHECK CONSTRAINT [FK_DangBai_User]
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD  CONSTRAINT [FK__DichVu__IDGia__3C69FB99] FOREIGN KEY([IDGia])
REFERENCES [dbo].[GiaDichVu] ([IDGia])
GO
ALTER TABLE [dbo].[DichVu] CHECK CONSTRAINT [FK__DichVu__IDGia__3C69FB99]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK__ThuePhong__IDKha__2E1BDC42] FOREIGN KEY([IDKhach])
REFERENCES [dbo].[KhachHang] ([IDKhach])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK__ThuePhong__IDKha__2E1BDC42]
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD  CONSTRAINT [FK__PhieuThu__IDPhon__30F848ED] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
GO
ALTER TABLE [dbo].[PhieuThu] CHECK CONSTRAINT [FK__PhieuThu__IDPhon__30F848ED]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK__Phong__IDKhuVuc__2A4B4B5E] FOREIGN KEY([IDKhuVuc])
REFERENCES [dbo].[KhuVuc] ([IDKhuVuc])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK__Phong__IDKhuVuc__2A4B4B5E]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK__Phong__IDLoaiPho__2B3F6F97] FOREIGN KEY([IDLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([IDLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK__Phong__IDLoaiPho__2B3F6F97]
GO
USE [master]
GO
ALTER DATABASE [QuanLyPhongtro] SET  READ_WRITE 
GO