-- Tạo database QLPT
CREATE DATABASE QLPT;

-- Sử dụng database QLPT
USE QLPT;

-- Bảng Khách hàng
CREATE TABLE KhachHang (
    IDKhach nchar(10) PRIMARY KEY,
    Ho NVARCHAR(50),
    Ten NVARCHAR(255),
    SoCMND_CCCD INT,
    DiaChi VARCHAR(255),
    SDT VARCHAR(20),
    Email VARCHAR(255),
    AnhDaiDien NVARCHAR(MAX),
    DKTamChu NVARCHAR(50)
);

-- Bảng Phòng trọ
CREATE TABLE Phong (
    IDPhong nchar(10) PRIMARY KEY,
    TenPhong NVARCHAR(10),
    IDKhuVuc nchar(10),
    IDLoaiPhong nchar(10),
    FOREIGN KEY (IDKhuVuc) REFERENCES KhuVuc(IDKhuVuc),
    FOREIGN KEY (IDLoaiPhong) REFERENCES LoaiPhong(IDLoaiPhong)
);

-- Bảng Khu Vực
CREATE TABLE KhuVuc (
    IDKhuVuc nchar(10) PRIMARY KEY,
    TenKhuVuc VARCHAR(10)
);

-- Bảng Loại phòng
CREATE TABLE LoaiPhong (
    IDLoaiPhong nchar(10) PRIMARY KEY,
    TenLoaiPhong VARCHAR(10)
);

-- Bảng Thuê phòng
CREATE TABLE ThuePhong (
    IDThue nchar(10) PRIMARY KEY,
    IDKhach nchar(10),
    IDPhong nchar(10),
    NgayBD DATE,
    NgayKT DATE,
    FOREIGN KEY (IDKhach) REFERENCES KhachHang(IDKhach),
    FOREIGN KEY (IDPhong) REFERENCES Phong(IDPhong)
);

-- Bảng Trả phòng
CREATE TABLE TraPhong (
    IDTraPhong nchar(10) PRIMARY KEY,
    IDThue nchar(10),
    NgayTra DATE,
    ThanhToanTienCoc INT,
    FOREIGN KEY (IDThue) REFERENCES ThuePhong(IDThue)
);

-- Bảng Phiếu thu
CREATE TABLE PhieuThu (
    IDPhieuThu nchar(10) PRIMARY KEY,
    IDThue nchar(10),
    NgayLap DATE,
    NguoiLap NVARCHAR(50),
    FOREIGN KEY (IDThue) REFERENCES ThuePhong(IDThue)
);

-- Bảng Chi tiết phiếu thu
CREATE TABLE CTPT (
    IDPhieuThu nchar(10) PRIMARY KEY,
    IDDichVu nchar(10),
    GiaTien INT,
    SoLuong INT,
    PhuThu INT,
    GhiChu VARCHAR(255),
    FOREIGN KEY (IDPhieuThu) REFERENCES PhieuThu(IDPhieuThu),
    FOREIGN KEY (IDDichVu) REFERENCES DichVu(IDDichVu)
);

-- Bảng Chi tiết thuê phòng
CREATE TABLE CTThuePhong (
    IDThue nchar(10) PRIMARY KEY,
    IDDichVu nchar(10),
    service_id INT,
    SoNguoiThue INT,
    FOREIGN KEY (IDThue) REFERENCES ThuePhong(IDThue)
);

-- Tạo bảng Dịch vụ
CREATE TABLE DichVu (
    IDDichVu nchar(10) PRIMARY KEY,
    TenDichVu NVARCHAR(255),
    Gia INT
);

-- Tạo bảng Bảng giá
CREATE TABLE GiaDichVu (
    IDGia nchar(10) PRIMARY KEY,
    IDDichVu nchar(10),
    NgayApDung DATE,
    GiaTien INT,
    FOREIGN KEY (IDDichVu) REFERENCES DichVu(IDDichVu)
);

-- Bảng Chủ nhà
CREATE TABLE ChuTro (
    IDchu nchar(10) PRIMARY KEY,
    Ten NVARCHAR(255),
    DiaChi NVARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255)
);

-- Bảng Hợp đồng thuê phòng
CREATE TABLE HopDong (
    IDHopDong nchar(10) PRIMARY KEY,
    IDThue nchar(10),
    IDKhach nchar(10),
    NgayBatDau DATE,
    NgayKT DATE,
    TienCoc INT,
    FOREIGN KEY (IDThue) REFERENCES ThuePhong(IDThue),
    FOREIGN KEY (IDKhach) REFERENCES KhachHang(IDKhach)
);

-- Bảng Tiêu thụ theo phòng
CREATE TABLE TieuThuTheoPhong (
    IDTieuThu nchar(10) PRIMARY KEY,
    IDThue nchar(10),
    IDDichVu nchar(10),
    ChiSoCu INT,
    ChiSoMoi INT,
    NgayCu DATE,
    NgayLap DATE,
    FOREIGN KEY (IDThue) REFERENCES ThuePhong(IDThue),
    FOREIGN KEY (IDDichVu) REFERENCES DichVu(IDDichVu)
);

CREATE TABLE GhiNo (
    IDNO nchar(10) PRIMARY KEY,
    IDKhach nchar(10),
	IDPhong nchar(10),
    Sotien int,
	ThangNo date,
    Ngaytao DATE,
);
CREATE TABLE SuCo (
    IDSuCo INT PRIMARY KEY,
	IDPhong nchar(10),
    Mota TEXT,
    Ngaybaocao DATE,
 
);
CREATE TABLE [dbo].[DangBai](
	[IDPost] nchar(10) NOT NULL,
	[title] [nvarchar](max) NULL,
	[star] [nvarchar](max) NULL,
	[IDUser] nchar(10) NULL,
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
CREATE TABLE [dbo].[Image](
	[IDIMG] [nchar](10) NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[IDIMG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[ThongTinBai](
	[IDThongTin] nchar(10) NOT NULL,
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
CREATE TABLE [dbo].[User](
	[IDUser] nchar(10) NOT NULL,
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