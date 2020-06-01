
insert into dbo.LoaiTaiKhoan (tenLoai) values(N'Admin')
insert into dbo.LoaiTaiKhoan (tenLoai) values(N'Giảng Viên')
insert into dbo.LoaiTaiKhoan (tenLoai) values(N'Đối Tác')
insert into dbo.LoaiTaiKhoan (tenLoai) values(N'Sinh Viên')

insert into dbo.TaiKhoan (taiKhoan, matKhau, sdt, email, ngayLap, idLoai)
values ('nam123','nam123','0921293742','nam123@gmail.com', '01/12/1122',4)
insert into dbo.TaiKhoan (taiKhoan, matKhau, sdt, email, ngayLap, idLoai)
values ('GV2','GV2','0915293742','GV2@gmail.com', '01/12/1122',2)
insert into dbo.TaiKhoan (taiKhoan, matKhau, sdt, email, ngayLap, idLoai)
values ('GV3','GV3','0922291742','GV3@gmail.com', '01/12/1122',2)
insert into dbo.TaiKhoan (taiKhoan, matKhau, sdt, email, ngayLap, idLoai)
values ('GV4','GV4','0922291743','GV4@gmail.com', '01/12/1122',2)

insert into dbo.KhoaHoc (tuNamHoc,denNamHoc) values ('2017-01-01','2018-01-01')

insert into dbo.Khoa (tenKhoa) values ('CNTT')
insert into dbo.Khoa (tenKhoa) values ('Oto')

insert into dbo.BoMon (tenBoMon,SoGV,idKhoa) values (N'Hệ thống thông tin', 7,1)
insert into dbo.BoMon (tenBoMon,SoGV,idKhoa) values (N'Công nghệ phần mềm', 3,1)

insert into dbo.Lop (tenLop,SoSV,idBoMon,idKhoaHoc) values (N'CBN-111' , 30,1,1)


insert into dbo.GiangVien(tenGV,hinhAnh,hhhv,namSinh,queQuan,gioiTinh,taiKhoan,idBoMon)
		values(N'Nguyễn Hay A', null,N'Tiến sĩ', '1990-01-02', N'TP-HCM',N'Nam','GV3',1)
		insert into dbo.GiangVien(tenGV,hinhAnh,hhhv,namSinh,queQuan,gioiTinh,taiKhoan,idBoMon)
		values(N'Nguyễn Hay C', null,N'Tiến sĩ', '1990-01-02', N'TP-HCM',N'Nam','GV4',2)

insert into dbo.DeTai (noiDungDT,ngayBatDau,ngayKetThuc,idGV)
values(N'Phân tích hệ thống bán hàng' , '2017-11-02','2017-11-16', 1)
insert into dbo.DeTai (tenDeTai,noiDungDT,ngayBatDau,ngayKetThuc,idCty)
values(N'Phân tích',N'Phân tích hệ thống quản lý nhân sự' , '2017-11-02','2017-11-16', 1)


insert into dbo.ChiTiet_DeTaiDK (idSV,idDeTai,ngayDangKy)
values (1,1,'2017-11-14')
insert into dbo.ChiTiet_DeTaiDK (idSV,idDeTai,ngayDangKy)
values (4,1,'2017-11-14')
insert into dbo.ChiTiet_DeTaiDK (idSV,idDeTai,ngayDangKy)
values (5,3,'2017-11-14')

select * from DeTai