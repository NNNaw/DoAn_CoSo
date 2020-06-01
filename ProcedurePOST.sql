
create proc sp_ThemLoaiTaiKhoan
@tenLoaiTaiKhoan nvarchar(50)
as
	begin
		insert into dbo.LoaiTaiKhoan(tenLoai) values (@tenLoaiTaiKhoan)
	end
go

create proc sp_DangKy --
@taiKhoan varchar(100), @matKhau varchar(100), @sdt char(10), @email varchar(100), @ngayLap date, @idLoai int -- @idLoai luôn luôn khởi tạo với giá trị là sinh viên (sao đó có thể nâng cấp lên do admin) 
as
	begin
		--- insert vào bảng tài khoản
		insert into dbo.TaiKhoan (taiKhoan, matKhau, sdt, email, ngayLap, idLoai) 
		values( @taiKhoan, @matKhau, @sdt, @email, @ngayLap, @idLoai)
	end

go

create proc sp_DangKySinhVien -- 
(@taiKhoanSV varchar(100), @matKhauSV varchar(100), @tenSV nvarchar(100),@sdtSV char(10), @emailSV varchar(100), @gioiTinh nvarchar(10),@ngayLapSV date, @idLoaiSV int , @idLopSV int) -- @idLoai luôn luôn khởi tạo với giá trị là sinh viên (sao đó có thể nâng cấp lên do admin) 
as
	begin
		exec sp_DangKy @taiKhoanSV ,@matKhauSV ,@sdtSV, @emailSV, @ngayLapSV , @idLoaiSV
	
		insert into dbo.SinhVien(taiKhoan,tenSV,gioiTinh,idLop) 
		values( @taiKhoanSV,@tenSV,@gioiTinh ,@idLopSV)
	end
	
go

create proc sp_DangKyGiangVien -- 
(@taiKhoan varchar(100), @matKhau varchar(100), @tenGV nvarchar(100),@sdt char(10), @email varchar(100), @gioiTinh nvarchar(10),@ngayLap date, @idLoai int , @idBoMon int) -- sẽ do admin cấp tài khoản
as
	begin
		exec sp_DangKy @taiKhoan ,@matKhau ,@sdt, @email, @ngayLap , @idLoai
	
		insert into dbo.GiangVien(taiKhoan,tenGV,gioiTinh,idBoMon) 
		values( @taiKhoan,@tenGV,@gioiTinh, @idBoMon)
	end
	
go

create proc sp_DangKyCty -- 
(@taiKhoan varchar(100), @matKhau varchar(100), @tenCty nvarchar(100),@sdt char(10), @email varchar(100),@ngayLap date, @idLoai int ) --sẽ do admin cấp tài khoản 
as
	begin
		exec sp_DangKy @taiKhoan ,@matKhau ,@sdt, @email, @ngayLap , @idLoai
	
		insert into dbo.Cty(taiKhoan,tenCty) 
		values( @taiKhoan,@tenCty)
	end
	
go



create proc sp_ThemKhoaHoc
@tenKhoaHoc nvarchar(100), @tuNamHoc date, @denNamHoc date
as
	begin
		insert into dbo.KhoaHoc(tenKhoaHoc,tuNamHoc,denNamHoc) values (@tenKhoaHoc,@tuNamHoc,@denNamHoc)
	end
go

create proc sp_ThemKhoa
@tenKhoa nvarchar(100)
as
	begin
		insert into dbo.Khoa(tenKhoa) values (@tenKhoa)
	end
go

create proc sp_ThemBoMon
@tenBoMon nvarchar(100), @idKhoa int
as
	begin
		insert into dbo.BoMon(tenBoMon,idKhoa) values (@tenBoMon,@idKhoa)
	end
go

create proc sp_ThemLop
@tenLop nvarchar(100), @idBoMon int, @idKhoaHoc int
as
	begin
		insert into dbo.Lop(tenLop,idBoMon,idKhoaHoc) values (@tenLop,@idBoMon,@idKhoaHoc)
	end
