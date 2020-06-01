INSERT INTO  LoaiTaiKhoan(tenLoai) ----ok bạn nhớ
VALUES 
('Admin'),
(N'Giảng Viên'),
(N'Đối Tác'),
(N'Sinh Viên')

--------------------------------------------------------------------------
INSERT INTO  TaiKhoan(taiKhoan,matKhau,sdt,email,ngayLap,idLoai) 
VALUES

--1.tài khoản admin:
('admin01',1001,'0232312244','admin01@gmail.com','2015-06-07',1),
('admin02',1002,'0867564534','admin02@gmail.com','2015-11-22',1),
('admin03',1003,'0978675643','admin03@gmail.com','2015-12-12',1)


----2.Tài Khoản Giảng Viên:
INSERT INTO  TaiKhoan(taiKhoan,matKhau,sdt,email,ngayLap,idLoai) 
VALUES
--('coanh2000','2000', '0986723456' ,'coanh2000@gmail.com','2017-01-15',2),   
--('thaybinh2001','2001','0123265342','thaybinh2001gmail.com','2017-02-05',2),
--('thayhan2002','2002','0237564323','thayhan2002@gmail.com','2017-12-15',2),
--('cohau2003','2003','0345342231','cohau2003@gmail.com','2017-05-23',2),
('thaytruong2004',2004,'0489344512','thaytruong2004@gmail.com','2017-05-19',2),
('thaytu2005',2005,'0768542312','thaytu2005@gmail.com','2017-04-29',2),
('thayhung2006',2006,'0435657445','thayhung2006@gmail.com','2017-03-19',2),
('covy2007',2007,'0987463129','covy007@gmail.com','2017-02-15',2),
('cotrinh2008',2008,'0435342512','cotrinh2008@gmail.com','2017-02-09',2),
('thaykiet2009',2009,'0567867345','thaykiet2009@gmail.com','2017-02-14',2),
('thayluan2010',2010,'0123656543','thayluan2010@gmail.com','2017-03-08',2),
('cokhoa2011',2011,'0345765123','cokhoa2011@gmail.com','2017-03-12',2),
('colan2012',2012,'0345645123','colan2012@gmail.com','2017-04-23',2),
('cophi2013',2013,'0567867487','cophi2013@gmail.com','2017-04-02',2),
('thaylam2014',2014,'0654469123','thaylam2014@gmail.com','2017-04-09',2),
('coyen2015',2015,'0786469123','coyen2015@gmail.com','2017-04-12',2),
('thayphong2016',2016,'0684685965','thayphong2016@gmail.com','2017-11-25',2),
('thaydo2017',2017,'0463345437','thaydo2017@gmail.com','2017-09-02',2),
('thayba2018',2018,'0567543567','thayba2018@gmail.com','2017-08-24',2),
('cohong2019',2019,'0546756451','cohong2019@gmail.com','2017-07-05',2),




------3.Tài Khoản Cty (đối tác):
INSERT INTO  TaiKhoan(taiKhoan,matKhau,sdt,email,ngayLap,idLoai) 
VALUES
('congtycntt','1001','0345723124','ctyCNTT@gmail.com','2015-01-12',3),    
('congtyvsv','1001','0546265656','ctyVSV@gmail.com','2015-02-05',3),
('congtyhdm',1003,'0213564456','ctyHDM@gmail.com','2015-12-15',3),
('congtydientu',1004,'0134342123','ctyDT@gmail.com','2015-05-23',3),
('congtyoto',1005,'0123344546','ctyOTO@gmail.com','2015-05-19',3),
('congtytaichinh',1006,'0131423567','ctyTC@gmail.com','2015-04-29',3),
('congtytienganh',1007,'0625657524','ctyTA@gmail.com','2015-03-19',3),
('congtyquanlihotel',1008,'0765465386','ctyQLHOTEL@gmail.com','2015-02-15',3),
('congtytiengnhat',1009,'0546342987','ctyTN@gmail.com','2015-02-09',3),
('congtykinhte',1010,'0508867546','ctyKTE@gmail.com','2015-01-04',3),
('congtykientruc',1011,'0789656546','ctyKTRUC@gmail.com','2015-03-08',3),
('congtydohoa',1012,'0487656098','ctyDOHOA@gmail.com','2015-03-08',3),
('congtyvanhoa',1013,'0809656022','ctyVANHOA@gmail.com','2015-03-08',3),
('congtynhatELC',1014,'0145656098','ctyNHATELC@gmail.com','2015-03-08',3),
('congtythuongmai',1015,'0607656001','ctyTHUONGMAI@gmail.com','2015-03-08',3),

