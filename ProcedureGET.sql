

--- Phần nghiệp vụ login ---

create proc sp_DangNhap -- data.Rows.count > 0 return true;
@taiKhoan varchar(100) , @matKhau varchar(100) 
as
	begin
		select count(taiKhoan) from dbo.TaiKhoan 
		where @taiKhoan = taiKhoan and @matKhau = matKhau
	end

go


--\\\ GET \\\ --

-- không có tham số
create proc sp_LayDanhSachLoaiTaiKhoan
as
	begin 
		select * from dbo.LoaiTaiKhoan
	end
go
create proc sp_LayDanhSachTaiKhoan
as
	begin 
		select * from dbo.TaiKhoan
	end
go
create proc sp_LayDanhSachKhoaHoc
as
	begin 
		select * from dbo.KhoaHoc
	end
go
create proc sp_LayDanhSachKhoa
as
	begin 
		select * from dbo.Khoa
	end
go
create proc sp_LayDanhSachBoMon
as
	begin 
		select * from dbo.BoMon
	end
go
create proc sp_LayDanhSachLopHoc
as
	begin 
		select * from dbo.Lop
	end
go
create proc sp_LayDanhSachSinhVien 
as
	begin 
		select * from dbo.SinhVien
	end
go
create proc sp_LayDanhSachSinhVienChuaHoanThanhThucTap
as
	begin 
		select * from dbo.SinhVien where dbo.SinhVien.tinhTrang = 0
	end
go
create proc sp_LayDanhSachSinhVienDaHoanThanhThucTap
as
	begin 
		select * from dbo.SinhVien where dbo.SinhVien.tinhTrang = 1
	end
go
create proc sp_LayDanhSachGiangVien 
as
	begin 
		select * from dbo.GiangVien
	end
go

create proc sp_LayDanhSachCty
as
	begin 
		select * from dbo.Cty
	end
go

create proc sp_LayDanhSachDeTai

as
	begin 
		select * from dbo.DeTai
	end
go
create proc sp_LayDanhSachDeTaiCoTheDangKy

as
	begin 
		select * from dbo.DeTai where dbo.DeTai.tinhTrangDT = 1
	end
go
create proc sp_LayDanhSachDeTaiKhongTheDangKy

as
	begin 
		select * from dbo.DeTai where dbo.DeTai.tinhTrangDT = 0
	end
go
create proc sp_LayDanhSachChiTietDeTaiDangKy

as
	begin 
		select * from dbo.ChiTiet_DeTaiDK DTDK , dbo.DeTai DT
		where DTDK.idDeTai = DT.idDeTai
	end
go

create proc sp_LayDanhSachChiTietDeTaiDangKyDaDuyet

as
	begin 
		select * from dbo.ChiTiet_DeTaiDK DTDK , dbo.DeTai DT
		where DTDK.idDeTai = DT.idDeTai and DTDK.tinhTrang = 1
	end
go
create proc sp_LayDanhSachChiTietDeTaiDangKyChoDuyet

as
	begin 
		select * from dbo.ChiTiet_DeTaiDK DTDK , dbo.DeTai DT
		where DTDK.idDeTai = DT.idDeTai and DTDK.tinhTrang = 0
	end
go

create proc sp_LayDanhSachPhieuPhanCong

as
	begin 
		select * from dbo.PhieuPC
	end
go

create proc sp_LayDanhSachPhieuChiTietPhieuPhanCong

as
	begin 
		select * from dbo.ChiTiet_PhieuPC CTPC, dbo.PhieuPC PPC
		where CTPC.idPhanCong = PPC.idPhanCong
	end
go

create proc sp_LayDanhSachNhanXet

as
	begin 
		select * from dbo.NhanXet
	end
go
create proc sp_LayDanhSachChiTietNhanXet

as
	begin 
		select * from dbo.NhanXet NX, dbo.ChiTiet_NhanXet CTNX
		where NX.idNhanXet = CTNX.idNhanXet
	end
go

create proc sp_LayDanhSachKetQuaThucTap

as
	begin 
		select * from dbo.KetQuaThucTap
	
	end
go


--Có tham số
create proc sp_TimKiemTaiKhoanSinhVien
@taiKhoan varchar(100)
as
	begin
		select *
		from dbo.SinhVien SV , dbo.TaiKhoan TK
		where SV.taiKhoan LIKE '%'+@taiKhoan+'%' and TK.taiKhoan = SV.taiKhoan
	end
go
create proc sp_LayThongTinTaiKhoanSinhVien
@taiKhoan varchar(100)
as
	begin
		select *
		from dbo.SinhVien SV , dbo.TaiKhoan TK
		where SV.taiKhoan = @taiKhoan and TK.taiKhoan = SV.taiKhoan
	end
go


create proc sp_TimKiemTaiKhoanGiangVien
@taiKhoan varchar(100)
as
	begin
		select *
		from dbo.GiangVien GV , dbo.TaiKhoan TK
		where GV.taiKhoan LIKE '%'+@taiKhoan+'%' and TK.taiKhoan = GV.taiKhoan
	end
