
---- trigger update ----

create trigger trg_CapNhatPhieuPC on dbo.PhieuPc
for update
as
	if( select count (i.idPhanCong) 
		from inserted i, dbo.ChiTiet_PhieuPC CTPC
		where i.idPhanCong = CTPC.idPhanCong ) > 0

		begin
			Print N'Phiếu phân công đang thực hiện. Vui lòng không đổi đề tài'
			Rollback tran
		end

go
alter trigger trg_CapNhatCTDTDangKy on dbo.ChiTiet_DeTaiDK
for update
as
	if update (idSV)
		begin
			Print N'Không thể đổi mã sinh viên.'
			Rollback tran
		end

	if(select count(i.idSV) from inserted i
	where i.tinhTrang = 0) > 0
	begin
			Print N'Đề tài đã được duyệt. không được phép đổi'
			Rollback tran
		end
		
go

alter trigger trg_CapNhatTinhTrangSinhVien on dbo.SinhVien
for update
as
	if update(tinhTrang)
	begin
		if(select count(PC.idPhanCong) from inserted i, dbo.ChiTiet_PhieuPC CTPC , dbo.PhieuPC PC
		where i.idSV = CTPC.idSV and CTPC.idPhanCong = PC.idPhanCong and PC.tinhTrang = 0) > 0
		begin
			Print N'Sinh viên cần hoàn thành xong phiếu thực tập trước đó.'
			Rollback tran
		end
		if(select count(i.idSV)  from inserted i, dbo.ChiTiet_PhieuPC CTPC , dbo.PhieuPC PC
		where i.idSV = CTPC.idSV and CTPC.idPhanCong = PC.idPhanCong and PC.tinhTrang = 1) = 0
		begin
			Print N'Sinh viên chưa thực tập. không được cập nhật tình trạng.'
			Rollback tran
		end
	end


--- trigger insert

create trigger trg_ThemKetQuaThucTap on dbo.KetQuaThucTap
for insert , update
as	
	if( select Count(i.idSV)
	 from inserted i, dbo.SinhVien sv
	 where i.idSV = sv.idSV and sv.tinhTrang = 0
	) > 0
	begin
			Print N'Sinh viên này chưa thực hiện xong quá trình thực tập.'
			Rollback tran
		end

go

create trigger trg_ThemKetQuaThucTap2 on dbo.KetQuaThucTap
for insert , update
as	
	if( select Count(i.idSV)
	 from inserted i, dbo.ChiTiet_PhieuPC CTPC , dbo.PhieuPC PC
	 where i.idSV = CTPC.idSV and i.ngayDanhGia < CTPC.denNgay 
	 or ctpc.idPhanCong = pc.idPhanCong and pc.tinhTrang = 0
	) > 0
	begin
			Print N'Sinh viên này đang trong quá trình thực hiện thực tập.'
			Rollback tran
		end

go

create trigger trg_ThemCTNhanXet on dbo.Chitiet_NhanXet
for insert , update
as
	if(select count(*) from inserted i , NhanXet nx, ChiTiet_PhieuPC ctpc
where i.idNhanxet = nx.idNhanXet and nx.idPhanCong = ctpc.idPhanCong 
and ctpc.idSV = i.idSV) = 0

		begin
			Print N'Sinh viên không có trong phiếu phân công.'
			Rollback tran
		end
go



create trigger trg_ThemNhanXet2 on dbo.NhanXet
for insert 
as
	if(select count (i.idNhanXet)
		from inserted i, dbo.PhieuPC PC
		where i.idPhanCong = PC.idPhanCong 
		and PC.tinhTrang = 0) > 0

		begin
			Print N'Phiếu phân công gần nhất chưa hoàn thành. Cần hoàn thành trước khi nhận xét.'
			Rollback tran
		end
go

