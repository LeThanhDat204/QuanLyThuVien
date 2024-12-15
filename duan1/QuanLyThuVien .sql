create database QuanLyThuVien
use QuanLyThuVien
 go
CREATE TABLE SACH (
  maSach nchar(10) PRIMARY KEY,
  tenSach nvarchar(50) NOT NULL,
  giaThue int NOT NULL,
  soLuong int NOT NULL,
  trangThai bit NOT NULL,
  moTa nvarchar(50) not null,
  tenTacGia nvarchar(50) not null,
  ngay date not null,
  maLoai int, 
  FOREIGN KEY (maLoai) REFERENCES LoaiSach(maLoai)
);
go
CREATE TABLE LoaiSach (
  maLoai int PRIMARY KEY,
  tenLoai nvarchar(50) NOT NULL,
  trangThai bit not null
);
go
CREATE TABLE PhieuMuon (
  maPhieuMuon nchar(10)PRIMARY KEY,
  ngayMuon date not null,
  ngayTra date not null,
  maTaiKhoan nchar(10),
  maKhachHang nchar(10),
  FOREIGN KEY (maTaiKhoan) REFERENCES TaiKhoan(maTaiKhoan),
  FOREIGN KEY (maKhachHang) REFERENCES KhachHang(maKhachHang),
);
go
CREATE TABLE khachHang (
 maKhachHang nchar(10) primary key,
 email nvarchar(50) not null,
 sdt nvarchar(15) not null,
 ten nvarchar(50) not null,
 soCCCD nvarchar(15) not null,
 gioiTinh int not null,
 tuoi int not null
);
CREATE TABLE TaiKhoan(
 maTaiKhoan nchar(10) primary key,
 tenTaiKhoan nvarchar(50) not null,
 matKhau nvarchar(50) not null,
 eMail nvarchar(50) not null,
 vaiTro	bit not null,
 trangThai bit not null
);
go
CREATE TABLE PhieuMuonChiTiet (
  maPhieuMuonCT nchar(10) PRIMARY KEY,
  soLuong int not null,
  giaTien int not null, 
  trangThai int not null,
  tinhTrangSach nvarchar(50) not null,
  ghiChu nvarchar(50) not null,
  maPhieuMuon nchar(10),
  maSach nchar(10),
  FOREIGN KEY (maPhieuMuon) REFERENCES PhieuMuon(maPhieuMuon),
  FOREIGN KEY (maSach) REFERENCES SACH(maSach),
);
Create Table Nhacungcap(
	Manhacungcap nchar(5)PRIMARY KEY ,
	tennhacungcap nvarchar(55),
	diachi nvarchar(55),
	dienthoai nvarchar(10)
);
Create Table Phieucungcapsach(
	maphieunhap nvarchar(10) ,
	manhacungcap nchar(5),
	masach nchar(10),
	soluonggiao int,
	Primary key(maphieunhap, manhacungcap) ,
	FOREIGN KEY (manhacungcap) REFERENCES Nhacungcap(Manhacungcap),
	FOREIGN KEY (masach) REFERENCES SACH(maSach)
);
go
INSERT [dbo].[SACH] ([maSach], [tenSach], [giaThue], [soLuong], [trangThai],[moTa], [tenTacGIa], [ngay], [maLoai]) VALUES(N'S001',N'Đắc Nhân Tâm',5000,200,0,N'Tiểu Thuyết',N'Dale Carnegie',GetDate(),0);
INSERT [dbo].[SACH] ([maSach], [tenSach], [giaThue], [soLuong], [trangThai], [moTa], [tenTacGIa], [ngay], [maLoai]) VALUES(N'S002',N'Cách nghĩ để thành công',3000,150,1,N'Tâm Lý',N'Napoleon Hill',GetDate(),111) 
INSERT [dbo].[SACH] ([maSach], [tenSach], [giaThue], [soLuong], [trangThai], [moTa], [tenTacGIa], [ngay], [maLoai]) VALUES(N'S003',N'7 thói quen của người thành đạt',4000,100,0,N'Tâm Lý',N'Stephen R.Covey',GetDate(),222) 
INSERT [dbo].[SACH] ([maSach], [tenSach], [giaThue], [soLuong], [trangThai], [moTa], [tenTacGIa], [ngay], [maLoai]) VALUES(N'S004',N'Cuộc Sống không giới hạn',3000,70,0,N'Động lực',N'Nick Vujicic',GetDate(),333) 
INSERT [dbo].[SACH] ([maSach], [tenSach], [giaThue], [soLuong], [trangThai], [moTa], [tenTacGIa], [ngay], [maLoai]) VALUES(N'S005',N'Hành trình về phương đông',7000,50,1,N'Tôn giáo',N'Tên Tác Giả',GetDate(),444) 
INSERT [dbo].[SACH] ([maSach], [tenSach], [giaThue], [soLuong], [trangThai], [moTa], [tenTacGIa], [ngay], [maLoai]) VALUES(N'S006',N'Muôn kiếp nhân sinh',6000,30,0,N'Tâm linh',N'Nguyên Phong',GetDate(),555) 
INSERT [dbo].[SACH] ([maSach], [tenSach], [giaThue], [soLuong], [trangThai], [moTa], [tenTacGIa], [ngay], [maLoai]) VALUES(N'S007',N'Nguồn gốc các loài',4000,250,1,N'Khoa học',N'Charles Darwin',GetDate(),666) 
INSERT [dbo].[SACH] ([maSach], [tenSach], [giaThue], [soLuong], [trangThai], [moTa], [tenTacGIa], [ngay], [maLoai]) VALUES(N'S008',N'Niên lịch miền gió cát',5000,130,1,N'Thiên nhiên',N'Aldo Leopold',GetDate(),777) 
INSERT [dbo].[SACH] ([maSach], [tenSach], [giaThue], [soLuong], [trangThai], [moTa], [tenTacGIa], [ngay], [maLoai]) VALUES(N'S009',N'Việt Nam Sử Lược',7000,140,0,N'Lịch sử',N'Trần Trọng Kim',GetDate(),888) 
INSERT [dbo].[SACH] ([maSach], [tenSach], [giaThue], [soLuong], [trangThai], [moTa], [tenTacGIa], [ngay], [maLoai]) VALUES(N'S010',N'Quẳng gánh lo đi mà vui sống',3000,120,1,N'Tâm Lý',N'Dale Carnegie',GetDate(),999) 
select * from SACH
go

