create database PCTT
on (name = 'PCTT_data' , filename ='D:\Đồ án cơ sở\SQL\PCTT.MDF')
log on (name ='PCTT_log' ,filename = 'D:\Đồ án cơ sở\SQL\PCTT.LDF')

go
use PCTT
go
set dateformat dmy
go
create table LoaiTaiKhoan
 (
	idLoai int identity primary key, -- 1:admin(quản lý tin tức "phát triển thêm khi làm web") -- 2: giảng viên -- 3: đối tác-- 4: sinh viên  
	tenLoai nvarchar(50) unique,
 )
go
create table TaiKhoan -- 1 tài khoản có thể nằm ở cả bảng : SV,GV,CTy
(
	taiKhoan varchar (100) primary key,
	matKhau varchar(100) not null default 0,
	sdt char(10) CHECK (sdt like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') unique,
	email varchar(100) not null unique,
	ngayLap date not null, -- thuộc tính này sẽ không được update, đảm bảo tính chính xác.
	idLoai int not null default 4,  -- 4 : sinh vien

	foreign key (idLoai) references loaiTaiKhoan(idLoai)

)
go

create table KhoaHoc
(
	idKhoaHoc INT identity primary key,
	tenKhoaHoc nvarchar(100) default N'Chưa có tên' ,
	tuNamHoc DATE not null unique,--(2017)
	denNamHoc DATE not null unique,--(2018) " tuNamHoc.year - denNamHoc.year == 1 "
	constraint chk_namHoc check(tuNamHoc < denNamHoc)
)
go

create table Khoa
(
	idKhoa INT identity primary key,
	tenKhoa nvarchar(100) not null UNIQUE default N'Chưa có tên' ,	
)
go

create table BoMon
(
	idBoMon INT identity primary key,
	tenBoMon nvarchar(100) not null UNIQUE default N'Chưa có tên' ,
	SoGV int default 0, -- số lượng giảng viên

	idKhoa int not null,
	foreign key (idKhoa) references Khoa(idKhoa)
)
go

create table Lop
(
	idLop INT identity primary key,
	tenLop nvarchar(100) not null UNIQUE default N'Chưa có tên' ,
	SoSV int default 0,  -- số lượng sinh viên
	idBoMon int not null,
	idKhoaHoc int not null,

	foreign key (idBoMon) references BoMon(idBoMon),
	foreign key (idKhoaHoc) references KhoaHoc(idKhoaHoc)
)
go

create table GiangVien
(
	idGV INT identity primary key,
	tenGV nvarchar(100) not null default N'Chưa có tên' ,
	hinhAnh nvarchar(150),
	hhhv nvarchar(100) not null default N'Chưa có hhhv', -- học hàm học vị 
	namSinh DATE  not null default N'01/01/1234',
	queQuan nvarchar(200) not null default N'Chưa có địa chỉ',
	gioiTinh nvarchar(10) not null check (gioiTinh in(N'Nữ',N'Nam')) default N'Nam',
	taiKhoan varchar(100) not null unique,
	idBoMon int not null,

	foreign key (taiKhoan) references TaiKhoan(taiKhoan),
	foreign key (idBoMon) references BoMon(idBoMon)
)
go
create table SinhVien
(
	idSV INT identity primary key,
	tenSV nvarchar(100) not null default N'Chưa có tên' ,
	hinhAnh nvarchar(150),
	namSinh DATE  not null default N'01/01/1234',
	queQuan nvarchar(200) not null default N'Chưa có địa chỉ',
	gioiTinh nvarchar(10) not null check (gioiTinh in(N'Nữ',N'Nam')) default N'Nam',
	tinhTrang bit check(tinhTrang in(0,1)) not null default 0 , --0 chưa hoàn thành thực tập (có thể đang thực tập hoặc chưa đăng ký đề tài), 1- đã hoàn thành thực tập.
	taiKhoan varchar(100) not null unique, 
	idLop int not null,

	foreign key (taiKhoan) references TaiKhoan(taiKhoan),
	foreign key (idLop) references Lop(idLop),
	
)
go

create table Cty
(
	idCty INT identity primary key,
	tenCty nvarchar(100) not null default N'Chưa có tên' ,
	hinhAnh nvarchar(150),
	diaChi nvarchar(200) not null default N'Chưa có địa chỉ' unique,

	taiKhoan varchar(100) not null unique,
	foreign key (taiKhoan) references TaiKhoan(taiKhoan),
)


go

create table DeTai -- do giảng viên hoặc cty sẽ cho đề tài
(
	idDeTai INT identity primary key,
	tenDeTai nvarchar(100) not null unique,
	noiDungDT nvarchar(500) not null,
	ngayBatDau date not null, --Ngày bắt đầu đăng ký DT
	ngayKetThuc date not null, --Ngày kết thúc đăng ký DT
	tinhTrangDT bit check(tinhTrangDT in(0,1)) default 0, -- 0 có thể đăng ký, 1 không thể đăng ký

	idGV int default null,
	idCty int default null,
	--?? stuck idGV vs idCty (1 trong 2 sẽ null) ,
	
	foreign key (idGV) references GiangVien(idGV),
	foreign key (idCty) references Cty(idCty),
	Constraint chk_thoiGianDK check ( ngayBatDau < ngayKetThuc),
)
go

create table ChiTiet_DeTaiDK -- nếu sinh viên đang thực tập thì không được đổi dt
(
	idSV int not null unique, -- trong 1 khóa học , SV không thể đăng ký hơn 1 đề tài
	idDeTai int not null,

	ngayDangKy date not null, -- between DeTai.ngayBatDau && DeTai.ngayKetThuc
	tinhTrang bit check(tinhTrang in(0,1)) default 0 , --0 đang chờ duyệt và sẽ được chờ duyệt bởi người ra DT dựa vào idDeTai

	primary key(idSV,idDeTai),
	foreign key (idSV) references SinhVien(idSV),
	foreign key (idDeTai) references DeTai(idDeTai),
)
go

create table PhieuPC -- phiếu phân công sẽ do người ra DT dựa vào idDeTai
(
	idPhanCong INT identity primary key,
	ngayPhanCong date not null, -- sẽ là ngày người ra dt phân công
	tinhTrang bit not null default 0 check(tinhtrang in(0,1)), -- 0 : chưa thực hiện xong, 1 đã thực hiện xong và có thể nhận xét
	idDeTai int not null,

	foreign key (idDeTai) references DeTai(idDeTai),
)
go

create table ChiTiet_PhieuPC --
(
	idSV int not null,
	idPhanCong int not null,
	tuNgay date not null, 
	denNgay date not null,  -- sẽ là ngày sinh viên thực hiện thực tập
	NdThucTap nvarchar(500) not null,
	--tinhTrangThucTap , có thể kết thúc sớm hơn dự định
	PRIMARY KEY(idSV,idPhanCong),

	foreign key (idSV) references SinhVien(idSV),
	foreign key (idPhanCong) references  PhieuPC(idPhanCong),

	constraint chk_thoiGianThucTap  check (tuNgay < denNgay),
)
go

select * from SinhVien
drop table ChiTiet_NhanXet

create table NhanXet -- Sau mỗi thời gian thực tập nhất định sẽ có nhận xét cho khoản thời gian đó. (nhận xét theo mỗi phiếu pc cho từng sinh viên)
(
	idNhanXet INT identity primary key,
	ngayNhanXet date not null,
	--idDeTai int not null,
	idPhanCong int not null,

	foreign key (idPhanCong) references PhieuPC(idPhanCong),
)
go

create table ChiTiet_NhanXet
(
	idSV int not null ,
	idNhanXet int not null unique, -- quan hệ 1-1 với sinhvien

	DiemQuaTrinh float check(DiemQuaTrinh >= 0 and DiemQuaTrinh <= 10), -- điểm trong 1 lần thực tập. (do người ra đề tài chấm)
	NoiDungNX nvarchar(500),

	PRIMARY KEY(idSV,idNhanXet),

	foreign key (idSV) references SinhVien(idSV),
	foreign key (idNhanXet) references  nhanXet(idNhanXet),
)
go

create table KetQuaThucTap -- muốn đánh giá thì sinh viên phải thực hiện thực tập xong 
(
	idSV int not null unique,
	idGV int not null,
	ngayDanhGia date not null default N'Chưa có',
	danhGia bit check(danhGia in(0,1)) not null default 0, -- 0: chưa đạt, 1: đạt
	nhanXet nvarchar(500), -- nhận xét cuối cùng

	PRIMARY KEY(idSV,idGV),
	foreign key (idSV) references SinhVien(idSV),
	foreign key (idGV) references  GiangVien(idGV),
)
go