select * from TaiKhoan where idLoai = 4
---4.Tài khoản Sinh Viên:
INSERT INTO  TaiKhoan(taiKhoan,matKhau,sdt,email,ngayLap,idLoai) 
VALUES
--('an1111','1111','0989232343','an1111@gmail.com','2020-05-27',4),    
--('binh1112','1112','0659232453','binh1112@gmail.com','2020-05-26',4),
--('han1113','1113','0239234332','han1113@gmail.com','2020-04-22',4),
--('hau1114','1113','0129342334','hau1114@gmail.com','2020-05-12',4),
('truong1115',1115,'0459344531','truong1115@gmail.com','2020-05-14',4),
('tuan1116',1116,'0236542398','tuan1116@gmail.com','2020-04-23',4),
('hung1117',1117,'0786657463','hung1117@gmail.com','2020-03-12',4),
('vy1118',1118,'0657463542','vy1118@gmail.com','2020-02-07',4),
('trinh1119',1119,'0615342532','trinh1119@gmail.com','2020-02-21',4),
('kiet1120',1120,'0987867543','kiet1120@gmail.com','2020-01-15',4),
('luan1121',1121,'0897656654','luan1121@gmail.com','2020-03-08',4),
('khoa1122',1122,'0879765643','khoa1122@gmail.com','2020-03-27',4),
('lan1123',1123,'0675645342','lan1123@gmail.com','2020-04-17',4),
('phi1124',1124,'0789867584','phi1124@gmail.com','2020-04-21',4),
('lam1125',1125,'0123698671','lam1125@gmail.com','2020-04-25',4),
('yen1126',1126,'0657469867','yen1126@gmail.com','2020-04-05',4),
('phong1127',1127,'0987685764','phong1127@gmail.com','2020-11-15',4),
('do1128',1128,'0764345676','do1128@gmail.com','2020-09-12',4),
('baroibeo1129',1129,'0978765654','baroibeo1129@gmail.com','2020-11-23',4),
('vin1130',1130,'0456543432','vin1130@gmail.com','2020-08-26',4),
('hong1131',1131,'0786756453','hong1131@gmail.com','2020-07-16',4),
('toan1132',1132,'0967564354','toan1132@gmail.com','2020-04-28',4) ---ok bạn nhớ


select * from dbo.khoahoc
--------------------------------------------------------------------------
INSERT INTO KhoaHoc(tenKhoaHoc,tuNamHoc,denNamHoc)
VALUES
--(N'Ðại học khóa 10','2010-12-23','2011-12-23'),
--(N'Ðại học khóa 11','2011-08-21','2015-08-12'),
--(N'Ðại học khóa 12','2012-10-08','2016-10-08'),
(N'Ðại học khóa 13','2013-02-03','2017-12-21'),
(N'Ðại học khóa 14','2014-04-16','2018- 09-22'),
(N'Ðại học khóa 15','2015-07-28','2019-06-07'),
(N'Ðại học khóa 16','2016-05-29','2020-07-09'),
(N'Ðại học khóa 17','2017-12-27','2021-04-02'),
(N'Ðại học khóa 18','2018-11-22','2022-03-06'),
(N'Ðại học khóa 19','2019-09-18','2023-06-21'),
(N'Ðại học khóa 20','2020-08-12','2024-01-16'),
(N'Ðại học khóa 21','2020-04-11','2025-02-06') ,
(N'Ðại học khóa 22','2020-11-12','2024-09-06') ,
(N'Ðại học khóa 23','2020-02-02','2024-11-26') ,
(N'Ðại học khóa 24','2020-06-23','2024-12-16') ,
(N'Ðại học khóa 24','2020-09-12','2024-11-03')	 ---ok bạn nhớ
--------------------------------------------------------------------------