go

--create proc sp_ThemGiangVien
--@tenGV nvarchar(100), @hinhAnh image, @hhhv nvarchar(100),@namSinh date, @queQuan nvarchar(200),
--@gioiTinh nvarchar(10),@taiKhoan varchar(100), @idBoMon int
--as
--	begin
		
--		insert into dbo.GiangVien(tenGV,hinhAnh,hhhv,namSinh,queQuan,gioiTinh,taiKhoan,idBoMon)
--		values(@tenGV,@hinhAnh,@hhhv,@namSinh,@queQuan,@gioiTinh,@taiKhoan,@idBoMon)
--	end
--go


--create proc sp_ThemSinhVien
--@tenSV nvarchar(100), @hinhAnh image,@namSinh date, @queQuan nvarchar(200),
--@gioiTinh nvarchar(10),@taiKhoan varchar(100), @idLop int
--as
--	begin
		
--		insert into dbo.SinhVien(tenSV,hinhAnh,namSinh,queQuan,gioiTinh,taiKhoan,idLop)
--		values(@tenSV,@hinhAnh,@namSinh,@queQuan,@gioiTinh,@taiKhoan,@idLop)
--	end
--go


create proc sp_ThemDeTai
@tenDeTai nvarchar(100), @noiDungDT ntext, @ngayBatDau date, @ngayKetThuc date, @idGV int , @idCty int 
as
	begin
		insert into dbo.DeTai(tenDeTai,noiDungDT,ngayBatDau,ngayKetThuc,idGV,idCty) values (@tenDeTai,@noiDungDT,@ngayBatDau,@ngayKetThuc,@idGV,@idCty)
	end
go

create proc sp_DangKyDeTai
@idSV int, @idDeTai int, @ngayDangKy date
as
	begin
		insert into ChiTiet_DeTaiDK(idSV,idDeTai,ngayDangKy) values (@idSV,@idDeTai,@ngayDangKy)
	end
go



create proc sp_ThemPhieuPhanCong
@idDeTai int, @idSV int,  @ngayPhanCong date, @tuNgay date,@denNgay date,@NdThucTap ntext
as
	declare @lastRow int
	begin
		insert into dbo.PhieuPC(idDeTai,ngayPhanCong) values (@idDeTai,@ngayPhanCong)

		set @lastRow = (select TOP 1 idPhanCong FROM dbo.PhieuPC ORDER BY idPhanCong DESC)
		insert into dbo.ChiTiet_PhieuPC(idPhanCong,idSV,tuNgay,denNgay,NdThucTap)
		values (@lastRow,@idSV,@tuNgay,@denNgay,@NdThucTap)
	end
go

create proc sp_ThemNhanXet
@idPhanCong int, @idSV int,  @ngayNhanXet date, @diemQT float,@NdNhanXet ntext
as
	declare @lastRow int
	begin
		insert into dbo.NhanXet(idPhanCong,ngayNhanXet) values (@idPhanCong,@ngayNhanXet)

		set @lastRow = (select TOP 1 idNhanXet FROM dbo.NhanXet ORDER BY idNhanXet DESC)
		insert into dbo.ChiTiet_NhanXet(idNhanXet,idSV,DiemQuaTrinh,NoiDungNX)
		values (@lastRow,@idSV,@diemQT,@NdNhanXet)
	end
go
delete  NhanXet
select * from phieuPC
select * from nhanXet
select * from dbo.ChiTiet_NhanXet
exec sp_ThemNhanXet 15,1,'2021-01-20',7.5,N'Tốt'

create proc sp_ThemKetQuaThucTap
@idSV int, @idGV int, @ngayDanhGia date, @danhGia bit, @nhanXet ntext
as
	begin
		insert into dbo.KetQuaThucTap(idSV,idGV,ngayDanhGia,danhGia,nhanXet)
		values (@idSV,@idGV,@ngayDanhGia,@danhGia,@nhanXet)
	end
go