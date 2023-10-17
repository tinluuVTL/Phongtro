CREATE DATABASE QLPhongtro

CREATE TABLE [dbo].[ChiSo](
	[IDChiSo] [nchar](10) NOT NULL,
	[IDDichVu] [nchar](10) NULL,
	[IDPhong] [nchar](10) NULL,
	[IDThang] [nchar](10) NULL,
	[ChiSoCu] [int] NULL,
	[ChiSoMoi] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
	 PRIMARY KEY(IDChiSo),
	FOREIGN KEY ([IDDichVu]) REFERENCES	DichVu([IDDichVu]),
	FOREIGN KEY ([IDPhong]) REFERENCES Phong([IDPhong]),
	FOREIGN KEY ([IDThang]) REFERENCES Thang([IDThang]),
)
GO
	CREATE TABLE [dbo].[ChuTro](
	[IDChuTro] [nchar](10) NOT NULL,
	[TenChuTro] [nvarchar](50) NULL,
	[IDDangNhap] [nchar](10) NULL,
	[SDT] [int] NULL,
	[DiaChi] [nvarchar](50) NULL,
	PRIMARY KEY(IDChuTro)
) 
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhach] [nchar](10) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](255) NULL,
	[SoCMND_CCCD] [int] NULL,
	[AnhCMND_CCCD] [nvarchar](max) null,
	[DiaChi] [varchar](255) NULL,
	[SDT] [varchar](20) NULL,
	[Email] [varchar](255) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[DKTamChu] [nvarchar](50) NULL,
	PRIMARY KEY(IDKhach)
)
GO
CREATE TABLE [dbo].[HopDong](
	[IDHopDong] [nchar](10) NOT NULL,
	[IDKhach] [nchar](10) NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	PRIMARY KEY (IDHopDong),
	FOREIGN KEY ([IDKhach]) REFERENCES KhachHang([IDKhach]),
)
go
CREATE TABLE [dbo].[CTHopDong](
	[IDHopDong] [nchar](10) NOT NULL,
	[IDPhong] [nchar](10) NOT NULL,
	[SoNguoiThue] [int] NULL,
	[SoTienCoc] [int] NULL,
	[NgayThanhToan] [datetime] NULL,
	[TrangThaiThanhToan] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[GhiChu] [nvarchar](50) NULL,
  PRIMARY KEY (IDHopDong,IDPhong),
  FOREIGN KEY (IDHopDong) REFERENCES HopDong([IDHopDong]),
  FOREIGN KEY ([IDPhong]) REFERENCES Phong([IDPhong]),
  )
  go
  CREATE TABLE [dbo].[CTPT](
	[IDPhieuThu] [nchar](10) NOT NULL,
	[IDDichVu] [nchar](10) NOT NULL,
	[NgayThu] [datetime] NULL,
	[PhuThu] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
	[TongTien] [float] NULL,
	PRIMARY KEY (IDPhieuThu,IDDichVu),
	FOREIGN KEY (IDPhieuThu) REFERENCES PhieuThu(IDPhieuThu),
	FOREIGN KEY (IDDichVu) REFERENCES DichVu(IDDichVu),
)
go
CREATE TABLE [dbo].[DangBai](
	[IDPost] [nchar](10) NOT NULL,
	[TieuDe] [nvarchar](50) NULL,
	[star] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[IDUser] [nchar](10) NULL,
	[IDIMG] [nchar](10) NULL,
	[IDTiemKiem] [nchar](10) NULL,
	[IDThongTinPhong] [nchar](10) NULL,
	[IDDanhMuc] [nchar](10) NULL,
	[MieuTa] [nchar](10) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
	PRIMARY KEY (IDPost),
	
	FOREIGN KEY (IDIMG) REFERENCES Image(IDIMG),
	FOREIGN KEY (IDThongTinPhong) REFERENCES ThongTinPhong(IDThongTinPhong),
	FOREIGN KEY (IDDanhMuc) REFERENCES DanhMuc(IDDanhMuc),
	

) 
GO
CREATE TABLE [dbo].[DangNhap](
	[IDDangNhap] [nchar](10) NOT NULL,
	[IDUsers] [nchar](10) NOT NULL,
 PRIMARY KEY 
(IDDangNhap,IDUsers )
)
Go