INSERT INTO Khoa(tenKhoa) 
VALUES 
--(N'Khoa Công Nghệ thông tin và Truyền Thông'),
--(N'Khoa Dược'),
(N'Khoa Cơ Khí'),
(N'Khoa Điện Tử'),
(N'Khoa Ô Tô'),
(N'Khoa Luật'),
(N'Khoa Tiếng Anh'),
(N'Khoa Du Lịch'),
(N'Khoa Xây Dựng'),
(N'Khoa Nhật Bản Học'),
(N'Khoa Tài Chính Thương Mại'),
(N'Khoa Kiến Trúc'),
(N'Khoa Mỹ Thuật'),
(N'Khoa Xã Hội Nhân Văn'),
(N'Khoa Công Nghệ Việt Nhật'),
(N'Khoa Thương Mại')  ---ok bạn nhớ

--------------------------------------------------------------------------

INSERT INTO BoMon(tenBoMon,SoGV,idKhoa)
VALUES
(N'Hệ Thống Thông Tin',0,1),
(N'Công Nghệ Phần Mềm',0,1),
(N'Vi Sinh Vật',0,2),
(N'Hàn Điện Máy Gia Dụng',0,3),
(N'Lắp Ráp Đồ Điện Tử',0,4),
(N'Lắp Ráp Ô Tô',0,5),
(N'Luật Tài Chính',0,6),
(N'English 7',0,7),
(N'Quản Lí Khách Sạn',0,8),
(N'Tiếng Nhật Viết',0,9),
(N'Tài Chính Kinh Tế',0,10),
(N'Kiến Trúc Nhà',0,11),
(N'Vẽ Thiết Kế Đồ Họa ',0,12),
(N'Văn Học Và Xã Hội',0,13),
(N'Việt Nhật ELC',0,14),
(N'Thương Mại Kinh Tế',0,15)  ---ok bạn nhớ


--------------------------------------------------------------------------

INSERT INTO Lop(tenLop,SoSV,idBoMon,idKhoaHoc)  
VALUES
 (N'HTTT14',0,1,14),
(N'NTKDH12',0,12,12),
(N'VHXH13',0,13,13),
(N'VNELC14',0,14,14),
(N'TMKT15',0,15,15)   ---ok bạn nhớ
--------------------------------------------------------------------------
--update dbo.boMon set soGV = 0
--delete giangVien
--select * from dbo.boMon

INSERT INTO GiangVien(tenGV,hinhAnh,hhhv,namSinh,queQuan,gioiTinh,taiKhoan,idBoMon)
VALUES
--(N'Cô Lê Bảo Anh',NULL,N'Thạc Sĩ','1977-09-08',N'Hà Tĩnh',N'Nữ','coanh2000',1),
--(N'Thầy Bảo Bình',NULL,N'Thạc Sĩ','1977-12-12',N'Hà Nội',N'Nam','thaybinh2001',1),
(N'Thầy Lê Công Hân',NULL,N'Thạc Sĩ','1987-02-06',N'TPHCM',N'Nam','thayhan2002',1),
(N'Cô Lê Hậu',NULL,N'Tiến Sĩ','1971-02-16',N'TPHCM',N'Nữ','cohau2003',1),
(N'Thầy Công Trường',NULL,N'Tiến Sĩ','1972-12-09',N'TPHCM',N'Nam','thaytruong2004',2),

(N'Thầy Văn Tú',NULL,N'Tiến Sĩ','1973-01-19',N'Gia Lai',N'Nam','thaytu2005',2),