SET IDENTITY_INSERT [dbo].[LoaiSach] ON 

INSERT [dbo].[LoaiSach] ([maLoai], [tenLoai], [trangThai]) VALUES (0,N'Tâm Lý',1)
INSERT [dbo].[LoaiSach] ([maLoai], [tenLoai], [trangThai]) VALUES (111,N'Thiếu Nhi',0)
INSERT [dbo].[LoaiSach] ([maLoai], [tenLoai], [trangThai]) VALUES (222,N'Khoa Học Viễn Tưởng',0)
INSERT [dbo].[LoaiSach] ([maLoai], [tenLoai], [trangThai]) VALUES (333,N'Công Nghệ Thông Tin',1)
INSERT [dbo].[LoaiSach] ([maLoai], [tenLoai], [trangThai]) VALUES (444,N'Kinh Doanh',1)
INSERT [dbo].[LoaiSach] ([maLoai], [tenLoai], [trangThai]) VALUES (555,N'Tôn giáo',0)
INSERT [dbo].[LoaiSach] ([maLoai], [tenLoai], [trangThai]) VALUES (666,N'Lịch sử',1)
INSERT [dbo].[LoaiSach] ([maLoai], [tenLoai], [trangThai]) VALUES (777,N'Kinh dị',0)
INSERT [dbo].[LoaiSach] ([maLoai], [tenLoai], [trangThai]) VALUES (888,N'Nấu ăn',1)
INSERT [dbo].[LoaiSach] ([maLoai], [tenLoai], [trangThai]) VALUES (999,N'Tiểu thuyết',1)
select* from LoaiSach
SET IDENTITY_INSERT [dbo].[LoaiSach] OFF
GO

SET IDENTITY_INSERT [dbo].[PhieuMuon] ON 

