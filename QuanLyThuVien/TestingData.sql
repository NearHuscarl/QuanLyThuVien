USE [master]
GO
/****** Object:  Database [QLTV]    Script Date: 6/27/2019 1:08:15 PM ******/
CREATE DATABASE [QLTV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLTV.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLTV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLTV_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLTV] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLTV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLTV] SET  MULTI_USER 
GO
ALTER DATABASE [QLTV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLTV] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLTV]
GO
/****** Object:  Table [dbo].[tblChiTietPhieuMuon]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuMuon](
	[maphieumuon] [varchar](50) NOT NULL,
	[macuonsach] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblChiTietPhieuMuon] PRIMARY KEY CLUSTERED 
(
	[maphieumuon] ASC,
	[macuonsach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblChiTietPhieuNhap]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuNhap](
	[maphieunhap] [varchar](50) NOT NULL,
	[madausach] [varchar](50) NOT NULL,
	[soluong] [int] NOT NULL,
	[ghichu] [nvarchar](max) NULL,
	[thanhtien] [int] NOT NULL,
 CONSTRAINT [PK_tblChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[maphieunhap] ASC,
	[madausach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblChiTietPhieuTra]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuTra](
	[maphieutra] [varchar](50) NOT NULL,
	[macuonsach] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblChiTietPhieuTra] PRIMARY KEY CLUSTERED 
(
	[maphieutra] ASC,
	[macuonsach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblChiTietPhieuXuat]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuXuat](
	[maphieuxuat] [varchar](50) NOT NULL,
	[macuonsach] [varchar](50) NOT NULL,
	[thanhtien] [int] NOT NULL,
	[ghichu] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblChiTietPhieuXuat] PRIMARY KEY CLUSTERED 
(
	[maphieuxuat] ASC,
	[macuonsach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCuonSach]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCuonSach](
	[macuonsach] [varchar](50) NOT NULL,
	[tinhtrang] [varchar](50) NOT NULL,
	[dausach] [varchar](50) NOT NULL,
	[soke] [int] NOT NULL,
 CONSTRAINT [PK_tblCuonSach] PRIMARY KEY CLUSTERED 
(
	[macuonsach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDangNhap]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDangNhap](
	[madangnhap] [varchar](50) NOT NULL,
	[nguoidung] [varchar](50) NOT NULL,
	[tendangnhap] [nvarchar](max) NOT NULL,
	[matkhau] [nvarchar](max) NOT NULL,
	[dangnhaplandau] [bit] NOT NULL,
 CONSTRAINT [PK_tblDangNhap] PRIMARY KEY CLUSTERED 
(
	[madangnhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDauSach]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDauSach](
	[madausach] [varchar](50) NOT NULL,
	[tendausach] [nvarchar](max) NOT NULL,
	[tomtat] [nvarchar](max) NULL,
	[nhaxuatban] [varchar](50) NOT NULL,
	[namxuatban] [int] NOT NULL,
	[trigia] [int] NOT NULL,
 CONSTRAINT [PK_tblDauSach] PRIMARY KEY CLUSTERED 
(
	[madausach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDauSach_NgonNgu]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDauSach_NgonNgu](
	[madausach] [varchar](50) NOT NULL,
	[mangonngu] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblDauSach_NgonNgu] PRIMARY KEY CLUSTERED 
(
	[madausach] ASC,
	[mangonngu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDauSach_TacGia]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDauSach_TacGia](
	[madausach] [varchar](50) NOT NULL,
	[matacgia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblDauSach_TacGia] PRIMARY KEY CLUSTERED 
(
	[madausach] ASC,
	[matacgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDauSach_TheLoai]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDauSach_TheLoai](
	[madausach] [varchar](50) NOT NULL,
	[matheloai] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblDauSach_TheLoai] PRIMARY KEY CLUSTERED 
(
	[madausach] ASC,
	[matheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNgonNgu]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNgonNgu](
	[mangonngu] [varchar](50) NOT NULL,
	[tenngonngu] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tblNgonNgu] PRIMARY KEY CLUSTERED 
(
	[mangonngu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNguoiDung]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNguoiDung](
	[manguoidung] [varchar](50) NOT NULL,
	[hoten] [nvarchar](max) NOT NULL,
	[CMND] [nvarchar](max) NOT NULL,
	[gioitinh] [bit] NOT NULL,
	[ngaysinh] [datetime] NOT NULL,
	[diachi] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[sodienthoai] [nvarchar](max) NULL,
	[vaitro] [varchar](50) NOT NULL,
	[ngaytao] [datetime] NOT NULL,
 CONSTRAINT [PK_tblNguoiDung] PRIMARY KEY CLUSTERED 
(
	[manguoidung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhaCungCap]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhaCungCap](
	[manhacungcap] [varchar](50) NOT NULL,
	[tennhacungcap] [nvarchar](max) NOT NULL,
	[diachi] [nvarchar](max) NOT NULL,
	[sodienthoai] [nvarchar](max) NOT NULL,
	[sofax] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblNhaCungCap] PRIMARY KEY CLUSTERED 
(
	[manhacungcap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhaThanhLy]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhaThanhLy](
	[manhathanhly] [varchar](50) NOT NULL,
	[tennhathanhly] [nvarchar](max) NOT NULL,
	[diachi] [nvarchar](max) NOT NULL,
	[sodienthoai] [nvarchar](max) NOT NULL,
	[sofax] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblNhaThanhLy] PRIMARY KEY CLUSTERED 
(
	[manhathanhly] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhaXuatBan]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhaXuatBan](
	[manhaxuatban] [varchar](50) NOT NULL,
	[tennhaxuatban] [nvarchar](max) NOT NULL,
	[diachi] [nvarchar](max) NOT NULL,
	[sodienthoai] [nvarchar](max) NOT NULL,
	[sofax] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblNhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[manhaxuatban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPhieuMuon]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPhieuMuon](
	[maphieumuon] [varchar](50) NOT NULL,
	[docgia] [varchar](50) NOT NULL,
	[thuthu] [varchar](50) NOT NULL,
	[ngaymuon] [datetime] NOT NULL,
 CONSTRAINT [PK_tblPhieuMuon] PRIMARY KEY CLUSTERED 
(
	[maphieumuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPhieuNhap]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPhieuNhap](
	[maphieunhap] [varchar](50) NOT NULL,
	[ngaynhap] [datetime] NOT NULL,
	[nhacungcap] [varchar](50) NOT NULL,
	[tongtien] [int] NOT NULL,
	[nguoinhap] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[maphieunhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPhieuTra]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPhieuTra](
	[maphieutra] [varchar](50) NOT NULL,
	[docgia] [varchar](50) NOT NULL,
	[thuthu] [varchar](50) NOT NULL,
	[ngaytra] [datetime] NOT NULL,
 CONSTRAINT [PK_tblPhieuTra] PRIMARY KEY CLUSTERED 
(
	[maphieutra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPhieuXuat]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPhieuXuat](
	[maphieuxuat] [varchar](50) NOT NULL,
	[ngayxuat] [datetime] NOT NULL,
	[nhathanhly] [varchar](50) NOT NULL,
	[tongtien] [int] NOT NULL,
	[nguoixuat] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblPhieuXuat] PRIMARY KEY CLUSTERED 
(
	[maphieuxuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTacGia]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTacGia](
	[matacgia] [varchar](50) NOT NULL,
	[tentacgia] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tblTacGia] PRIMARY KEY CLUSTERED 
(
	[matacgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblThamSo]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThamSo](
	[tuoitoithieu] [int] NOT NULL,
	[sosachmuontoida] [int] NOT NULL,
	[sosachmuontoida1lan] [int] NOT NULL,
	[hanmuonsach] [int] NOT NULL,
	[mucgiaphat] [int] NOT NULL,
	[mucgiacoban] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTheLoai]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTheLoai](
	[matheloai] [varchar](50) NOT NULL,
	[tentheloai] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tblTheLoai] PRIMARY KEY CLUSTERED 
(
	[matheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTinhTrang]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTinhTrang](
	[matinhtrang] [varchar](50) NOT NULL,
	[tentinhtrang] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tblTinhTrang] PRIMARY KEY CLUSTERED 
(
	[matinhtrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblVaiTro]    Script Date: 6/27/2019 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblVaiTro](
	[mavaitro] [varchar](50) NOT NULL,
	[tenvaitro] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tblVaiTro] PRIMARY KEY CLUSTERED 
(
	[mavaitro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblChiTietPhieuMuon] ([maphieumuon], [macuonsach]) VALUES (N'PM000001', N'CS000001')
INSERT [dbo].[tblChiTietPhieuMuon] ([maphieumuon], [macuonsach]) VALUES (N'PM000001', N'CS000002')
INSERT [dbo].[tblChiTietPhieuNhap] ([maphieunhap], [madausach], [soluong], [ghichu], [thanhtien]) VALUES (N'PN000001', N'DS000001', 10, N'...', 1500000)
INSERT [dbo].[tblChiTietPhieuNhap] ([maphieunhap], [madausach], [soluong], [ghichu], [thanhtien]) VALUES (N'PN000002', N'DS000002', 5, N'', 375000)
INSERT [dbo].[tblChiTietPhieuNhap] ([maphieunhap], [madausach], [soluong], [ghichu], [thanhtien]) VALUES (N'PN000003', N'DS000003', 15, N'', 262500)
INSERT [dbo].[tblChiTietPhieuNhap] ([maphieunhap], [madausach], [soluong], [ghichu], [thanhtien]) VALUES (N'PN000003', N'DS000004', 20, N'', 350000)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000001', N'TT000004', N'DS000001', 4)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000002', N'TT000004', N'DS000001', 4)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000003', N'TT000004', N'DS000001', 4)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000004', N'TT000003', N'DS000001', 4)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000005', N'TT000003', N'DS000001', 4)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000006', N'TT000003', N'DS000001', 4)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000007', N'TT000003', N'DS000001', 4)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000008', N'TT000003', N'DS000001', 4)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000009', N'TT000003', N'DS000001', 4)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000010', N'TT000003', N'DS000001', 4)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000011', N'TT000003', N'DS000002', 2)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000012', N'TT000003', N'DS000002', 2)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000013', N'TT000003', N'DS000002', 2)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000014', N'TT000003', N'DS000002', 2)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000015', N'TT000003', N'DS000002', 2)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000016', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000017', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000018', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000019', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000020', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000021', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000022', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000023', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000024', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000025', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000026', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000027', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000028', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000029', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000030', N'TT000003', N'DS000003', 15)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000031', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000032', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000033', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000034', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000035', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000036', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000037', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000038', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000039', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000040', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000041', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000042', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000043', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000044', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000045', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000046', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000047', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000048', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000049', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblCuonSach] ([macuonsach], [tinhtrang], [dausach], [soke]) VALUES (N'CS000050', N'TT000003', N'DS000004', 14)
INSERT [dbo].[tblDangNhap] ([madangnhap], [nguoidung], [tendangnhap], [matkhau], [dangnhaplandau]) VALUES (N'DN000001', N'ND000001', N'admin', N'admin', 0)
INSERT [dbo].[tblDangNhap] ([madangnhap], [nguoidung], [tendangnhap], [matkhau], [dangnhaplandau]) VALUES (N'DN000002', N'ND000002', N'Nguyễn Khánh Nguyên', N'123456', 1)
INSERT [dbo].[tblDangNhap] ([madangnhap], [nguoidung], [tendangnhap], [matkhau], [dangnhaplandau]) VALUES (N'DN000003', N'ND000003', N'Hoàng Duy Phương', N'705548', 1)
INSERT [dbo].[tblDauSach] ([madausach], [tendausach], [tomtat], [nhaxuatban], [namxuatban], [trigia]) VALUES (N'DS000001', N'Harry Potter (P1)', N'Bullshit! ', N'NXB00002', 2000, 150000)
INSERT [dbo].[tblDauSach] ([madausach], [tendausach], [tomtat], [nhaxuatban], [namxuatban], [trigia]) VALUES (N'DS000002', N'Truyện Kiều', N'...       ', N'NXB00003', 2005, 75000)
INSERT [dbo].[tblDauSach] ([madausach], [tendausach], [tomtat], [nhaxuatban], [namxuatban], [trigia]) VALUES (N'DS000003', N'Ngữ văn 12 (tập 1)', N'', N'NXB00003', 2018, 17500)
INSERT [dbo].[tblDauSach] ([madausach], [tendausach], [tomtat], [nhaxuatban], [namxuatban], [trigia]) VALUES (N'DS000004', N'Ngữ văn 12 (tập 2)', N'', N'NXB00003', 2018, 17500)
INSERT [dbo].[tblDauSach_NgonNgu] ([madausach], [mangonngu]) VALUES (N'DS000001', N'NN000001')
INSERT [dbo].[tblDauSach_NgonNgu] ([madausach], [mangonngu]) VALUES (N'DS000002', N'NN000003')
INSERT [dbo].[tblDauSach_NgonNgu] ([madausach], [mangonngu]) VALUES (N'DS000002', N'NN000004')
INSERT [dbo].[tblDauSach_NgonNgu] ([madausach], [mangonngu]) VALUES (N'DS000003', N'NN000003')
INSERT [dbo].[tblDauSach_NgonNgu] ([madausach], [mangonngu]) VALUES (N'DS000004', N'NN000003')
INSERT [dbo].[tblDauSach_TacGia] ([madausach], [matacgia]) VALUES (N'DS000001', N'TG000001')
INSERT [dbo].[tblDauSach_TacGia] ([madausach], [matacgia]) VALUES (N'DS000002', N'TG000003')
INSERT [dbo].[tblDauSach_TacGia] ([madausach], [matacgia]) VALUES (N'DS000003', N'TG000006')
INSERT [dbo].[tblDauSach_TacGia] ([madausach], [matacgia]) VALUES (N'DS000004', N'TG000006')
INSERT [dbo].[tblDauSach_TheLoai] ([madausach], [matheloai]) VALUES (N'DS000001', N'TL000003')
INSERT [dbo].[tblDauSach_TheLoai] ([madausach], [matheloai]) VALUES (N'DS000002', N'TL000005')
INSERT [dbo].[tblDauSach_TheLoai] ([madausach], [matheloai]) VALUES (N'DS000003', N'TL000007')
INSERT [dbo].[tblDauSach_TheLoai] ([madausach], [matheloai]) VALUES (N'DS000004', N'TL000007')
INSERT [dbo].[tblNgonNgu] ([mangonngu], [tenngonngu]) VALUES (N'NN000001', N'Tiếng Anh')
INSERT [dbo].[tblNgonNgu] ([mangonngu], [tenngonngu]) VALUES (N'NN000002', N'Tiếng Nhật')
INSERT [dbo].[tblNgonNgu] ([mangonngu], [tenngonngu]) VALUES (N'NN000003', N'Tiếng Việt')
INSERT [dbo].[tblNgonNgu] ([mangonngu], [tenngonngu]) VALUES (N'NN000004', N'Tiếng Hàn')
INSERT [dbo].[tblNguoiDung] ([manguoidung], [hoten], [CMND], [gioitinh], [ngaysinh], [diachi], [email], [sodienthoai], [vaitro], [ngaytao]) VALUES (N'ND000001', N'Nguyễn Thành Luân', N'123456789', 0, CAST(N'1998-01-01 00:00:00.000' AS DateTime), N'Quảng Nam', N'16520703@gm.uit.edu.vn', N'0905403101', N'VT000001', CAST(N'2019-04-26 00:00:00.000' AS DateTime))
INSERT [dbo].[tblNguoiDung] ([manguoidung], [hoten], [CMND], [gioitinh], [ngaysinh], [diachi], [email], [sodienthoai], [vaitro], [ngaytao]) VALUES (N'ND000002', N'Nguyễn Khánh Nguyên', N'201980057', 0, CAST(N'2000-01-01 00:00:00.000' AS DateTime), N'Long An', N'', N'', N'VT000006', CAST(N'2019-06-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblNguoiDung] ([manguoidung], [hoten], [CMND], [gioitinh], [ngaysinh], [diachi], [email], [sodienthoai], [vaitro], [ngaytao]) VALUES (N'ND000003', N'Hoàng Duy Phương', N'123123123', 0, CAST(N'1995-01-01 00:00:00.000' AS DateTime), N'Quảng Trị', N'phuong@gmail.com', N'099987665', N'VT000004', CAST(N'2019-06-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblNhaCungCap] ([manhacungcap], [tennhacungcap], [diachi], [sodienthoai], [sofax]) VALUES (N'NCC00001', N'Nhà Sách FAHASA Dĩ An', N'Tầng Trệt TTTM Big C Green Square, Quốc lộ 1K, P, Dĩ An, Bình Dương 820000', N'0274 3773 670', N'')
INSERT [dbo].[tblNhaCungCap] ([manhacungcap], [tennhacungcap], [diachi], [sodienthoai], [sofax]) VALUES (N'NCC00002', N'Nhà Sách Thủ Đức', N'04 Tô Ngọc Vân, P, Thủ Đức, Hồ Chí Minh 700000', N'028 3896 2538', N'')
INSERT [dbo].[tblNhaCungCap] ([manhacungcap], [tennhacungcap], [diachi], [sodienthoai], [sofax]) VALUES (N'NCC00003', N'Nhà sách Linh Trung', N'Siêu thị Co.op Xtra số 934 QL, 1A Linh Trung, Phường Linh Trung, Thủ Đức, Hồ Chí Minh', N'028 3620 8699', N'linhtrungbookstore@fax.xxx')
INSERT [dbo].[tblNhaThanhLy] ([manhathanhly], [tennhathanhly], [diachi], [sodienthoai], [sofax]) VALUES (N'NTL00001', N'Công ty thu mua sách cũ Thủ Đức', N'Thủ Đức, Hồ Chí Minh', N'0987321654', N'xxx@fax.com.abc')
INSERT [dbo].[tblNhaThanhLy] ([manhathanhly], [tennhathanhly], [diachi], [sodienthoai], [sofax]) VALUES (N'NTL00002', N'Chợ búa làng đại học', N'Làng đại học, sát mép Bình Dương', N'0123xxx321', N'')
INSERT [dbo].[tblNhaXuatBan] ([manhaxuatban], [tennhaxuatban], [diachi], [sodienthoai], [sofax]) VALUES (N'NXB00001', N'Nhà xuất bản Tổng hợp Thành phố Hồ Chí Minh', N'62 Nguyễn Thị Minh Khai, Đa Kao, Quận 1, Hồ Chí Minh', N'028 3822 5340', N'')
INSERT [dbo].[tblNhaXuatBan] ([manhaxuatban], [tennhaxuatban], [diachi], [sodienthoai], [sofax]) VALUES (N'NXB00002', N'Nhà Xuất Bản Trẻ', N'161B Lý Chính Thắng, Phường 7, Quận 3, Hồ Chí Minh', N'028 3931 6289', N'')
INSERT [dbo].[tblNhaXuatBan] ([manhaxuatban], [tennhaxuatban], [diachi], [sodienthoai], [sofax]) VALUES (N'NXB00003', N'Nhà Xuất bản Giáo Dục', N'Đường Nguyễn Văn Cừ, Phường 4, Quận 5, Hồ Chí Minh', N'028 3835 6111', N'giaoduc.faxxxxxx')
INSERT [dbo].[tblPhieuMuon] ([maphieumuon], [docgia], [thuthu], [ngaymuon]) VALUES (N'PM000001', N'ND000001', N'ND000001', CAST(N'2019-06-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblPhieuNhap] ([maphieunhap], [ngaynhap], [nhacungcap], [tongtien], [nguoinhap]) VALUES (N'PN000001', CAST(N'2019-06-26 00:00:00.000' AS DateTime), N'NCC00002', 0, N'ND000001')
INSERT [dbo].[tblPhieuNhap] ([maphieunhap], [ngaynhap], [nhacungcap], [tongtien], [nguoinhap]) VALUES (N'PN000002', CAST(N'2019-06-26 00:00:00.000' AS DateTime), N'NCC00001', 0, N'ND000001')
INSERT [dbo].[tblPhieuNhap] ([maphieunhap], [ngaynhap], [nhacungcap], [tongtien], [nguoinhap]) VALUES (N'PN000003', CAST(N'2019-06-26 00:00:00.000' AS DateTime), N'NCC00003', 0, N'ND000001')
INSERT [dbo].[tblTacGia] ([matacgia], [tentacgia]) VALUES (N'TG000001', N'Nam Cao')
INSERT [dbo].[tblTacGia] ([matacgia], [tentacgia]) VALUES (N'TG000002', N'Hồ Xuân Hương')
INSERT [dbo].[tblTacGia] ([matacgia], [tentacgia]) VALUES (N'TG000003', N'Nguyễn Du')
INSERT [dbo].[tblTacGia] ([matacgia], [tentacgia]) VALUES (N'TG000004', N'Trạng Quỳnh')
INSERT [dbo].[tblTacGia] ([matacgia], [tentacgia]) VALUES (N'TG000005', N'Trạng Quỷnh')
INSERT [dbo].[tblTacGia] ([matacgia], [tentacgia]) VALUES (N'TG000006', N'Nhiều tác giả')
INSERT [dbo].[tblThamSo] ([tuoitoithieu], [sosachmuontoida], [sosachmuontoida1lan], [hanmuonsach], [mucgiaphat], [mucgiacoban]) VALUES (18, 6, 3, 5, 200, 10000)
INSERT [dbo].[tblTheLoai] ([matheloai], [tentheloai]) VALUES (N'TL000001', N'Trinh thám')
INSERT [dbo].[tblTheLoai] ([matheloai], [tentheloai]) VALUES (N'TL000002', N'Kinh dị')
INSERT [dbo].[tblTheLoai] ([matheloai], [tentheloai]) VALUES (N'TL000003', N'Tiểu thuyết')
INSERT [dbo].[tblTheLoai] ([matheloai], [tentheloai]) VALUES (N'TL000004', N'Tình cảm')
INSERT [dbo].[tblTheLoai] ([matheloai], [tentheloai]) VALUES (N'TL000005', N'18+')
INSERT [dbo].[tblTheLoai] ([matheloai], [tentheloai]) VALUES (N'TL000006', N'Truyện ngắn')
INSERT [dbo].[tblTheLoai] ([matheloai], [tentheloai]) VALUES (N'TL000007', N'Sách giáo khoa')
INSERT [dbo].[tblTinhTrang] ([matinhtrang], [tentinhtrang]) VALUES (N'TT000001', N'Hư hỏng')
INSERT [dbo].[tblTinhTrang] ([matinhtrang], [tentinhtrang]) VALUES (N'TT000002', N'Không khả dụng')
INSERT [dbo].[tblTinhTrang] ([matinhtrang], [tentinhtrang]) VALUES (N'TT000003', N'Được mượn')
INSERT [dbo].[tblTinhTrang] ([matinhtrang], [tentinhtrang]) VALUES (N'TT000004', N'Đang mượn')
INSERT [dbo].[tblTinhTrang] ([matinhtrang], [tentinhtrang]) VALUES (N'TT000005', N'Đã thanh lý')
INSERT [dbo].[tblVaiTro] ([mavaitro], [tenvaitro]) VALUES (N'VT000001', N'ADMIN')
INSERT [dbo].[tblVaiTro] ([mavaitro], [tenvaitro]) VALUES (N'VT000002', N'QUẢN KHO')
INSERT [dbo].[tblVaiTro] ([mavaitro], [tenvaitro]) VALUES (N'VT000003', N'QUẢN LÝ SÁCH')
INSERT [dbo].[tblVaiTro] ([mavaitro], [tenvaitro]) VALUES (N'VT000004', N'QUẢN LÝ ĐỘC GIẢ')
INSERT [dbo].[tblVaiTro] ([mavaitro], [tenvaitro]) VALUES (N'VT000005', N'KẾ TOÁN')
INSERT [dbo].[tblVaiTro] ([mavaitro], [tenvaitro]) VALUES (N'VT000006', N'ĐỘC GIẢ')
ALTER TABLE [dbo].[tblChiTietPhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuMuon_tblCuonSach] FOREIGN KEY([macuonsach])
REFERENCES [dbo].[tblCuonSach] ([macuonsach])
GO
ALTER TABLE [dbo].[tblChiTietPhieuMuon] CHECK CONSTRAINT [FK_tblChiTietPhieuMuon_tblCuonSach]
GO
ALTER TABLE [dbo].[tblChiTietPhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuMuon_tblPhieuMuon] FOREIGN KEY([maphieumuon])
REFERENCES [dbo].[tblPhieuMuon] ([maphieumuon])
GO
ALTER TABLE [dbo].[tblChiTietPhieuMuon] CHECK CONSTRAINT [FK_tblChiTietPhieuMuon_tblPhieuMuon]
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuNhap_tblDauSach] FOREIGN KEY([madausach])
REFERENCES [dbo].[tblDauSach] ([madausach])
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap] CHECK CONSTRAINT [FK_tblChiTietPhieuNhap_tblDauSach]
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuNhap_tblPhieuNhap] FOREIGN KEY([maphieunhap])
REFERENCES [dbo].[tblPhieuNhap] ([maphieunhap])
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap] CHECK CONSTRAINT [FK_tblChiTietPhieuNhap_tblPhieuNhap]
GO
ALTER TABLE [dbo].[tblChiTietPhieuTra]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuTra_tblCuonSach] FOREIGN KEY([macuonsach])
REFERENCES [dbo].[tblCuonSach] ([macuonsach])
GO
ALTER TABLE [dbo].[tblChiTietPhieuTra] CHECK CONSTRAINT [FK_tblChiTietPhieuTra_tblCuonSach]
GO
ALTER TABLE [dbo].[tblChiTietPhieuTra]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuTra_tblPhieuTra] FOREIGN KEY([maphieutra])
REFERENCES [dbo].[tblPhieuTra] ([maphieutra])
GO
ALTER TABLE [dbo].[tblChiTietPhieuTra] CHECK CONSTRAINT [FK_tblChiTietPhieuTra_tblPhieuTra]
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuXuat_tblCuonSach] FOREIGN KEY([macuonsach])
REFERENCES [dbo].[tblCuonSach] ([macuonsach])
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat] CHECK CONSTRAINT [FK_tblChiTietPhieuXuat_tblCuonSach]
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuXuat_tblPhieuXuat] FOREIGN KEY([maphieuxuat])
REFERENCES [dbo].[tblPhieuXuat] ([maphieuxuat])
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat] CHECK CONSTRAINT [FK_tblChiTietPhieuXuat_tblPhieuXuat]
GO
ALTER TABLE [dbo].[tblCuonSach]  WITH CHECK ADD  CONSTRAINT [FK_tblCuonSach_tblDauSach] FOREIGN KEY([dausach])
REFERENCES [dbo].[tblDauSach] ([madausach])
GO
ALTER TABLE [dbo].[tblCuonSach] CHECK CONSTRAINT [FK_tblCuonSach_tblDauSach]
GO
ALTER TABLE [dbo].[tblCuonSach]  WITH CHECK ADD  CONSTRAINT [FK_tblCuonSach_tblTinhTrang] FOREIGN KEY([tinhtrang])
REFERENCES [dbo].[tblTinhTrang] ([matinhtrang])
GO
ALTER TABLE [dbo].[tblCuonSach] CHECK CONSTRAINT [FK_tblCuonSach_tblTinhTrang]
GO
ALTER TABLE [dbo].[tblDangNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblDangNhap_tblNguoiDung] FOREIGN KEY([nguoidung])
REFERENCES [dbo].[tblNguoiDung] ([manguoidung])
GO
ALTER TABLE [dbo].[tblDangNhap] CHECK CONSTRAINT [FK_tblDangNhap_tblNguoiDung]
GO
ALTER TABLE [dbo].[tblDauSach]  WITH CHECK ADD  CONSTRAINT [FK_tblDauSach_tblNhaXuatBan] FOREIGN KEY([nhaxuatban])
REFERENCES [dbo].[tblNhaXuatBan] ([manhaxuatban])
GO
ALTER TABLE [dbo].[tblDauSach] CHECK CONSTRAINT [FK_tblDauSach_tblNhaXuatBan]
GO
ALTER TABLE [dbo].[tblDauSach_NgonNgu]  WITH CHECK ADD  CONSTRAINT [FK_tblDauSach_NgonNgu_tblDauSach] FOREIGN KEY([madausach])
REFERENCES [dbo].[tblDauSach] ([madausach])
GO
ALTER TABLE [dbo].[tblDauSach_NgonNgu] CHECK CONSTRAINT [FK_tblDauSach_NgonNgu_tblDauSach]
GO
ALTER TABLE [dbo].[tblDauSach_NgonNgu]  WITH CHECK ADD  CONSTRAINT [FK_tblDauSach_NgonNgu_tblNgonNgu] FOREIGN KEY([mangonngu])
REFERENCES [dbo].[tblNgonNgu] ([mangonngu])
GO
ALTER TABLE [dbo].[tblDauSach_NgonNgu] CHECK CONSTRAINT [FK_tblDauSach_NgonNgu_tblNgonNgu]
GO
ALTER TABLE [dbo].[tblDauSach_TacGia]  WITH CHECK ADD  CONSTRAINT [FK_tblDauSach_TacGia_tblDauSach] FOREIGN KEY([madausach])
REFERENCES [dbo].[tblDauSach] ([madausach])
GO
ALTER TABLE [dbo].[tblDauSach_TacGia] CHECK CONSTRAINT [FK_tblDauSach_TacGia_tblDauSach]
GO
ALTER TABLE [dbo].[tblDauSach_TacGia]  WITH CHECK ADD  CONSTRAINT [FK_tblDauSach_TacGia_tblTacGia] FOREIGN KEY([matacgia])
REFERENCES [dbo].[tblTacGia] ([matacgia])
GO
ALTER TABLE [dbo].[tblDauSach_TacGia] CHECK CONSTRAINT [FK_tblDauSach_TacGia_tblTacGia]
GO
ALTER TABLE [dbo].[tblDauSach_TheLoai]  WITH CHECK ADD  CONSTRAINT [FK_tblDauSach_TheLoai_tblDauSach] FOREIGN KEY([madausach])
REFERENCES [dbo].[tblDauSach] ([madausach])
GO
ALTER TABLE [dbo].[tblDauSach_TheLoai] CHECK CONSTRAINT [FK_tblDauSach_TheLoai_tblDauSach]
GO
ALTER TABLE [dbo].[tblDauSach_TheLoai]  WITH CHECK ADD  CONSTRAINT [FK_tblDauSach_TheLoai_tblTheLoai] FOREIGN KEY([matheloai])
REFERENCES [dbo].[tblTheLoai] ([matheloai])
GO
ALTER TABLE [dbo].[tblDauSach_TheLoai] CHECK CONSTRAINT [FK_tblDauSach_TheLoai_tblTheLoai]
GO
ALTER TABLE [dbo].[tblNguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_tblNguoiDung_tblVaiTro] FOREIGN KEY([vaitro])
REFERENCES [dbo].[tblVaiTro] ([mavaitro])
GO
ALTER TABLE [dbo].[tblNguoiDung] CHECK CONSTRAINT [FK_tblNguoiDung_tblVaiTro]
GO
ALTER TABLE [dbo].[tblPhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuMuon_tblNguoiDung] FOREIGN KEY([docgia])
REFERENCES [dbo].[tblNguoiDung] ([manguoidung])
GO
ALTER TABLE [dbo].[tblPhieuMuon] CHECK CONSTRAINT [FK_tblPhieuMuon_tblNguoiDung]
GO
ALTER TABLE [dbo].[tblPhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuMuon_tblNguoiDung1] FOREIGN KEY([thuthu])
REFERENCES [dbo].[tblNguoiDung] ([manguoidung])
GO
ALTER TABLE [dbo].[tblPhieuMuon] CHECK CONSTRAINT [FK_tblPhieuMuon_tblNguoiDung1]
GO
ALTER TABLE [dbo].[tblPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuNhap_tblNguoiDung] FOREIGN KEY([nguoinhap])
REFERENCES [dbo].[tblNguoiDung] ([manguoidung])
GO
ALTER TABLE [dbo].[tblPhieuNhap] CHECK CONSTRAINT [FK_tblPhieuNhap_tblNguoiDung]
GO
ALTER TABLE [dbo].[tblPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuNhap_tblNhaCungCap] FOREIGN KEY([nhacungcap])
REFERENCES [dbo].[tblNhaCungCap] ([manhacungcap])
GO
ALTER TABLE [dbo].[tblPhieuNhap] CHECK CONSTRAINT [FK_tblPhieuNhap_tblNhaCungCap]
GO
ALTER TABLE [dbo].[tblPhieuTra]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuTra_tblNguoiDung] FOREIGN KEY([docgia])
REFERENCES [dbo].[tblNguoiDung] ([manguoidung])
GO
ALTER TABLE [dbo].[tblPhieuTra] CHECK CONSTRAINT [FK_tblPhieuTra_tblNguoiDung]
GO
ALTER TABLE [dbo].[tblPhieuTra]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuTra_tblNguoiDung1] FOREIGN KEY([thuthu])
REFERENCES [dbo].[tblNguoiDung] ([manguoidung])
GO
ALTER TABLE [dbo].[tblPhieuTra] CHECK CONSTRAINT [FK_tblPhieuTra_tblNguoiDung1]
GO
ALTER TABLE [dbo].[tblPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuXuat_tblNguoiDung] FOREIGN KEY([nguoixuat])
REFERENCES [dbo].[tblNguoiDung] ([manguoidung])
GO
ALTER TABLE [dbo].[tblPhieuXuat] CHECK CONSTRAINT [FK_tblPhieuXuat_tblNguoiDung]
GO
ALTER TABLE [dbo].[tblPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuXuat_tblNhaThanhLy] FOREIGN KEY([nhathanhly])
REFERENCES [dbo].[tblNhaThanhLy] ([manhathanhly])
GO
ALTER TABLE [dbo].[tblPhieuXuat] CHECK CONSTRAINT [FK_tblPhieuXuat_tblNhaThanhLy]
GO
USE [master]
GO
ALTER DATABASE [QLTV] SET  READ_WRITE 
GO