alter trigger trg_ThemNhanXet on dbo.NhanXet
for insert , update
as
	if(select count (i.idNhanXet)
		from inserted i, dbo.PhieuPC PC
		where i.idPhanCong = PC.idPhanCong and i.ngayNhanXet <= PC.ngayPhanCong  ) > 0

		begin
			Print N'Ngày nhận xét phải lớn hơn ngày phân công.'
			Rollback tran
		end
	if( (select count(NX.idPhanCong) from inserted i ,
	dbo.NhanXet NX where i.idPhanCong = NX.idPhanCong ) 
	- (select count(CTPC.idPhanCong) from dbo.ChiTiet_PhieuPC CTPC  ,inserted i 
		where i.idPhanCong = CTPC.idPhanCong) ) > 0
		begin
			Print N'Vượt quá số lượng nhận xét cho phiếu phân công này. Cần xem lại danh sách phân công.'
			Rollback tran
		end
go

alter trigger trg_ThemPhieuCTPC on dbo.ChiTiet_PhieuPC
for insert , update
as
	if( select COUNT(i.idSV) 
		from inserted i , dbo.PhieuPC PC
		where i.idPhanCong = PC.idPhanCong and 
		i.tuNgay <= PC.ngayPhanCong ) > 0
	begin
		Print N'Thời gian bắt đầu thực tập phải lớn hơn ngày phân công.'
		Rollback tran
	end
go

alter trigger trg_ThemPhieuCTPC2 on dbo.chitiet_PhieuPC
for insert , update
as
	if(select count(*) 
		from inserted i ,dbo.ChiTiet_PhieuPC PPC, dbo.PhieuPC PC
		where i.idSV = PPC.idSV and PPC.idPhanCong = PC.idPhanCong and PC.tinhTrang = 0) > 1
	begin
		Print N'Phiếu thực tập trước đó chưa hoàn thành.'
		Rollback tran
	end
go

alter trigger trg_ThemPhieuCTPC3 on dbo.ChiTiet_PhieuPC
for insert, update
as
	if( select COUNT(i.idSV) 
		from inserted i , dbo.ChiTiet_DeTaiDK CTDK
		where i.idSV = CTDK.idSV and 
		CTDK.tinhTrang = 0 ) > 0
	begin
		Print N'Chưa duyệt sinh viên này.'
		Rollback tran
	end

	if( select COUNT(i.idSV) 
		from inserted i , dbo.SinhVien SV
		where i.idSV = SV.idSV and 
		SV.tinhTrang = 1 ) > 0
	begin
		Print N'Sinh viên này đã hoàn thành thực tập. Không được phân công thêm.'
		Rollback tran
	end
go

alter trigger trg_ThemPhieuCTPC4 on dbo.ChiTiet_PhieuPC
for insert , update
as
	if( select COUNT(i.idSV) 
		from inserted i , dbo.ChiTiet_DeTaiDK CTDK , dbo.PhieuPC PC
		where i.idSV = CTDK.idSV and i.idPhanCong = PC.idPhanCong
		and PC.idDeTai != CTDK.idDeTai
		) > 0
	begin
		Print N'Sinh viên không thuộc đề tài này.'
		Rollback tran
	end
go

alter trigger trg_ThemPhieuPC on dbo.PhieuPC
for insert , update
as
	if( select COUNT(i.idPhanCong) 
		from inserted i , dbo.DeTai DT
		where i.idDeTai = DT.idDeTai and DT.ngayKetThuc >= i.ngayPhanCong) > 0
	begin
		Print N'Ngày phân công phải lớn hơn ngày kết thúc đăng ký đề tài.'
		Rollback tran
	end
go




alter trigger trg_DangkyDetai on dbo.ChiTiet_DeTaiDK
for insert 
as
	if( select COUNT(i.idSV) 
		from inserted i , dbo.DeTai DT
		where i.idDeTai = DT.idDeTai and 
		i.ngayDangKy >= DT.ngayKetThuc or i.ngayDangKy <= dt.ngayBatDau) > 0
	begin
		Print N'Thời gian đăng ký đề tài đã hết.'
		Rollback tran
	end
	if(select count (i.idSV)
		from inserted i, dbo.DeTai DT
		where i.idDeTai = DT.idDeTai and DT.tinhTrangDT = 1) > 0
	begin
		Print N'Đề tài này đã đóng đăng ký.'
		Rollback tran
	end