INSERT [dbo].[PhieuMuon] ([maPhieuMuon], [ngayMuon], [ngayTra],maTaiKhoan,maKhachHang) VALUES (N'PM001',CAST(N'1-1-2023' AS Date),CAST(N'7-1-2023' AS Date),N'TK001',N'KH001')
INSERT [dbo].[PhieuMuon] ([maPhieuMuon], [ngayMuon], [ngayTra],maTaiKhoan,maKhachHang) VALUES (N'PM002',CAST(N'4-1-2023' AS Date),CAST(N'5-1-2023' AS Date),N'TK002',N'KH002')
INSERT [dbo].[PhieuMuon] ([maPhieuMuon], [ngayMuon], [ngayTra],maTaiKhoan,maKhachHang) VALUES (N'PM003',CAST(N'1-2-2023' AS Date),CAST(N'3-5-2023' AS Date),N'TK003',N'KH003')
INSERT [dbo].[PhieuMuon] ([maPhieuMuon], [ngayMuon], [ngayTra],maTaiKhoan,maKhachHang) VALUES (N'PM004',CAST(N'3-2-2023' AS Date),CAST(N'10-2-2023' AS Date),N'TK004',N'KH004')
INSERT [dbo].[PhieuMuon] ([maPhieuMuon], [ngayMuon], [ngayTra],maTaiKhoan,maKhachHang) VALUES (N'PM005',CAST(N'4-2-2023' AS Date),CAST(N'9-2-2023' AS Date),N'TK005',N'KH005')
select*from PhieuMuon
SET IDENTITY_INSERT [dbo].[PhieuMuon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON

INSERT [dbo].[khachHang] ([maKhachHang], [email], [sdt], [ten], [soCCCD], [gioiTinh], [tuoi]) VALUES (N'KH001',N'tuantran@gmail.com',N'0909234267',N'Tuấn',N'001234567891',0,33)
INSERT [dbo].[khachHang] ([maKhachHang], [email], [sdt], [ten], [soCCCD], [gioiTinh], [tuoi]) VALUES (N'KH002',N'khoakhoi@gmail.com',N'0987654321',N'Khoa',N'02134567891',2,20)
INSERT [dbo].[khachHang] ([maKhachHang], [email], [sdt], [ten], [soCCCD], [gioiTinh], [tuoi]) VALUES (N'KH003',N'nhatha@gmail.com',N'0912345678',N'Hà',N'0314567891',1,18)
INSERT [dbo].[khachHang] ([maKhachHang], [email], [sdt], [ten], [soCCCD], [gioiTinh], [tuoi]) VALUES (N'KH004',N'thuyduong@gmail.com',N'0908765432',N'Dương',N'0516789123',1,24)
INSERT [dbo].[khachHang] ([maKhachHang], [email], [sdt], [ten], [soCCCD], [gioiTinh], [tuoi]) VALUES (N'KH005',N'hquynhhoa@gmail.com',N'0954321098',N'Hoa',N'0910234567',3,29)
select*from khachHang
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON

INSERT [dbo].[TaiKhoan] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [eMail], [vaiTro], [trangThai]) VALUES (N'TK001',N'Trần Long',N'abc',N'longtran@gmail.com',1,1)
INSERT [dbo].[TaiKhoan] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [eMail], [vaiTro], [trangThai]) VALUES (N'TK002',N'Minh Thư',N'123',N'minhthu@gmail.com',0,1)
INSERT [dbo].[TaiKhoan] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [eMail], [vaiTro], [trangThai]) VALUES (N'TK003',N'Minh Nhựt',N'456',N'minhnhut@gmail.com',0,1)
INSERT [dbo].[TaiKhoan] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [eMail], [vaiTro], [trangThai]) VALUES (N'TK004',N'Cẩm Lan',N'789',N'camlan@gmail.com',0,0)
INSERT [dbo].[TaiKhoan] ([maTaiKhoan], [tenTaiKhoan], [matKhau], [eMail], [vaiTro], [trangThai]) VALUES (N'TK005',N'Khánh Duy',N'788',N'khanhduy@gmail.com',0,0)
select*from TaiKhoan
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO

SET IDENTITY_INSERT [dbo].[PhieuMuonChiTiet] ON

INSERT [dbo].[PhieuMuonChiTiet] ([maPhieuMuonCT], [soLuong], [giaTien], [trangThai], [tinhTrangSach], [ghiChu], [maPhieuMuon], [maSach]) VALUES (N'PMCT1',5,70000,0,N'Mới',N'Nguyên vẹn',N'PM001',N'S001')
INSERT [dbo].[PhieuMuonChiTiet] ([maPhieuMuonCT], [soLuong], [giaTien], [trangThai], [tinhTrangSach], [ghiChu], [maPhieuMuon], [maSach]) VALUES (N'PMCT2',10,140000,1,N'Cũ',N'Rách,Nhăn',N'PM002',N'S002')
INSERT [dbo].[PhieuMuonChiTiet] ([maPhieuMuonCT], [soLuong], [giaTien], [trangThai], [tinhTrangSach], [ghiChu], [maPhieuMuon], [maSach]) VALUES (N'PMCT3',4,40000,0,N'Mới',N'Nguyên vẹn',N'PM003',N'S003')
INSERT [dbo].[PhieuMuonChiTiet] ([maPhieuMuonCT], [soLuong], [giaTien], [trangThai], [tinhTrangSach], [ghiChu], [maPhieuMuon], [maSach]) VALUES (N'PMCT4',6,100000,1,N'Cũ',N'Ghi lên sách',N'PM004',N'S004')
INSERT [dbo].[PhieuMuonChiTiet] ([maPhieuMuonCT], [soLuong], [giaTien], [trangThai], [tinhTrangSach], [ghiChu], [maPhieuMuon], [maSach]) VALUES (N'PMCT5',3,30000,0,N'Mới',N'Nguyên vẹn',N'PM005',N'S005')