(N'Thầy Cao Hùng',NULL,N'Tiến Sĩ','1974-11-29',N'Kom Tum',N'Nam','thayhung2006',2),
(N'Cô Thúy Vy',NULL,N'Thạc Sĩ','1975-12-16',N'TPHCM',N'Nữ','covy2007',2),
(N'Cô Ngọc Trinh',NULL,N'Thạc Sĩ','1976-11-06',N'TPHCM',N'Nữ','cotrinh2008',2),
(N'Thầy Tuấn Kiệt',NULL,N'Tiến Sĩ','1978-12-29',N'TPHCM',N'Nam','thaykiet2009',2),
(N'Thầy Bùi Luân',NULL,N'Tiến Sĩ','1980-08-29',N'Nha Trang',N'Nam','thayluan2010',2),
(N'Cô Lâm Khoa',NULL,N'Thạc Sĩ','1981-07-06',N'TPHCM',N'Nữ','cokhoa2011',2),
(N'Cô Hồng Lan',NULL,N'Thạc Sĩ','1982-05-06',N'TPHCM',N'Nữ','colan2012',2),
(N'Cô Lan Phi',NULL,N'Thạc Sĩ','1983-08-26',N'Quãng Ngãi',N'Nữ','cophi2013',2),
(N'Thầy Tuấn Lâm',NULL,N'Tiến Sĩ','1984-2-29',N'Long An',N'Nam','thaylam2014',2),
(N'Cô Bùi Phi Yến',NULL,N'Thạc Sĩ','1985-08-26',N'Cần Thơ',N'Nữ','coyen2015',2),
(N'Thầy Tuấn Phong',NULL,N'Tiến Sĩ','1986-02-09',N'TPHCM',N'Nam','thayphong2016',2),
(N'Thầy Huy Đỗ',NULL,N'Tiến Sĩ','1987-12-09',N'TPHCM',N'Nam','thaydo2017',2),
(N'Thầy Tấn Trung ',NULL,N'Tiến Sĩ','1989-01-09',N'Đồng Tháp',N'Nam','thayba2018',2), -----:))))
(N'Cô Ngọc Hồng',NULL,N'Thạc Sĩ','1990-04-26',N'TPHCM',N'Nữ','cohong2019',2)    ---ok bạn nhớ

--------------------------------------------------------------------------
select * from sinhVien where idLoai = 4
--update lop set sosv = 2 
INSERT INTO SinhVien(tenSV,hinhAnh,namSinh,queQuan,gioiTinh,tinhTrang,taiKhoan,idLop) 
VALUES
--(N'Lê Ngọc An Kiệt',NULL,'1999-12-08',N'Phú Yên',N'Nam',0,'an1111',1), 
--(N'Nguyễn Hoàng Bình Phú',NULL,'1991-11-07',N'TPHCM',N'Nam',0,'binh1112',1),
--(N'Trần Ngọc Bảo Hân',NULL,'1992-10-06',N'TPHCM',N'Nữ',0,'han1113',1),
--(N'Cao Châu Hậu',NULL,'1993-09-05',N'TPHCM',N'Nam',0,'hau1114',1),
(N'Lê Hoàng Công Trường',NULL,'1994-08-04',N'TPHCM',N'Nam',0,'truong1115',1),
(N'Trần Tuấn Tú',NULL,'1995-07-03',N'Nha Trang',N'Nam',0,'tuan1116',41),
(N'Cao Hùng',NULL,'1990-07-03',N'Nha Trang',N'Nam',0,'hung1117',42),
(N'Lê Cao Vy',NULL,'1993-06-02',N'TPHCM',N'Nữ',0,'vy1118',43),
(N'Trần Bảo Trinh',NULL,'1991-05-01',N'Hà Nội',N'Nữ',0,'trinh1119',44),
(N'Lê Châu Kiệt',NULL,'1990-04-03',N'Cần Thơ',N'Nam',0,'kiet1120',45),
(N'Lê Phú Luân',NULL,'1996-07-03',N'TPHCM',N'Nam',0,'luan1121',52),
(N'Lâm Đình Khoa',NULL,'1992-04-12',N'Cao Lãnh',N'Nam',0,'khoa1122',41),
(N'Trần Lâm Lan',NULL,'1991-11-09',N'TPHCM',N'Nữ',0,'lan1123',52),
(N'Lâm Cao Phi',NULL,'1997-08-19',N'TPHCM',N'Nữ',0,'phi1124',43),
(N'Lê Quyền Lâm',NULL,'1992-04-13',N'Long An',N'Nam',0,'lam1125',55),
(N'Lê Bảo Yến',NULL,'1991-11-09',N'TPHCM',N'Nữ',0,'yen1126',55),
(N'Lê Luân Phong',NULL,'1996-07-03',N'TPHCM',N'Nam',0,'phong1127',44),
(N'Lê Trần Đỗ',NULL,'1996-12-13',N'TPHCM',N'Nam',0,'do1128',42),
(N'Phan Tấn Trung',NULL,'1999-08-13',N'Sa Đéc',N'Nam',0,'baroibeo1129',43),
(N'Lê Công Vin',NULL,'1999-01-13',N'TPHCM',N'Nam',0,'vin1130',45),
(N'Lê Bảo Hồng',NULL,'1992-01-19',N'TPHCM',N'Nữ',0,'hong1131',26),
(N'Lâm Đình Toàn',NULL,'1999-11-03',N'TPHCM',N'Nam',0,'toan1132',27)  ---ok bạn nhớ