go

create proc sp_LayThongTinTaiKhoanGiangVien
@taiKhoan varchar(100)
as
	begin
		select *
		from dbo.GiangVien GV , dbo.TaiKhoan TK
		where GV.taiKhoan = @taiKhoan and TK.taiKhoan = GV.taiKhoan
	end
go

create proc sp_TimKiemTaiKhoanCty
@taiKhoan varchar(100)
as
	begin
		select *
		from dbo.Cty Cty , dbo.TaiKhoan TK
		where Cty.taiKhoan LIKE '%'+@taiKhoan+'%' and TK.taiKhoan = Cty.taiKhoan
	end
go
create proc sp_LayThongTinTaiKhoanCty
@taiKhoan varchar(100)
as
	begin
		select *
		from dbo.Cty Cty , dbo.TaiKhoan TK
		where Cty.taiKhoan = @taiKhoan and TK.taiKhoan = Cty.taiKhoan
	end
go
create proc sp_TimKiemDeTai
@idDeTai int
as
	begin
		select *
		from dbo.DeTai DT 
		where DT.idDeTai LIKE '%'+@idDeTai+'%'
	end
go
create proc sp_LayThongTinDeTaiChiTiet
@idDeTai int
as
	begin
		select *
		from dbo.DeTai DT , dbo.ChiTiet_DeTaiDK DTDK
		where DT.idDeTai=DTDK.idDeTai and DTDK.idDeTai = @idDeTai
	end
go

create proc sp_LaySoLuongSinhVienDangKyTrenMotDT
@idDeTai int
as
	begin
		select * , count(DTDK.idSV) as N'Số lượng'
		from dbo.ChiTiet_DeTaiDK DTDK
		where DTDK.idDeTai = @idDeTai
		--group by DTDK.idDeTai
	end
go

create proc sp_LayDanhSachSVChuaDuyetDeTaiTrenCungNguoiRaDT
@idNguoiRaDT int
as
	begin 
		select * from dbo.ChiTiet_DeTaiDK DTDK , dbo.DeTai DT
		where DT.idGV = @idNguoiRaDT or DT.idCty = @idNguoiRaDT 
		and DTDK.idDeTai = DT.idDeTai and DTDK.tinhTrang = 0
	end
go
create proc sp_LayDanhSachSVDaDuyetDeTaiTrenCungNguoiRaDT
@idNguoiRaDT int
as
	begin 
		select * from dbo.ChiTiet_DeTaiDK DTDK , dbo.DeTai DT
		where DT.idGV = @idNguoiRaDT or DT.idCty = @idNguoiRaDT 
		and DTDK.idDeTai = DT.idDeTai and DTDK.tinhTrang = 1
	end
go


create proc sp_LayDanhSachDeTaiChoNguoiRaDeTai
@idNguoiRaDeTai int
as
	begin
		select *
		from dbo.DeTai DT 
		where DT.idCty= @idNguoiRaDeTai or DT.idGV= @idNguoiRaDeTai
	end
go

create proc sp_TimKiemPhieuPhanCong
@idPhanCong int
as
	begin
		select *
		from dbo.PhieuPC PPC , dbo.DeTai DT
		where PPC.idPhanCong Like '%'+idPhanCong+'%' and DT.idDeTai = PPC.idDeTai
	end
go


create proc sp_TimKiemPhieuPhanCongChiTietTheoNgay
@tuNgay date, @denNgay date
as
	begin
		select *
		from dbo.ChiTiet_PhieuPC CTPC
		where CTPC.denNgay = @denNgay and CTPC.tuNgay = @tuNgay
	end
go


create proc sp_TimKiemNhanXet
@idNhanXet int
as
	begin
		select *
		from dbo.NhanXet NX 
		where NX.idNhanXet like '%'+@idNhanXet+'%'
	end
go
create proc sp_LayThongTinNhanXetChiTiet
@idNhanXet int
as
	begin
		select *
		from dbo.NhanXet NX , dbo.ChiTiet_NhanXet CTNX
		where NX.idNhanXet = CTNX.idNhanXet and CTNX.idNhanXet = @idNhanXet 
	end
go

create proc sp_LayThongTinNhanXetChiTietTheoIdSV
@idSV int
as
	begin
		select *
		from dbo.NhanXet NX , dbo.ChiTiet_NhanXet CTNX
		where NX.idNhanXet = CTNX.idNhanXet and CTNX.idSV = @idSV
	end
go


create proc sp_TimKiemKetQuaThucTap
@idSV int
as
	begin
		select * from dbo.KetQuaThucTap
		where dbo.KetQuaThucTap.idSV like '%'+@idSV+'%'
	end
go

create proc sp_LayThongKetQuaThucTap
@idSV int
as
	begin
		select * from dbo.KetQuaThucTap
		where dbo.KetQuaThucTap.idSV = @idSV
	end
go


--\\\\ TEST \\\\--