SET IDENTITY_INSERT [dbo].[Nhacungcap] ON

INSERT [dbo].[Nhacungcap] ([Manhacungcap],[tennhacungcap],[dienthoai],[diachi]) VALUES (N'CC001',N'Trí Tuệ',02438515567,N'187 Giảng Võ, Q. Đống Đa, Hà Nội')
INSERT [dbo].[Nhacungcap] ([Manhacungcap],[tennhacungcap],[dienthoai],[diachi]) VALUES (N'CC002',N'BookBuy',02838207153,N' 147 Pasteur, P. 6, Q. 3, Tp. Hồ Chí Minh')
INSERT [dbo].[Nhacungcap] ([Manhacungcap],[tennhacungcap],[dienthoai],[diachi]) VALUES (N'CC003',N'DaNaBook',02363821009,N'78 Bạch Đằng, Q. Hải Châu, Tp. Đà Nẵng')
INSERT [dbo].[Nhacungcap] ([Manhacungcap],[tennhacungcap],[dienthoai],[diachi]) VALUES (N'CC004',N'Nguyễn Du', 02543533399,N' 17C Nam Kỳ Khởi Nghĩa, P.3, Tp. Vũng Tàu')
INSERT [dbo].[Nhacungcap] ([Manhacungcap],[tennhacungcap],[dienthoai],[diachi]) VALUES (N'CC005',N'Quỳnh Phát',02838612167,N' 232 Trần Thủ Độ, P. Phú Thạnh, Q. Tân Phú')
select * from Nhacungcap

SET IDENTITY_INSERT [dbo].[Phieucungcapsach] ON

INSERT [dbo].[Phieucungcapsach] ([manhacungcap],[maphieunhap],[masach],[soluonggiao]) VALUES (N'CC001',N'PN001',N'S001',200)
INSERT [dbo].[Phieucungcapsach] ([manhacungcap],[maphieunhap],[masach],[soluonggiao]) VALUES (N'CC002',N'PN002',N'S002',400)
INSERT [dbo].[Phieucungcapsach] ([manhacungcap],[maphieunhap],[masach],[soluonggiao]) VALUES (N'CC003',N'PN003',N'S003',500)
INSERT [dbo].[Phieucungcapsach] ([manhacungcap],[maphieunhap],[masach],[soluonggiao]) VALUES (N'CC004',N'PN004',N'S004',100)
INSERT [dbo].[Phieucungcapsach] ([manhacungcap],[maphieunhap],[masach],[soluonggiao]) VALUES (N'CC005',N'PN005',N'S005',50)
select * from Phieucungcapsach

select * from PhieuMuonChiTiet
select * from TaiKhoan
select*from SACH
select*from Phieucungcapsach
SELECT pm.maPhieuMuon, pm.ngayMuon, pm.ngayTra, pm.maTaiKhoan, pm.maKhachHang, pmct.maPhieuMuonCT, pmct.soLuong, pmct.giaTien, pmct.trangThai, pmct.tinhTrangSach, pmct.ghiChu, pmct.maSach
FROM PhieuMuon pm
INNER JOIN PhieuMuonChiTiet pmct ON pm.maPhieuMuon = pmct.maPhieuMuon;

SELECT  maSach, tenSach, giaThue, soLuong, CASE  WHEN trangThai = 1 THEN N'Còn sách' ELSE N'Hết sách'END AS trangThaiText,moTa, tenTacGia, ngay,  maLoai FROM SACH;
	SELECT 
    maSach, 
    tenSach, 
    giaThue, 
    soLuong, 
    CASE 
        WHEN CAST(trangThai AS INTEGER) = 1 THEN 'Còn sách'
        ELSE 'Hết sách'
    END AS trangThaiText,
    moTa, 
    tenTacGia, 
    ngay, 
    maLoai
FROM SACH;	

select * from khachHang
select*from PhieuMuon
select*from PhieuMuonChiTiet