--------------------------------------------------------------------------

INSERT INTO Cty(tenCty,hinhAnh,diaChi,taiKhoan)
VALUES
--(N'Công Ty CNTT & Truyền Thông',NULL,N'Quận 1- TPHCM','congtycntt'),
--(N'Công Ty Dược Sinh Học',NULL,N'Quận 2 - TPHCM','congtyvsv'),
(N'Công Ty Điện Máy Hàn ',NULL,N'Quận 9- TPHCM','congtyhdm'),
(N'Công Ty Điện Tử 4.0 ',NULL,N'Quận 8- TPHCM','congtydientu'),
(N'Công Ty Sản Xuất Ô tô',NULL,N'Quận Bình Thạnh - TPHCM','congtyoto'),
(N'Công Ty Tài Chính Thuế',NULL,N'Quận Gò Vấp -  TPHCM','congtytaichinh'),
(N'Công Ty VUS Tiếng Anh ',NULL,N'Quận 5- TPHCM','congtytienganh'),
(N'Công Ty Khách Sạn 5 Sao',NULL,N'Quận Phú Nhuận- TPHCM','congtyquanlihotel'),
(N'Công Ty Tiếng Nhật ',NULL,N'Quận 10- TPHCM','congtytiengnhat'),
(N'Công Ty Vốn Kinh Tế',NULL,N'Quận 3- TPHCM','congtykinhte'),
(N'Công Ty Kiến Trúc Nhà ',NULL,N'Quận 7- TPHCM','congtykientruc'),
(N'Công Ty Design Perfect ',NULL,N'Quận Tân Bình- TPHCM','congtydohoa'),
(N'Công Ty Văn Hóa Xã Hội TPHCM ',NULL,N'Quận 6- TPHCM','congtyvanhoa'),
(N'Công Ty ELC Nhật Bản ',NULL,N'Quận 4- TPHCM','congtynhatELC'),
(N'Công Ty Thương Mại Điện Tử OK ',NULL,N'Quận 12- TPHCM','congtythuongmai')	---ok bạn nhớ

--------------------------------------------------------------------------