CREATE TABLE [dbo].[DanhGiaComment](
	[IDDanhGia] [nchar](10) NOT NULL,
	[IDUser] [nchar](10) NULL,
	[IDPost] [nchar](10) NULL,
	[DanhGia] [float] NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY (IDDanhGia ),
FOREIGN KEY (IDPost) REFERENCES DangBai(IDPost)
)
GO
CREATE TABLE [dbo].[DanhMuc](
	[IDDanhMuc] [nchar](10) NOT NULL,
	[TenDanhMuc] [nchar](10) NULL,
	[PhuDe] [nchar](10) NULL,
	PRIMARY KEY (IDDanhMuc)
) 
Go
CREATE TABLE [dbo].[DichVu](
	[IDDichVu] [nchar](10) NOT NULL,
	[TenDichVu] [nvarchar](255) NULL,
	[IDGia] [nchar](10) NULL,
	PRIMARY KEY (IDDichVu),
	FOREIGN KEY (IDGia) REFERENCES GiaDichVu(IDGia)
)
Go

CREATE TABLE [dbo].[GiaDichVu](
	[IDGia] [nchar](10) NOT NULL,
	[IDDichVu] [nchar](10) NULL,
	[NgayApDung] [date] NULL,
	[GiaTien] [int] NULL,
	[TrangThai] nvarchar(50),
	PRIMARY KEY(IDGia),
)
GO
CREATE TABLE [dbo].[Image](
	[IDIMG] [nchar](10) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
	PRIMARY KEY(IDIMG)
)
Go
CREATE TABLE [dbo].[Phong](
	[IDPhong] [nchar](10) NOT NULL,
	[TenPhong] [nvarchar](10) NULL,
	[IDKhuVuc] [nchar](10) NULL,
	[IDLoaiPhong] [nchar](10) NULL,
	[IDChuTro] [nchar](10) null,
	[MieuTa] [nchar](10) null,
	[TrangThai] [nvarchar](50) NULL,
	PRIMARY KEY (IDPhong),
	FOREIGN KEY (IDKhuVuc) REFERENCES KhuVuc(IDKhuVuc),
	FOREIGN KEY (IDLoaiPhong) REFERENCES LoaiPhong(IDLoaiPhong),
	FOREIGN KEY (IDChuTro) REFERENCES ChuTro(IDChuTro)

)
CREATE TABLE [dbo].[LoaiPhong](
	[IDLoaiPhong] [nchar](10) NOT NULL,
	[TenLoaiPhong] [varchar](10) NULL,
	PRIMARY KEY(IDLoaiPhong)
)
CREATE TABLE [dbo].[KhuVuc](
	[IDKhuVuc] [nchar](10) NOT NULL,
	[TenKhuVuc] [varchar](10) NULL,
	PRIMARY KEY (IDKhuVuc)
)
CREATE TABLE [dbo].[PhieuThu](
	[IDPhieuThu] [nchar](10) NOT NULL,
	[IDPhong] [nchar](10) NULL,
	[NgayLap] [date] NULL,
	PRIMARY KEY(IDPhieuThu),
	FOREIGN KEY (IDPhong) REFERENCES Phong(IDPhong)
)
GO
CREATE TABLE [dbo].[Thang](
	[IDThang] [nchar](10) NOT NULL,
	[Thang] int NULL,
PRIMARY KEY(IDThang)
)
GO
CREATE TABLE [dbo].[ThongTinPhong](
	[IDThongTinPhong] [nchar](10) NOT NULL,
	[IDTienIch] [nchar](10) NULL,
	[LoaiPhong] [nchar](10) NULL,
	[KhuVuc] [nchar](10) NULL,
	[Gia] [int] NULL,
	[DienTich] [int] NULL,
	[ThoiGian] [datetime] NULL,
	[hastag] [nchar](10) NULL,
	PRIMARY KEY(IDThongTinPhong),
	FOREIGN KEY (IDTienIch) REFERENCES TienIch(IDTienIch)
) 
GO
CREATE TABLE [dbo].[TienIch](
	[IDTienIch] [nchar](10) NOT NULL,
	[TenTienIch] [nvarchar](255) NULL,
	[MoTa] [nvarchar](255) NULL,
	PRIMARY KEY(IDTienIch)
	
)
GO
CREATE TABLE [dbo].[User](
	[IDUser] [nchar](10) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](max) NULL,
	[Phone] [int] NULL,
	PRIMARY KEY(IDUser)
)
GO