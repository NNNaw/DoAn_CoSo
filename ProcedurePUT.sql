

create proc sp_CapNhatLoaiTaiKhoan
@idLoai int,@tenLoai nvarchar(50)
as
	begin
		update dbo.LoaiTaiKhoan
		set tenLoai = @tenLoai
		where idLoai = @idLoai

	end
go

create proc sp_CapNhatTaiKhoan
@taiKhoan varchar(100), @matKhau varchar(100), @sdt char(10), @email varchar(100) , @idLoai int
as	
	begin
		update dbo.TaiKhoan
		set matKhau = @matKhau, sdt =@sdt, email = @email , idLoai = @idLoai
		where taiKhoan = @taiKhoan
	end
go

create proc sp_CapNhatKhoaHoc
@idKhoaHoc int, @tenKhoaHoc nvarchar(100) , @tuNamHoc date, @denNamHoc date
as
	begin
		update dbo.KhoaHoc 
		set tenKhoaHoc = @tenKhoaHoc , tuNamHoc = @tuNamHoc, denNamHoc = @denNamHoc
		where idKhoaHoc = @idKhoaHoc
	end
go

create proc sp_CapNhatKhoa
@idKhoa int, @tenKhoa nvarchar(100) 
as
	begin
		update dbo.Khoa
		set tenKhoa = @tenKhoa 
		where idKhoa = @idKhoa
	end
go

create proc sp_CapNhatBoMon
@idBoMon int, @tenBoMon nvarchar(100) , @idKhoa int
as
	begin
		update dbo.BoMon
		set tenBoMon = @tenBoMon , idKhoa = @idKhoa
		where idBoMon = @idBoMon
	end
go

create proc sp_CapNhatlop
@idLop int, @tenLop nvarchar(100) , @idBoMon int, @idKhoaHoc int
as
	begin
		update dbo.Lop
		set tenLop = @tenLop, idBoMon = @idBoMon , idKhoaHoc = @idKhoaHoc
		where idLop = @idLop
	end
go

create proc sp_CapNhatGiangVien
@idGV int , @tenGV nvarchar(100), @hinhAnh nvarchar(150), @hhhv nvarchar(100),
@namSinh date, @queQuan nvarchar(200), @gioiTinh nvarchar(10) , @idBoMon int
as
	begin
		

		update dbo.GiangVien 
		set tenGV = @tenGV, hinhAnh = @hinhAnh, hhhv = @hhhv, namSinh = @namSinh,
		queQuan = @queQuan , gioiTinh = @gioiTinh , idBoMon	= @idBoMon
		where idGV = @idGV
	end
go

create proc sp_CapNhatSinhVien
@idSV int , @tenSV nvarchar(100), @hinhAnh nvarchar(150),
@namSinh date, @queQuan nvarchar(200), @gioiTinh nvarchar(10) , @tinhtrang bit, @idLop int
as
	begin
		

		update dbo.SinhVien 
		set tenSV = @tenSV, hinhAnh = @hinhAnh, namSinh = @namSinh,
		queQuan = @queQuan , gioiTinh = @gioiTinh,tinhTrang= @tinhtrang, idLop= @idlop
		where idSV = @idSV
	end
go

create proc sp_CapNhatCty
@idCty int , @tenCty nvarchar(100), @hinhAnh nvarchar(150),@diaChi nvarchar(200)
as
	begin
		update dbo.Cty 
		set tenCty = @tenCty, hinhAnh = @hinhAnh, diaChi= @diaChi
		where idCty	= @idCty
	end
go

create proc sp_CapNhatDeTai
@idDeTai int, @tenDeTai nvarchar(100), @noiDungDT nvarchar(500), @ngayBatDau date,@ngayKetThuc date,@tinhTrangDT bit
, @idGV int, @idCty int
as
	begin
		update dbo.DeTai
		set tenDeTai = @tenDeTai , noiDungDT = @noiDungDT, ngayBatDau = @ngayBatDau, ngayKetThuc = @ngayKetThuc
		,tinhTrangDT = @tinhTrangDT,idGV=@idGV , idCty = @idCty
		where idDeTai = @idDeTai
	end
go

create proc sp_CapNhatChiTietDeTai
@idDeTai int, @idSV int, @ngayDangKy date, @tinhTrang bit
as
	begin
		update dbo.ChiTiet_DeTaiDK
		set idDeTai = @idDeTai , ngayDangKy = @ngayDangKy , tinhTrang = @tinhTrang
		where idSV = @idSV
	end
go

create proc sp_CapNhatPhieuPc
@idPhanCong int, @idDeTai int, @ngayPhanCong date, @tinhTrang bit
as
	begin
		update dbo.PhieuPC 
		set idDeTai = @idDeTai, ngayPhanCong = @ngayPhanCong , tinhTrang = @tinhTrang
		where idPhanCong = @idPhanCong
	end
go

create proc sp_CapNhatCTPhanCong
@idPhanCong int, @idSV int, @tuNgay date, @denNgay date,@NdThucTap nvarchar(500)
as
	begin
		update dbo.ChiTiet_PhieuPC 
		set idPhanCong =@idPhanCong, tuNgay = @tuNgay,denNgay = @denNgay , NdThucTap = @NdThucTap
		where idSV = @idSV
	end
go

create proc sp_CapNhatNhanXet
@idNhanXet int, @ngayNhanXet date
as
	begin
		update dbo.NhanXet 
		set ngayNhanXet = @ngayNhanXet
		where idNhanXet = @idNhanXet
	end
go

create proc sp_CapNhatChiTietNhanXet
@idNhanXet int, @idSV int,@DiemQuaTrinh float, @noiDungNX nvarchar(500)
as
	begin
		update dbo.ChiTiet_NhanXet
		set DiemQuaTrinh = @DiemQuaTrinh, NoiDungNX = @noiDungNX 
		where idNhanXet = @idNhanXet and idSV = @idSV
	end
go

create proc sp_CapNhatKetQuaThucTap
@idGV int, @idSV int,@NgayDanhGia date,@danhGia bit, @nhanXet nvarchar(500)
as
	begin
		update dbo.KetQuaThucTap
		set ngayDanhGia = @NgayDanhGia, danhGia = @danhGia ,nhanXet = @nhanXet 
		where idGV = @idGV and idSV = @idSV
	end
go