INSERT INTO DeTai(tenDeTai,noiDungDT,ngayBatDau,ngayKetThuc,tinhTrangDT,idGV,idCty)
VALUES
--(N'Thông Tin Truyền Thông',N'Phân Tích HTTT Truyền Thông ','2020-09-12','2020-11-11',0,6,null),
(N'Vi Sinh Vật Học',N'Phân Tích Tế Bào','2020-02-02','2020-06-11',0,null,1),
(N'Hàn Công Trình Cao Ốc',N'Hàn Trong Công Ty Theo 2 Tháng','2020-10-02','2020-12-11',0,7,null),
(N'Lắp Ráp Điện Tử Nhà',N'Lắp Ráp Sữa Chữa Đồ Điện','2020-01-02','2020-05-11',1,4,39),
(N'Lắp Ráp Ô Tô Xưởng',N'Thực Tập Với Ô Tô Salon','2020-02-12','2020-04-14',1,5,40),
(N'Luật Tài Chính Nhà Nước',N'Tiểu Luận Và Báo Cáo Về Luật','2020-04-15','2020-06-07',1,6,41),
(N'Các Kĩ Năng Tiếng Anh',N'Giao Tiếp Đánh Giá Với Người Nước Ngoài','2020-02-04','2020-04-12',1,7,42),
(N'Thực Tập Tại Khách Sạn',N'Đánh Giá Thực Tập Nhân Viên','2020-10-19','2020-12-08',1,8,43),
(N'Tiếng Nhật Viết Theo Người Bản Xứ',N'Đánh Giá Đúng Kết Quả Viết','2020-07-14','2020-10-21',1,9,44),
(N'Tài Chính Kinh Tế Đối Ngoại',N'Bài Thu Hoạch  Về Tính Toán Kinh Tế Việt Nam','2020-05-02','2020-10-24',1,10,45),
(N'Lập Bản Vẽ Nhà',N'Đánh Giá Và Trình Bày Bản Vẽ Trước Hội Đồng','2020-10-02','2020-12-24',1,11,46),
(N'Đồ Họa Nơi Làm Việc',N'Vẽ Mô Hình Thiết Kế 3D','2020-02-03','2020-04-28',1,12,47),
(N'Viết Thu Hoạch Bảo Tàn Văn Học',N'Trình Bày Và Nêu Nguồn Gốc Văn Hóa Xã Hội','2020-10-02','2020-12-14',1,13,48),
(N'Tham Quan và Tìm Hiểu ELC',N'Viết Thu Hoạch Tiếng Nhật','2020-09-02','2020-11-16',1,14,49),
(N'Trình Bày Thương Mại Kinh Tế',N'Thương Mại Kinh Tế 2020 Của Việt Nam','2020-10-24','2020-12-09',1,15,50)	---ok bạn nhớ	

--------------------------------------------------------------------------
select * from ChiTiet_DeTaiDK
select * from SinhVien where tinhTrang = 1
select * from DeTai where ngayKetThuc > '2020-04-12'
delete ChiTiet_DeTaiDK where idSV = 3
delete DeTai where idDeTai = 4

select * from ChiTiet_DeTaiDK i , dbo.SinhVien SV
				where i.idSV = SV.idSV and SV.tinhTrang = 1 
				or i.tinhTrang = 0

--update ChiTiet_DeTaiDK set idSV = 100 where idSV = 1
INSERT INTO ChiTiet_DeTaiDK(idSV,idDeTai,ngayDangKy)  ---dựa vào IDSV với detai nên có thay đổi 
															--muốn nhiều thì thêm nữa  :))
VALUES
--(1,2,'2020-10-02'),
--(2,2,'2020-10-09'),
(3,6,'2020-11-12'),
(25,15,'2020-03-23'),
(26,16,'2020-03-09'),
(27,17,'2020-05-21'),
(28,18,'2020-03-17'),
(29,19,'2020-11-22'),
(30,20,'2020-09-12'),
(31,21,'2020-06-23'),
(47,22,'2020-11-25'),
(48,23,'2020-03-29'),
(53,24,'2020-11-23'),
(54,25,'2020-10-02')
--(55,26,'2020-11-26')
--select * from detai
--select * from detai where ngayKetThuc <= '2021-11-11'
--select * from phieuPC
--------------------------------------------------------------------------
select * from dbo.ChiTiet_DeTaiDK
select * from dbo.DeTai
select * from dbo.phieuPC
select * from dbo.ChiTiet_PhieuPC
update sinhvien set tinhTrang = 1 where idsv=2
INSERT INTO PhieuPC(ngayPhanCong,idDeTai,tinhTrang)
values
--('2021-01-19',2,0),