go



create trigger trg_ThemDeTai on dbo.DeTai
for insert
as
	if( select COUNT(inserted.idDeTai) 
		from inserted
		where inserted.idCty is null and inserted.idGV is null) > 0
	begin
		Print N'Không thể bỏ trống idCty hoặc idGV'
		Rollback tran
	end
go

create trigger trg_ThemCty on dbo.Cty
for insert
as	
	
	if(select count(*) from inserted i, dbo.TaiKhoan TK 
		where i.taiKhoan = TK.taiKhoan and TK.idLoai != 3) > 0
		begin
			print N'Tài khoản không phải loại đối tác.'
			Rollback tran
		end

go




alter trigger trg_ThemGiangVien on dbo.GiangVien 
for insert
as
	if(select count(*) from inserted i, dbo.TaiKhoan TK 
		where i.taiKhoan = TK.taiKhoan and TK.idLoai != 2) > 0
		begin
			print N'Tài khoản không phải loại giảng viên.'
			Rollback tran
		end
	else
		begin
			update dbo.BoMon
			set SoGV = SoGV + 1
			from inserted
			where inserted.idBoMon = dbo.BoMon.idBoMon
		end
go
create trigger trg_CapNhatGiangVien on dbo.GiangVien 
for update
as
	if(select count(*) from inserted i, dbo.TaiKhoan TK 
		where i.taiKhoan = TK.taiKhoan and TK.idLoai != 2) > 0
		begin
			print N'Tài khoản không phải loại giảng viên.'
			Rollback tran
		end
	else
		begin
			update dbo.BoMon
			set SoGV = SoGV + 1
			from inserted
			where inserted.idBoMon = dbo.BoMon.idBoMon

			update dbo.BoMon
			set SoGV = SoGV - 1
			from deleted d
			where d.idBoMon = dbo.BoMon.idBoMon
		end
go

alter trigger trg_CapNhatSinhVien on dbo.SinhVien 
for update
as
	if(select count(*) from inserted i, dbo.TaiKhoan TK 
		where i.taiKhoan = TK.taiKhoan and TK.idLoai != 2) > 0
		begin
			print N'Tài khoản không phải loại sinh viên.'
			Rollback tran
		end
	else
		begin
			update dbo.Lop
			set SoSV = SoSV + 1
			from inserted
			where inserted.idLop = dbo.Lop.idLop

			update dbo.lop
			set SoSV = SoSV - 1
			from deleted d
			where d.idLop = dbo.Lop.idLop
		end
go

alter trigger trg_ThemSinhVien on dbo.SinhVien 
for insert 
as
	if(select count(*) from inserted i, dbo.TaiKhoan TK 
		where i.taiKhoan = TK.taiKhoan and TK.idLoai != 4) > 0
		begin
			print N'Tài khoản không phải loại sinh viên.'
			Rollback tran
		end
	else
		begin
			update dbo.Lop
			set SoSV = SoSV + 1
			from inserted
			where inserted.idLop = dbo.Lop.idLop
			--print N'Thêm thành công.'
		end
go



create trigger trg_ThemKhoa on dbo.Khoa
for insert , update
as
	begin
		if(
		 select count(*) from inserted i , Khoa k
		 where i.tenKhoa = k.tenKhoa ) > 1
		 begin
			print N'Tên này đã được sử dụng.'
			Rollback tran
		 end
		
	end
go

create trigger trg_ThemKhoaHoc on dbo.Khoahoc
for insert , update
as
	begin
		if(
		 select count(*) from inserted i , KhoaHoc k
		 where year(i.tuNamHoc ) =year(k.tuNamHoc) or year(i.denNamHoc) = year(k.denNamHoc)) > 1
		 begin
			print N'Năm này đã hiện hữu.'
			Rollback tran
		 end
		
	end
go