('2021-03-18',2,0),
--('2020-03-09',14),
--('2020-03-13',15),
--('2020-05-08',16),
--('2020-03-15',17),
--('2020-11-19',18),
--('2020-09-05',19),
--('2020-06-21',20),
--('2020-11-07',21),
--('2020-03-21',22),
--('2020-11-27',23),
--('2020-10-22',24),
--('2020-11-29',25) ----ok bạn nhớ nhớ thay đổi theo iddetai nhá 

--------------------------------------------------------------------------
--select * from PhieuPC
--select * from sinhvien

--update PhieuPC set tinhtrang = 1 where idPhanCong = 14
select * from dbo.DeTai
select * from dbo.PhieuPC
select * from dbo.SinhVien
select * from dbo.ChiTiet_DeTaiDK
select * from dbo.ChiTiet_PhieuPC where idPhanCong = 17
update SInhvien set tinhTrang = 1 where idSV = 10
delete dbo.PhieuPC where idSV = 1 and idPhanCong =17

select *
		from ChiTiet_PhieuPC i , dbo.ChiTiet_DeTaiDK CTDK , dbo.PhieuPC PC
		where i.idSV = CTDK.idSV and i.idPhanCong = PC.idPhanCong
		and PC.idDeTai != CTDK.idDeTai

INSERT INTO ChiTiet_PhieuPC(idSV,idPhanCong,tuNgay,denNgay,NdThucTap)
VALUES
--(1,14,'2020-12-26','2021-01-03',N'Phân Tích HTTT '),
(1,1018,'2021-04-26','2021-05-02',N'Phân Tích HTTT'),
(23,4,'2020-10-02','2020-12-11',N'Công Trình Cao Ốc'),
(24,5,'2020-01-02','2020-05-11',N'Ráp Sữa Chữa Đồ Điện'),
(25,6,'2020-02-12','2020-04-14',N'Lắp Ráp Ô Tô Salon'),
(26,7,'2020-04-15','2020-06-07',N'Tiểu Luận Và Báo Cáo Về Luật Tài Chính Nhà Nước'),
(27,8,'2020-02-04','2020-04-12',N'Các Kĩ Năng Tiếng Anh Giao Tiếp'),
(28,9,'2020-10-19','2020-12-08',N'Thực Tập Tại Khách Sạn Và Đánh Giá'),
(29,10,'2020-07-14','2020-10-21',N'Kết Quả Viết Tiếng Nhật Viết Theo Người Bản Xứ'),
(30,11,'2020-05-02','2020-10-24',N'Tài Chính Kinh Tế Đối Ngoại Và Tính Toán Kinh Tế Việt Nam'),
(31,12,'2020-10-02','2020-12-24',N'Lập Bản Vẽ Nhà Đánh Giá Và Trình Bày Bản Vẽ'),
(47,13,'2020-02-03','2020-04-28',N'Đồ Họa Vẽ Mô Hình Thiết Kế 3D'),
(48,14,'2020-10-02','2020-12-14',N'Viết Thu Hoạch Bảo Tàn Văn Học Và Nêu Nguồn Gốc Văn Hóa Xã Hội'),
(53,15,'2020-09-02','2020-11-16',N'Tham Quan và Tìm Hiểu Trung Tâm ELC Với Người Nhật'),
(54,16,'2020-10-24','2020-12-09',N'Trình Bày Thương Mại Kinh Tế 2020 Của Việt Nam')  ----ok bạn nhớ

--------------------------------------------------------------------------
select * from phieuPC
select * from ChiTiet_PhieuPC --where ngayPhanCong >= '2020-01-19'
select * from SinhVien
select * from NhanXet
INSERT INTO NhanXet(ngayNhanXet,idPhanCong)
VALUES
('2021-02-12',14),
('2020-07-06',12),
('2020-12-13',13),
('2020-04-08',14),
('2020-04-23',15),
('2020-06-18',16),
('2020-04-28',17),
('2020-12-29',18),
('2020-10-15',19),
('2020-07-22',20),
('2020-12-11',21),
('2020-04-15',22),
('2020-12-08',23),
('2020-11-28',24),
('2020-12-21',25)  --ok

--------------------------------------------------------------------------
--select * from ChiTiet_NhanXet ctnx , NhanXet nx, ChiTiet_PhieuPC ctpc
--where ctnx.idNhanxet = nx.idNhanXet and nx.idPhanCong = ctpc.idPhanCong and ctpc.idSV = ctnx.idSV

INSERT INTO ChiTiet_NhanXet(idSV,idNhanXet,DiemQuaTrinh,NoiDungNX)
VALUES
(1,16,10,N'Cần bổ sung thêm nhiều tài liệu liên quan  có demo'),
(22,2,7.3,N'Thu nhập và phân tích rõ hơn vi sinh vật'),
(23,3,8.4,N'Quá trình thực tập có thái độ tích cực'),
(24,4,6.5,N'Cần xem lại vững lí thuyết cho phần mạch điện'),
(25,5,7.6,N'Lắp ráp có kĩ năng tốt  và nắm vững chi tiết máy'),
(26,6,8.7,N'Tính toán kĩ lưỡng về số liệu và kết quả chuẩn xác'),
(27,7,7.5,N'Kĩ năng giao tiếp tiếng anh tốt và phát âm  chuẩn'),
(28,8,6.9,N'Thái độ thực tập chưa tốt cần cái thiện '),
(29,9,8.6,N'Chữ viết tiếng Nhật chuẩn xác và đẹp mắt'),
(30,10,7.3,N'Số liệu tính toán gần chính xác cần phát huy thêm'),
(31,11,8,N'Bản vẽ đẹp có quy  mô tốt và có hướng phát triển '),
(47,12,5.9,N'Mô hình 3D chưa gây ấn tượng và sai kĩ thuật cần tìm hiểu kĩ'),
(48,13,7.6,N'Bài thu hoạch khá và nắm vững được nền văn hóa xã hội'),
(53,14,8.1,N'Tìm hiểu và báo cáo tốt về  trung tâm'),
(54,15,6.4,N'Thông tin đưa ra chính xác và thuyết phục')   --ok

--------------------------------------------------------------------------
--select * from PhieuPC
--select * from ChiTiet_PhieuPC
--update KetQuaThucTap set ngayDanhGia = '2016-06-12' where idSV = 1
--delete KetQuaThucTap

INSERT INTO KetQuaThucTap(idSV,idGV,ngayDanhGia,danhGia,nhanXet)
VALUES
(1,6,'2023-06-12',1,N'Khá tốt cần phát huy'),
(22,2,'2020-07-06',1,N'Nắm vững kiến thức cơ bản và cốt lỗi'),
(23,3,'2020-12-13',1,N'Thực hiện tốt và tích cực'),
(24,4,'2020-04-08',0,N'Cần xem lại vững lí thuyết và thực tập lại'),
(25,5,'2020-04-23',1,N'Nắm vững kiến thức thực hành'),
(26,6,'2020-06-18',1,N'Tính toán tốt và số liệu chuẩn'),
(27,7,'2020-04-28',1,N'Tiếng anh tốt và phát âm tốt'),
(28,8,'2020-12-29',0,N'Thái độ thực tập tệ cần sửa chữa '),
(29,9,'2020-10-15',1,N'Cách trình bày chuẩn xác và đẹp mắt'),
(30,10,'2020-07-22',1,N'Số liệu gần chính xác cần đọc tài liệu liên quan'),
(31,11,'2020-12-11',1,N'Có quy mô tốt và phát triển ổn định'),
(47,12,'2020-04-15',0,N'Mô hình sai kĩ thuật cần tìm hiểu kĩ'),
(48,13,'2020-12-08',1,N'Bài thu hoạch khá và nắm vững kiến thức'),
(53,14,'2020-11-28',1,N'Trung Tâm phản hồi tốt về thái độ và học tập'),
(54,15,'2020-12-21',1,N'Thông tin đưa ra tốt và thuyết phục người xem ')  --ok






















