delete from dieuphoithietbi;
delete from cabenh;
delete from thietbiyte;
delete from phongbenh;
delete from benh;
delete from benhnhan;
delete from bacsi;
delete from taikhoan;

commit;

drop table dieuphoithietbi;
drop table cabenh;
drop table thietbiyte;
drop table phongbenh;
drop table benh;
drop table benhnhan;
drop table bacsi;
drop table taikhoan;

commit;

alter SESSION set NLS_DATE_FORMAT = 'DD/MM/YYYY';

CREATE TABLE BACSI
(
	MaBS VARCHAR(10) NOT NULL,
	HoTen VARCHAR2(100) NOT NULL,
	GioiTinh VARCHAR(10),
	NgaySinh DATE,
	QueQuan VARCHAR(100),
	NoiOHienTai VARCHAR(100),
	TenKhoa VARCHAR(50),
	NamPhucVu NUMBER,
	CONSTRAINT PK_BACSI PRIMARY KEY (MaBS)
);
commit;

CREATE TABLE BENHNHAN
(
	MaBN VARCHAR(10) NOT NULL,
	HoTen VARCHAR2(100) NOT NULL,
	GioiTinh VARCHAR(10),
	NgaySinh DATE,
	QueQuan VARCHAR(100),
	NoiOHienTai VARCHAR(100),
	CONSTRAINT PK_BENHNHAN PRIMARY KEY (MaBN)
);

commit;

create table benh
(
    mabenh varchar(50),
    tenbenh varchar2(100),
    tenkhoa varchar(50),
    constraint pk_benh primary key (mabenh)
);

commit;

create table phongbenh
(
    maphong varchar(10),
    loai varchar(20),
    toa number,
    lau number,
    succhua number,
    controng number,
    constraint pk_phongbenh primary key (maphong)
);
commit;

create table cabenh
(
    maca varchar(20) unique,
    mabn varchar(10),
    mabs varchar(10),
    mabenh varchar(50),
    mucdo varchar2(20),
    hinhthuc varchar(20),
    ngaybatdau timestamp,
    ngayketthuc timestamp,
    tinhtrang varchar(20),
    maphong varchar(10),
    constraint pk_cabenh primary key (maca,mabn,mabs,mabenh,ngaybatdau),
    constraint fk_cabenh_mabn foreign key (mabn) references benhnhan(mabn),
    constraint fk_cabenh_mabs foreign key (mabs) references bacsi(mabs),
    constraint fk_cabenh_mabenh foreign key (mabenh) references benh(mabenh),
    constraint fk_cabenh_maphong foreign key (maphong) references phongbenh (maphong)
);

commit;

create table thietbiyte
(
    mathietbi varchar(10),
    tenthietbi varchar2(50),
    loaisd varchar2(20),
    congdung varchar2(200),
    sltong number,
    slconlai number,
    constraint pk_thietbiyte primary key (mathietbi)
);

commit;

create table dieuphoithietbi
(
    maca varchar(20),
    mathietbi varchar(10),
    soluong number,
    ngaydieuphoi timestamp,
    ngayketthuc timestamp,
    constraint pk_dieuphoithietbi primary key (maca,mathietbi,ngaydieuphoi),
    constraint fk_dieuphoithietbi_maca foreign key (maca) references cabenh(maca),
    constraint fk_dieuphoithietbi_mathietbi foreign key (mathietbi) references thietbiyte(mathietbi)
);

commit;

create table taikhoan
(
    tendangnhap varchar(10),
    matkhau varchar(100),
    constraint pk_taikhoan primary key (tendangnhap)
);

commit;

INSERT INTO BACSI VALUES ('BS001', 'Le Tam Khoa', 'Nam', '08/04/1987', '53 Nguyen Hue, My Tho, Tien Giang', '123 Le Loi, Thanh pho Thu Dau Mot, Binh Duong', 'Cap Cuu', 6);
INSERT INTO BACSI VALUES ('BS002', 'Tran Minh An', 'Nam', '25/09/1976', '35 Tran Phu, Le Loi, Quang Ngai', '456 Le Duan, Cam Le, Da Nang', 'Noi Soi', 17);
INSERT INTO BACSI VALUES ('BS003', 'Truong Anh Khanh', 'Nu', '17/11/1979', '36 Tran Hung Dao, Cam Le, Da Nang', '789 Tran Phu, Dong Son, Thanh Hoa', 'Nhi', 14);
INSERT INTO BACSI VALUES ('BS004', 'Phan Ngoc Quynh', 'Nu', '12/06/1971', '45 Le Loi, Thanh Hoa', '321 Nguyen Hue, Ben Thanh, Thanh pho Ho Chi Minh', 'Nhi', 22);
INSERT INTO BACSI VALUES ('BS005', 'Nguyen Thanh Binh', 'Nu', '21/08/1973', '56 Nguyen Hue, Quan 1, Thanh pho Ho Chi Minh', '654 Le Loi, Hai Chau, Da Nang', 'Noi Soi', 20);
INSERT INTO BACSI VALUES ('BS006', 'Phan Minh Lien', 'Nu', '30/12/1979', '78 Le Duan, Hai Chau, Da Nang', '987 Le Thanh Ton, Le Hong Phong, Thanh Hoa', 'Noi Soi', 14);
INSERT INTO BACSI VALUES ('BS007', 'Nguyen Minh Duong', 'Nu', '15/03/1975', '23 Nguyen Trai, Thanh Hoa', '147 Nguyen Van Linh, Hai Chau, Da Nang', 'Noi Soi', 18);
INSERT INTO BACSI VALUES ('BS008', 'Truong Tri Khanh', 'Nam', '09/07/1971', '56 Tran Phu, Ha Long, Quang Ninh', '135 Le Thanh Tong, Hong Gai, Quang Ninh', 'Truyen Nhiem', 22);
INSERT INTO BACSI VALUES ('BS009', 'Phan Thanh An', 'Nam', '14/10/1989', '23 Nguyen Chi Thanh, Di An, Binh Duong', '246 Le Loi, Tan Lap, Binh Duong', 'Nhi', 4);
INSERT INTO BACSI VALUES ('BS010', 'Phan Minh Ha', 'Nam', '22/01/1985', '12 Tran Hung Dao, Long Xuyen, An Giang', '963 Tran Hung Dao, My An, An Giang', 'Ung Buou', 8);
INSERT INTO BACSI VALUES ('BS011', 'Le Tam Khoa', 'Nam', '06/11/1980', '23 Nguyen Trai, Thai Nguyen', '753 Nguyen Van Cu, Quyet Thang, Thai Nguyen', 'Ung Buou', 13);
INSERT INTO BACSI VALUES ('BS012', 'Vo Thanh Ha', 'Nam', '29/03/1975', '45 Tran Hung Dao, Ninh Kieu, Can Tho', '852 Le Hong Phong, Ninh Kieu, Thanh pho Hai Phong', 'Cap Cuu', 18);
INSERT INTO BACSI VALUES ('BS013', 'Hoang Anh Tu', 'Nam', '02/02/1979', '36 Tran Hung Dao, Cam Le, Da Nang', '369 Le Duan, Cam Le, Da Nang', 'Ung Buou', 14);
INSERT INTO BACSI VALUES ('BS014', 'Nguyen Tam Hoa', 'Nam', '18/07/1971', '45 Tran Hung Dao, Hai Chau, Da Nang', '951 Nguyen Van Linh, Hai Chau, Da Nang', 'Ung Buou', 22);
INSERT INTO BACSI VALUES ('BS015', 'Nguyen Tri Hao', 'Nu', '09/05/1986', '56 Nguyen Hue, Quan 1, Thanh pho Ho Chi Minh', '753 Le Duan, Hai Chau, Da Nang', 'Cap Cuu', 7);
INSERT INTO BACSI VALUES ('BS016', 'Tran Kim Khoa', 'Nam', '24/09/1980', '23 Nguyen Chi Thanh, Di An, Binh Duong', '369 Le Loi, Thu Dau Mot, Binh Duong', 'Nhi', 13);
INSERT INTO BACSI VALUES ('BS017', 'Pham Tri Hao', 'Nam', '16/12/1972', '45 Tran Hung Dao, Hai Chau, Da Nang', '753 Nguyen Chi Thanh, Hai Chau, Da Nang', 'Cap Cuu', 21);
INSERT INTO BACSI VALUES ('BS018', 'Pham Kim Duong', 'Nam', '10/02/1977', '67 Tran Phu, Nha Trang, Khanh Hoa', '963 Le Loi, Nha Trang, Khanh Hoa', 'Noi Soi', 16);
INSERT INTO BACSI VALUES ('BS019', 'Le Tam Hao', 'Nam', '05/09/1971', '89 Nguyen Chi Thanh, Buon Ma Thuot, Dak Lak', '753 Nguyen Van Linh, Buon Ma Thuot, Dak Lak', 'Nhi', 22);
INSERT INTO BACSI VALUES ('BS020', 'Le Tri Hoa', 'Nam', '27/11/1972', '36 Tran Hung Dao, Cam Le, Da Nang', '963 Le Duan, Cam Le, Da Nang', 'Nhi', 20);

commit;

INSERT INTO BENHNHAN VALUES ('BN001', 'Tran Anh Lien', 'Nu', '21/03/1992', '36 Duong Le Loi, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh', '42 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN002', 'Le Ngoc Quynh', 'Nu', '15/07/1985', '18 Duong Tran Phu, Phuong Loc Tho, Thanh pho Nha Trang, Tinh Khanh Hoa', '57 Duong Le Hong Phong, Phuong 1, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau');
INSERT INTO BENHNHAN VALUES ('BN003', 'Vo Tri Quynh', 'Nam', '03/09/1988', '23 Duong Tran Hung Dao, Phuong Vinh Thanh, Thanh pho Rach Gia, Tinh Kien Giang', '12 Duong Hung Vuong, Phuong Le Loi, Thanh pho Hue, Tinh Thua Thien Hue');
INSERT INTO BENHNHAN VALUES ('BN004', 'Nguyen Anh Quynh', 'Nu', '15/07/1999', '35 Duong Nguyen Thi Minh Khai, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh', '72 Duong Tran Phu, Phuong Phong Nam, Thanh pho Phan Thiet, Tinh Binh Thuan');
INSERT INTO BENHNHAN VALUES ('BN005', 'Hoang Minh Ha', 'Nu', '28/05/1994', '30 Duong Ham Nghi, Phuong Nguyen Thai Binh, Quan 1, Thanh pho Ho Chi Minh', '39 Duong Le Duong, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN006', 'Pham Minh An', 'Nu', '17/08/1987', '51 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh', '51 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN007', 'Le Thi Phuong', 'Nu', '05/11/1991', '29 Duong Nguyen Thi Minh Khai, Phuong Da, Quan 1, Thanh pho Ho Chi Minh', '44 Duong Tran Quang Dieu, Phuong Phuoc Ninh, Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN008', 'Vo Anh Khanh', 'Nam', '09/02/2015', '75 Duong Tran Hung Dao, Phuong Phuoc My, Thanh pho Quy Nhon, Tinh Binh Dinh', '20 Duong Tran Phu, Phuong 7, Thanh pho Ca Mau, Tinh Ca Mau');
INSERT INTO BENHNHAN VALUES ('BN009', 'Tran Tam Tu', 'Nam', '12/06/2010', '63 Duong Nguyen Thi Minh Khai, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh', '37 Duong Le Duong, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN010', 'Truong Kim An', 'Nam', '08/04/1993', '55 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh', '82 Duong Tran Phu, Phuong Xuan An, Thanh pho Phan Thiet, Tinh Binh Thuan');
INSERT INTO BENHNHAN VALUES ('BN011', 'Nguyen Minh Phuong', 'Nam', '27/10/1997', '26 Duong Le Hong Phong, Phuong 4, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau', '48 Duong Tran Hung Dao, Phuong An Binh, Thanh pho Ha Long, Tinh Quang Ninh');
INSERT INTO BENHNHAN VALUES ('BN012', 'Tran Thi Hao', 'Nam', '14/09/1986', '14 Duong Phan Chu Trinh, Phuong Da Kao, Quan 1, Thanh pho Ho Chi Minh', '33 Duong Hung Vuong, Phuong Hoa Cuong Bac, Quan Hai Chau, Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN013', 'Hoang Tam Hao', 'Nu', '02/07/1995', '67 Duong Nguyen Thi Minh Khai, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh', '41 Duong Tran Quang Dieu, Phuong Hoa Tho Tay, Quan Cam Le, Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN014', 'Le Thu Phuong', 'Nam', '19/01/2016', '72 Duong Tran Hung Dao, Phuong Truong Xuan, Thanh pho Tam Ky', '19 Duong Tran Phu, Phuong Hau Giang, Thanh pho Can Tho, Tinh Can Tho');
INSERT INTO BENHNHAN VALUES ('BN015', 'Truong Minh Hoa', 'Nu', '09/11/1988', '58 Duong Le Hong Phong, Phuong 5, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau', '24 Duong Tran Hung Dao, Phuong Vinh Hai, Thanh pho Nha Trang, Tinh Khanh Hoa');
INSERT INTO BENHNHAN VALUES ('BN016', 'Truong Quoc Khanh', 'Nu', '16/06/1992', '13 Duong Hung Vuong, Phuong Vinh Hai, Thanh pho Nha Trang, Tinh Khanh Hoa', '31 Duong Ham Nghi, Phuong Cau Ong Lanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN017', 'Pham Anh Ha', 'Nam', '25/03/1987', '46 Duong Le Duong, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh', '53 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN018', 'Truong Tam Duong', 'Nu', '13/02/2015', '80 Duong Tran Phu, Phuong Van Thanh, Thanh pho Vinh, Tinh Nghe An', '27 Duong Nguyen Thi Minh Khai, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN019', 'Vo Ngoc Tu', 'Nam', '06/05/1991', '42 Duong Tran Quang Dieu, Phuong Hoa Tho Dong, Quan Cam Le, Thanh pho Da Nang', '67 Duong Tran Hung Dao, Phuong 1, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau');
INSERT INTO BENHNHAN VALUES ('BN020', 'Vo Anh Tu', 'Nam', '22/07/1985', '16 Duong Phan Chu Trinh, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh', '35 Duong Hung Vuong, Phuong Thach Thang, Thanh pho Hue, Tinh Thua Thien Hue');
INSERT INTO BENHNHAN VALUES ('BN021', 'Truong Quoc Hoa', 'Nu', '11/09/1990', '60 Duong Nguyen Thi Minh Khai, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh', '22 Duong Tran Quang Dieu, Phuong Thac Gian, Quan Cam Le, Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN022', 'Nguyen Thanh Khanh', 'Nam', '30/12/2017', '39 Duong Tran Hung Dao, Phuong Phuoc Trung, Thanh pho Quy Nhon, Tinh Binh Dinh', '74 Duong Le Hong Phong, Phuong 7, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau');
INSERT INTO BENHNHAN VALUES ('BN023', 'Hoang Tri Khoa', 'Nu', '18/06/1988', '18 Duong Le Duong, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh', '50 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN024', 'Le Thanh Ha', 'Nam', '07/04/1992', '50 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh', '25 Duong Le Hong Phong, Phuong 2, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau');
INSERT INTO BENHNHAN VALUES ('BN025', 'Vo Ngoc Quynh', 'Nam', '24/10/1996', '44 Duong Tran Hung Dao, Phuong Vinh Hoa, Thanh pho Rach Gia, Tinh Kien Giang', '69 Duong Nguyen Thi Minh Khai, Phuong Da Kao, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN026', 'Tran Thu Hoa', 'Nu', '01/03/2013', '36 Duong Tran Quang Dieu, Phuong An Hai Bac, Quan Son Tra, Thanh pho Da Nang', '61 Duong Le Duong, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN027', 'Tran Anh Duong', 'Nu', '20/09/1990', '33 Duong Hung Vuong, Phuong Phuong Sai, Thanh pho Tuy Hoa, Tinh Phu Yen', '58 Duong Tran Quang Dieu, Phuong Thac Gian, Quan Cam Le, Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN028', 'Nguyen Thu Khanh', 'Nam', '09/07/1983', '71 Duong Nguyen Thi Minh Khai, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh', '46 Duong Tran Hung Dao, Phuong Da Kao, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN029', 'Hoang Tri Duong', 'Nu', '26/04/1995', '20 Duong Le Duong, Phuong 7, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau', '39 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN030', 'Truong Ngoc Hieu', 'Nam', '10/11/1991', '64 Duong Tran Phu, Phuong Phong Nam, Thanh pho Phan Thiet, Tinh Binh Thuan', '27 Duong Le Hong Phong, Phuong 5, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau');
INSERT INTO BENHNHAN VALUES ('BN031', 'Phan Thanh Hieu', 'Nu', '28/02/1987', '52 Duong Tran Hung Dao, Phuong Van Thanh, Thanh pho Vinh, Tinh Nghe An', '15 Duong Tran Quang Dieu, Phuong Phuoc Trung, Thanh pho Quy Nhon, Tinh Binh Dinh');
INSERT INTO BENHNHAN VALUES ('BN032', 'Phan Tri Quynh', 'Nu', '14/05/2009', '30 Duong Phan Chu Trinh, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh', '49 Duong Nguyen Thi Minh Khai, Phuong Thach Thang, Thanh pho Hue, Tinh Thua Thien Hue');
INSERT INTO BENHNHAN VALUES ('BN033', 'Le Minh Binh', 'Nam', '03/08/1996', '76 Duong Le Duong, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh', '23 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN034', 'Pham Anh Hao', 'Nu', '18/11/1993', '40 Duong Tran Quang Dieu, Phuong An Hai Bac, Quan Son Tra, Thanh pho Da Nang', '65 Duong Tran Hung Dao, Phuong 1, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau');
INSERT INTO BENHNHAN VALUES ('BN035', 'Nguyen Ngoc Quynh', 'Nam', '07/07/1989', '18 Duong Le Hong Phong, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh', '55 Duong Nguyen Thi Minh Khai, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN036', 'Nguyen Minh Phuong', 'Nam', '25/09/1984', '82 Duong Tran Phu, Phuong Hau Giang, Thanh pho Can Tho, Tinh Can Tho', '26 Duong Le Hong Phong, Phuong 2, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau');
INSERT INTO BENHNHAN VALUES ('BN037', 'Vo Anh Tuan', 'Nu', '13/01/1992', '43 Duong Tran Hung Dao, Phuong Vinh Hai, Thanh pho Nha Trang, Tinh Khanh Hoa', '68 Duong Nguyen Thi Minh Khai, Phuong Da Kao, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN038', 'Truong Ngoc Khoa', 'Nam', '30/05/2012', '35 Duong Tran Quang Dieu, Phuong Hoa Tho Dong, Quan Cam Le, Thanh pho Da Nang', '60 Duong Tran Hung Dao, Phuong Phuoc Trung, Thanh pho Quy Nhon, Tinh Binh Dinh');
INSERT INTO BENHNHAN VALUES ('BN039', 'Tran Anh Hieu', 'Nu', '19/03/1991', '13 Duong Phan Chu Trinh, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh', '28 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN040', 'Nguyen Minh Tuan', 'Nam', '06/08/2013', '45 Duong Tran Quang Dieu, Phuong Thac Gian, Quan Cam Le, Thanh pho Da Nang', '62 Duong Tran Hung Dao, Phuong Van Thanh, Thanh pho Vinh, Tinh Nghe An');
INSERT INTO BENHNHAN VALUES ('BN041', 'Nguyen Thi Quynh', 'Nu', '12/07/1993', '17 Duong Le Hong Phong, Phuong 5, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau', '42 Duong Nguyen Thi Minh Khai, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN042', 'Le Van Anh', 'Nam', '29/09/1988', '67 Duong Tran Phu, Phuong Phong Nam, Thanh pho Phan Thiet, Tinh Binh Thuan', '24 Duong Le Duong, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN043', 'Pham Thi Hien', 'Nu', '08/12/1992', '39 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh', '54 Duong Tran Quang Dieu, Phuong An Hai Bac, Quan Son Tra, Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN044', 'Tran Minh Duc', 'Nam', '17/02/1986', '69 Duong Tran Hung Dao, Phuong 1, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau', '16 Duong Le Hong Phong, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN045', 'Hoang Van Tuan', 'Nam', '05/06/2008', '51 Duong Nguyen Thi Minh Khai, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh', '78 Duong Tran Phu, Phuong Hau Giang, Thanh pho Can Tho, Tinh Can Tho');
INSERT INTO BENHNHAN VALUES ('BN046', 'Nguyen Thi My', 'Nu', '22/09/1995', '25 Duong Le Hong Phong, Phuong 2, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau', '41 Duong Tran Hung Dao, Phuong Vinh Hai, Thanh pho Nha Trang, Tinh Khanh Hoa');
INSERT INTO BENHNHAN VALUES ('BN047', 'Le Minh Tuan', 'Nam', '10/03/1991', '66 Duong Nguyen Thi Minh Khai, Phuong Da Kao, Quan 1, Thanh pho Ho Chi Minh', '33 Duong Tran Quang Dieu, Phuong Hoa Tho Dong, Quan Cam Le, Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN048', 'Truong Thi Huyen', 'Nu', '27/06/1987', '58 Duong Tran Hung Dao, Phuong Phuoc Trung, Thanh pho Quy Nhon, Tinh Binh Dinh', '12 Duong Phan Chu Trinh, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN049', 'Vo Minh Hieu', 'Nam', '14/10/1993', '29 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh', '44 Duong Tran Quang Dieu, Phuong Thac Gian, Quan Cam Le, Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN050', 'Nguyen Van Tu', 'Nam', '03/01/1989', '61 Duong Tran Hung Dao, Phuong Van Thanh, Thanh pho Vinh, Tinh Nghe An', '18 Duong Le Hong Phong, Phuong 5, Thanh pho Vung Tau, Tinh Ba Ria - Vung Tau');

commit;

INSERT INTO BENH VALUES ('BE001', 'Viem Tai', 'Nhi');
INSERT INTO BENH VALUES ('BE002', 'Viem Thanh Quan', 'Nhi');
INSERT INTO BENH VALUES ('BE003', 'Soi', 'Nhi');
INSERT INTO BENH VALUES ('BE004', 'Dau Mat Do', 'Nhi');
INSERT INTO BENH VALUES ('BE005', 'Thuy Dau', 'Nhi');
INSERT INTO BENH VALUES ('BE006', 'Sot Ret', 'Truyen Nhiem');
INSERT INTO BENH VALUES ('BE007', 'Cum', 'Truyen Nhiem');
INSERT INTO BENH VALUES ('BE008', 'Sot Xuat Huyet', 'Truyen Nhiem');
INSERT INTO BENH VALUES ('BE009', 'Covid 19', 'Truyen Nhiem');
INSERT INTO BENH VALUES ('BE010', 'Dich Hach', 'Truyen Nhiem');
INSERT INTO BENH VALUES ('BE011', 'Dot Quy', 'Cap Cuu');
INSERT INTO BENH VALUES ('BE012', 'Nhoi Mau Co Tim', 'Cap Cuu');
INSERT INTO BENH VALUES ('BE013', 'Chan Thuong So Nao', 'Cap Cuu');
INSERT INTO BENH VALUES ('BE014', 'Bong', 'Cap Cuu');
INSERT INTO BENH VALUES ('BE015', 'Ngo Doc', 'Cap Cuu');
INSERT INTO BENH VALUES ('BE016', 'Ung Thu Da Day', 'Ung Buou');
INSERT INTO BENH VALUES ('BE017', 'Ung Thu Da', 'Ung Buou');
INSERT INTO BENH VALUES ('BE018', 'Ung Thu Gan', 'Ung Buou');
INSERT INTO BENH VALUES ('BE019', 'Ung Thu Phoi', 'Ung Buou');
INSERT INTO BENH VALUES ('BE020', 'Ung Thu Vu', 'Ung Buou');
INSERT INTO BENH VALUES ('BE021', 'Viem Tui Mat', 'Noi Soi');
INSERT INTO BENH VALUES ('BE022', 'Cat Amidan', 'Noi Soi');
INSERT INTO BENH VALUES ('BE023', 'Cat Ruot Thua', 'Noi Soi');
INSERT INTO BENH VALUES ('BE024', 'Soi Than', 'Noi Soi');
INSERT INTO BENH VALUES ('BE025', 'Thoat Vi Dia Dem', 'Noi Soi');

commit;

INSERT INTO PHONGBENH VALUES ('PH101', 'Thuong', 1, 1, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH102', 'Thuong', 1, 1, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH103', 'Thuong', 1, 1, 6, 6);
INSERT INTO PHONGBENH VALUES ('PH104', 'Thuong', 1, 1, 6, 6);
INSERT INTO PHONGBENH VALUES ('PH105', 'Thuong', 1, 1, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH106', 'Thuong', 1, 2, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH107', 'Thuong', 1, 2, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH108', 'Thuong', 1, 2, 6, 6);
INSERT INTO PHONGBENH VALUES ('PH109', 'Thuong', 1, 2, 6, 6);
INSERT INTO PHONGBENH VALUES ('PH110', 'Thuong', 1, 2, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH111', 'Thuong', 1, 3, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH112', 'Thuong', 1, 3, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH113', 'Thuong', 1, 3, 6, 6);
INSERT INTO PHONGBENH VALUES ('PH114', 'Thuong', 1, 3, 6, 6);
INSERT INTO PHONGBENH VALUES ('PH115', 'Thuong', 1, 3, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH116', 'Thuong', 1, 4, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH117', 'Thuong', 1, 4, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH118', 'Thuong', 1, 4, 6, 6);
INSERT INTO PHONGBENH VALUES ('PH119', 'Thuong', 1, 4, 6, 6);
INSERT INTO PHONGBENH VALUES ('PH120', 'Thuong', 1, 4, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH201', 'VIP', 2, 1, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH202', 'VIP', 2, 1, 2, 2);
INSERT INTO PHONGBENH VALUES ('PH203', 'VIP', 2, 1, 2, 2);
INSERT INTO PHONGBENH VALUES ('PH204', 'VIP', 2, 2, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH205', 'VIP', 2, 2, 2, 2);
INSERT INTO PHONGBENH VALUES ('PH206', 'VIP', 2, 2, 3, 3);
INSERT INTO PHONGBENH VALUES ('PH207', 'VIP', 2, 3, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH208', 'VIP', 2, 3, 3, 3);
INSERT INTO PHONGBENH VALUES ('PH209', 'VIP', 2, 3, 3, 3);
INSERT INTO PHONGBENH VALUES ('PH210', 'VIP', 2, 4, 2, 2);
INSERT INTO PHONGBENH VALUES ('PH301', 'Cach ly', 3, 1, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH302', 'Cach ly', 3, 1, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH303', 'Cach ly', 3, 1, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH304', 'Cach ly', 3, 1, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH305', 'Cach ly', 3, 1, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH306', 'Cach ly', 3, 1, 2, 2);
INSERT INTO PHONGBENH VALUES ('PH307', 'Cach ly', 3, 1, 3, 3);
INSERT INTO PHONGBENH VALUES ('PH308', 'Cach ly', 3, 1, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH309', 'Cach ly', 3, 2, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH310', 'Cach ly', 3, 2, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH311', 'Cach ly', 3, 2, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH312', 'Cach ly', 3, 2, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH313', 'Cach ly', 3, 2, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH314', 'Cach ly', 3, 2, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH315', 'Cach ly', 3, 2, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH316', 'Cach ly', 3, 2, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH317', 'Cach ly', 3, 3, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH318', 'Cach ly', 3, 3, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH319', 'Cach ly', 3, 3, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH320', 'Cach ly', 3, 3, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH321', 'Cach ly', 3, 3, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH322', 'Cach ly', 3, 3, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH323', 'Cach ly', 3, 3, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH324', 'Cach ly', 3, 3, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH325', 'Cach ly', 3, 4, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH326', 'Cach ly', 3, 4, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH327', 'Cach ly', 3, 4, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH328', 'Cach ly', 3, 4, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH329', 'Cach ly', 3, 4, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH330', 'Cach ly', 3, 4, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH331', 'Cach ly', 3, 4, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH332', 'Cach ly', 3, 4, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH333', 'Cach ly', 3, 5, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH334', 'Cach ly', 3, 5, 8, 8);
INSERT INTO PHONGBENH VALUES ('PH335', 'Cach ly', 3, 5, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH336', 'Cach ly', 3, 5, 4, 4);
INSERT INTO PHONGBENH VALUES ('PH337', 'Cach ly', 3, 5, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH338', 'Cach ly', 3, 5, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH339', 'Cach ly', 3, 5, 1, 1);
INSERT INTO PHONGBENH VALUES ('PH340', 'Cach ly', 3, 5, 1, 1);

commit;

insert into taikhoan values ('QL001', null);
insert into taikhoan values ('QL002', null);
insert into taikhoan values ('BS001', null);
insert into taikhoan values ('BS002', null);
insert into taikhoan values ('BN001', null);
insert into taikhoan values ('BN002', null);
commit;
delete from cabenh;
INSERT INTO CABENH VALUES ('CA001','BN001', 'BS018', 'BE019', 'Cap cuu', 'Cach ly', TO_TIMESTAMP('07/05/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('12/05/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH115');
INSERT INTO CABENH VALUES ('CA002','BN002', 'BS006', 'BE007', 'Nang', 'Tai gia', TO_TIMESTAMP('20/02/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('25/02/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH202');
INSERT INTO CABENH VALUES ('CA003','BN003', 'BS013', 'BE021', 'Khong cap cuu', 'Nhap vien', TO_TIMESTAMP('15/06/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/06/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Trieu chung', 'PH110');
INSERT INTO CABENH VALUES ('CA004','BN004', 'BS014', 'BE016', 'Cham soc dac biet', 'Cach ly', TO_TIMESTAMP('30/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('06/10/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH208');
INSERT INTO CABENH VALUES ('CA005','BN005', 'BS011', 'BE015', 'Hoi suc', 'Nhap vien', TO_TIMESTAMP('14/07/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/07/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH117');
INSERT INTO CABENH VALUES ('CA006','BN006', 'BS004', 'BE011', 'Nang', 'Tai gia', TO_TIMESTAMP('28/11/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('04/12/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Dieu tri', 'PH204');
INSERT INTO CABENH VALUES ('CA007','BN007', 'BS010', 'BE004', 'Cap cuu', 'Cach ly', TO_TIMESTAMP('02/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('08/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Cham soc', 'PH301');
INSERT INTO CABENH VALUES ('CA008','BN008', 'BS001', 'BE012', 'Khong cap cuu', 'Nhap vien', TO_TIMESTAMP('09/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('15/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH108');
INSERT INTO CABENH VALUES ('CA009','BN009', 'BS005', 'BE009', 'Hoi suc', 'Cach ly', TO_TIMESTAMP('13/12/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/12/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Dieu tri', 'PH116');
INSERT INTO CABENH VALUES ('CA010','BN010', 'BS020', 'BE013', 'Cham soc dac biet', 'Tai gia', TO_TIMESTAMP('27/03/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('02/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Trieu chung', 'PH118');
INSERT INTO CABENH VALUES ('CA011','BN011', 'BS009', 'BE006', 'Cap cuu', 'Nhap vien', TO_TIMESTAMP('10/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('16/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH209');
INSERT INTO CABENH VALUES ('CA012','BN012', 'BS019', 'BE018', 'Nang', 'Tai gia', TO_TIMESTAMP('23/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('28/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH310');
INSERT INTO CABENH VALUES ('CA013','BN013', 'BS017', 'BE001', 'Khong cap cuu', 'Nhap vien', TO_TIMESTAMP('19/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('25/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Dieu tri', 'PH113');
INSERT INTO CABENH VALUES ('CA014','BN014', 'BS008', 'BE010', 'Hoi suc', 'Cach ly', TO_TIMESTAMP('06/11/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('12/11/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Cham soc', 'PH202');
INSERT INTO CABENH VALUES ('CA015','BN015', 'BS016', 'BE002', 'Cap cuu', 'Nhap vien', TO_TIMESTAMP('11/08/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('17/08/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH105');
INSERT INTO CABENH VALUES ('CA016','BN016', 'BS012', 'BE014', 'Cham soc dac biet', 'Cach ly', TO_TIMESTAMP('25/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('31/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Trieu chung', 'PH307');
INSERT INTO CABENH VALUES ('CA017','BN017', 'BS015', 'BE005', 'Cap cuu', 'Tai gia', TO_TIMESTAMP('09/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('15/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH205');
INSERT INTO CABENH VALUES ('CA018','BN018', 'BS003', 'BE021', 'Hoi suc', 'Nhap vien', TO_TIMESTAMP('16/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('23/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Dieu tri', 'PH109');
INSERT INTO CABENH VALUES ('CA019','BN019', 'BS007', 'BE020', 'Cham soc dac biet', 'Tai gia', TO_TIMESTAMP('20/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('26/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH203');
INSERT INTO CABENH VALUES ('CA020','BN020', 'BS002', 'BE017', 'Cap cuu', 'Nhap vien', TO_TIMESTAMP('01/03/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('06/03/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Cham soc', 'PH307');
INSERT INTO CABENH VALUES ('CA021','BN021', 'BS004', 'BE022', 'Nang', 'Tai gia', TO_TIMESTAMP('14/12/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/12/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH306');
INSERT INTO CABENH VALUES ('CA022','BN022', 'BS011', 'BE008', 'Khong cap cuu', 'Nhap vien', TO_TIMESTAMP('28/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('03/09/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Dieu tri', 'PH307');
INSERT INTO CABENH VALUES ('CA023','BN023', 'BS015', 'BE003', 'Hoi suc', 'Cach ly', TO_TIMESTAMP('05/06/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('10/06/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH107');
INSERT INTO CABENH VALUES ('CA024','BN024', 'BS019', 'BE012', 'Cham soc dac biet', 'Cach ly', TO_TIMESTAMP('11/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('17/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Trieu chung', 'PH208');
INSERT INTO CABENH VALUES ('CA025','BN025', 'BS003', 'BE017', 'Cap cuu', 'Tai gia', TO_TIMESTAMP('24/11/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('30/11/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH111');
INSERT INTO CABENH VALUES ('CA026','BN026', 'BS006', 'BE021', 'Nang', 'Nhap vien', TO_TIMESTAMP('08/07/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('14/07/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Dieu tri', 'PH315');
INSERT INTO CABENH VALUES ('CA027','BN027', 'BS008', 'BE013', 'Khong cap cuu', 'Tai gia', TO_TIMESTAMP('16/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('22/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH207');
INSERT INTO CABENH VALUES ('CA028','BN028', 'BS014', 'BE010', 'Hoi suc', 'Cach ly', TO_TIMESTAMP('19/02/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('25/02/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Cham soc', 'PH117');
INSERT INTO CABENH VALUES ('CA029','BN029', 'BS010', 'BE005', 'Cham soc dac biet', 'Nhap vien', TO_TIMESTAMP('02/10/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('08/10/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Trieu chung', 'PH210');
INSERT INTO CABENH VALUES ('CA030','BN030', 'BS017', 'BE006', 'Cap cuu', 'Cach ly', TO_TIMESTAMP('13/07/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('19/07/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Dieu tri', 'PH302');
INSERT INTO CABENH VALUES ('CA031','BN031', 'BS013', 'BE009', 'Khong cap cuu', 'Nhap vien', TO_TIMESTAMP('16/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('22/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH205');
INSERT INTO CABENH VALUES ('CA032','BN032', 'BS005', 'BE018', 'Cham soc dac biet', 'Tai gia', TO_TIMESTAMP('29/01/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('04/02/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Trieu chung', 'PH309');
INSERT INTO CABENH VALUES ('CA033','BN033', 'BS012', 'BE014', 'Hoi suc', 'Cach ly', TO_TIMESTAMP('03/08/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('09/08/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Dieu tri', 'PH114');
INSERT INTO CABENH VALUES ('CA034','BN034', 'BS019', 'BE021', 'Cap cuu', 'Tai gia', TO_TIMESTAMP('10/12/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('16/12/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH210');
INSERT INTO CABENH VALUES ('CA035','BN035', 'BS017', 'BE012', 'Nang', 'Nhap vien', TO_TIMESTAMP('22/06/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('28/06/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH201');
INSERT INTO CABENH VALUES ('CA036','BN036', 'BS003', 'BE007', 'Cham soc dac biet', 'Cach ly', TO_TIMESTAMP('07/03/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('13/03/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH115');
INSERT INTO CABENH VALUES ('CA037','BN037', 'BS010', 'BE019', 'Khong cap cuu', 'Tai gia', TO_TIMESTAMP('20/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('26/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Trieu chung', 'PH209');
INSERT INTO CABENH VALUES ('CA038','BN038', 'BS016', 'BE011', 'Hoi suc', 'Nhap vien', TO_TIMESTAMP('04/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('10/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH206');
INSERT INTO CABENH VALUES ('CA039','BN039', 'BS007', 'BE002', 'Cap cuu', 'Tai gia', TO_TIMESTAMP('17/11/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('23/11/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH304');
INSERT INTO CABENH VALUES ('CA040','BN040', 'BS002', 'BE020', 'Nang', 'Nhap vien', TO_TIMESTAMP('30/09/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('06/10/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Dieu tri', 'PH113');
INSERT INTO CABENH VALUES ('CA041','BN041', 'BS014', 'BE015', 'Khong cap cuu', 'Nhap vien', TO_TIMESTAMP('13/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('19/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Cham soc', 'PH301');
INSERT INTO CABENH VALUES ('CA042','BN042', 'BS011', 'BE003', 'Hoi suc', 'Cach ly', TO_TIMESTAMP('26/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('03/03/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Trieu chung', 'PH113');
INSERT INTO CABENH VALUES ('CA043','BN043', 'BS006', 'BE008', 'Cap cuu', 'Tai gia', TO_TIMESTAMP('09/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('15/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH109');
INSERT INTO CABENH VALUES ('CA044','BN044', 'BS018', 'BE006', 'Nang', 'Nhap vien', TO_TIMESTAMP('22/10/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('28/10/200100:00:00','DD/MM/YYYY HH24:MI:SS'), 'Dieu tri', 'PH208');
INSERT INTO CABENH VALUES ('CA045','BN045', 'BS013', 'BE010', 'Cham soc dac biet', 'Tai gia', TO_TIMESTAMP('03/05/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('09/05/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH116');
INSERT INTO CABENH VALUES ('CA046','BN046', 'BS016', 'BE022', 'Khong cap cuu', 'Nhap vien', TO_TIMESTAMP('17/03/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('23/03/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH120');
INSERT INTO CABENH VALUES ('CA047','BN047', 'BS002', 'BE013', 'Hoi suc', 'Cach ly', TO_TIMESTAMP('29/12/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('04/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Trieu chung', 'PH206');
INSERT INTO CABENH VALUES ('CA048','BN048', 'BS015', 'BE005', 'Cap cuu', 'Tai gia', TO_TIMESTAMP('11/09/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('17/09/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Dieu tri', 'PH203');
INSERT INTO CABENH VALUES ('CA049','BN049', 'BS010', 'BE014', 'Nang', 'Nhap vien', TO_TIMESTAMP('25/06/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('01/07/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Giam sat', 'PH306');
INSERT INTO CABENH VALUES ('CA050','BN050', 'BS008', 'BE017', 'Cham soc dac biet', 'Cach ly', TO_TIMESTAMP('08/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('14/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), 'Chuan doan', 'PH201');

commit;

INSERT INTO THIETBIYTE VALUES ('TB001', 'Nhiet ke', 'Tai su dung', 'Do nhiet do co the', 1201, 1201);
INSERT INTO THIETBIYTE VALUES ('TB002', 'May huyet ap', 'Tai su dung', 'Do huyet ap', 145, 145);
INSERT INTO THIETBIYTE VALUES ('TB003', 'Binh oxy', '1 lan', 'Cung cap oxy', 546, 546);
INSERT INTO THIETBIYTE VALUES ('TB004', 'May chup X-quang', 'Tai su dung', 'Tao hinh anh X-quang', 55, 55);
INSERT INTO THIETBIYTE VALUES ('TB005', 'May sieu am', 'Tai su dung', 'Tao hinh anh sieu am', 43, 43);
INSERT INTO THIETBIYTE VALUES ('TB006', 'May ECG', 'Tai su dung', 'Do hoat dong dien cua tim', 237, 237);
INSERT INTO THIETBIYTE VALUES ('TB007', 'Bang dieu khien tiem', 'Tai su dung', 'Kiem soat tiem thuoc va dung dich',378, 378);
INSERT INTO THIETBIYTE VALUES ('TB008', 'Dao phau thuat', 'Tai su dung', 'Cat va mo', 878, 878);
INSERT INTO THIETBIYTE VALUES ('TB009', 'Den noi soi', 'Tai su dung', 'Kiem tra va can thiep noi soi', 179, 179);
INSERT INTO THIETBIYTE VALUES ('TB010', 'May ho hap nhan tao', 'Tai su dung', 'Ho tro ho hap', 412, 412);
INSERT INTO THIETBIYTE VALUES ('TB011', 'Ong tiem', '1 lan', 'Tiem thuoc cho benh nhan', 412, 412);

commit;

INSERT INTO DIEUPHOITHIETBI VALUES ('CA001', 'TB002', 1, TO_TIMESTAMP('07/05/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('11  /05/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA001', 'TB006', 1, TO_TIMESTAMP('07/05/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('11/05/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA001', 'TB007', 1, TO_TIMESTAMP('07/05/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('11/05/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA001', 'TB011', 5, TO_TIMESTAMP('07/05/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('11/05/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA002', 'TB001', 4, TO_TIMESTAMP('20/02/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('24/02/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA002', 'TB002', 1, TO_TIMESTAMP('20/02/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('24/02/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA002', 'TB011', 5, TO_TIMESTAMP('20/02/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('24/02/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA003', 'TB010', 1, TO_TIMESTAMP('15/06/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/06/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA004', 'TB001', 4, TO_TIMESTAMP('30/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('05/10/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA004', 'TB007', 3, TO_TIMESTAMP('30/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('05/10/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA005', 'TB004', 1, TO_TIMESTAMP('14/07/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/07/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA006', 'TB003', 5, TO_TIMESTAMP('28/11/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('04/12/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA006', 'TB009', 1, TO_TIMESTAMP('28/11/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('04/12/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA007', 'TB003', 4, TO_TIMESTAMP('02/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('07/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA007', 'TB005', 1, TO_TIMESTAMP('02/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('07/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA007', 'TB009', 1, TO_TIMESTAMP('02/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('07/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA007', 'TB010', 1, TO_TIMESTAMP('02/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('07/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA008', 'TB002', 1, TO_TIMESTAMP('09/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('14/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA008', 'TB009', 1, TO_TIMESTAMP('09/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('14/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA008', 'TB010', 1, TO_TIMESTAMP('09/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('14/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA008', 'TB011', 4, TO_TIMESTAMP('09/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('14/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA009', 'TB002', 1, TO_TIMESTAMP('14/12/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/12/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA009', 'TB009', 1, TO_TIMESTAMP('14/12/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/12/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA010', 'TB005', 1, TO_TIMESTAMP('27/03/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('02/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA011', 'TB008', 5, TO_TIMESTAMP('10/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('14/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA012', 'TB003', 4, TO_TIMESTAMP('23/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('27/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA012', 'TB005', 1, TO_TIMESTAMP('23/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('27/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA012', 'TB010', 1, TO_TIMESTAMP('23/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('27/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA013', 'TB001', 3, TO_TIMESTAMP('19/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('25/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA013', 'TB003', 4, TO_TIMESTAMP('19/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('25/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA013', 'TB006', 1, TO_TIMESTAMP('19/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('25/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA014', 'TB006', 1, TO_TIMESTAMP('06/11/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('12/11/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA015', 'TB004', 1, TO_TIMESTAMP('11/08/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('16/08/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA015', 'TB007', 2, TO_TIMESTAMP('11/08/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('16/08/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA016', 'TB007', 5, TO_TIMESTAMP('26/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('31/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA016', 'TB008', 2, TO_TIMESTAMP('26/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('31/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA016', 'TB010', 1, TO_TIMESTAMP('26/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('31/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA017', 'TB002', 1, TO_TIMESTAMP('09/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('12/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA017', 'TB008', 2, TO_TIMESTAMP('09/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('12/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA018', 'TB001', 1, TO_TIMESTAMP('16/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('22/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA018', 'TB004', 1, TO_TIMESTAMP('16/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('22/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA018', 'TB006', 1, TO_TIMESTAMP('16/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('22/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA019', 'TB001', 5, TO_TIMESTAMP('20/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA019', 'TB002', 1, TO_TIMESTAMP('20/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA019', 'TB010', 1, TO_TIMESTAMP('20/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA020', 'TB006', 1, TO_TIMESTAMP('01/03/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('05/03/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA021', 'TB003', 2, TO_TIMESTAMP('14/12/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/12/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA022', 'TB003', 1, TO_TIMESTAMP('28/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('03/09/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA022', 'TB005', 1, TO_TIMESTAMP('28/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('03/09/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA022', 'TB009', 1, TO_TIMESTAMP('28/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('03/09/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA022', 'TB011', 2, TO_TIMESTAMP('28/08/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('03/09/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA023', 'TB003', 3, TO_TIMESTAMP('05/06/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('10/06/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA023', 'TB005', 1, TO_TIMESTAMP('05/06/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('10/06/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA023', 'TB009', 1, TO_TIMESTAMP('05/06/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('10/06/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA024', 'TB001', 4, TO_TIMESTAMP('11/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('16/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA024', 'TB002', 1, TO_TIMESTAMP('11/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('16/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA024', 'TB006', 1, TO_TIMESTAMP('11/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('16/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA024', 'TB009', 1, TO_TIMESTAMP('11/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('16/09/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA025', 'TB006', 1, TO_TIMESTAMP('24/11/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('29/11/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA025', 'TB010', 1, TO_TIMESTAMP('24/11/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('29/11/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA026', 'TB009', 1, TO_TIMESTAMP('08/07/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('13/07/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA026', 'TB010', 1, TO_TIMESTAMP('08/07/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('13/07/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA027', 'TB001', 3, TO_TIMESTAMP('16/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA027', 'TB006', 1, TO_TIMESTAMP('16/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA027', 'TB010', 1, TO_TIMESTAMP('16/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/04/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA028', 'TB001', 2, TO_TIMESTAMP('19/02/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('23/02/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA028', 'TB004', 1, TO_TIMESTAMP('19/02/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('23/02/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA028', 'TB005', 1, TO_TIMESTAMP('19/02/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('23/02/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA028', 'TB008', 3, TO_TIMESTAMP('19/02/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('23/02/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA029', 'TB001', 1, TO_TIMESTAMP('02/10/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('08/10/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA029', 'TB006', 1, TO_TIMESTAMP('02/10/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('08/10/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA029', 'TB010', 1, TO_TIMESTAMP('02/10/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('08/10/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA030', 'TB001', 1, TO_TIMESTAMP('13/07/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('17/07/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA030', 'TB004', 1, TO_TIMESTAMP('13/07/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('17/07/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA030', 'TB005', 1, TO_TIMESTAMP('13/07/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('17/07/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA030', 'TB010', 1, TO_TIMESTAMP('13/07/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('17/07/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA031', 'TB001', 4, TO_TIMESTAMP('16/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA031', 'TB009', 1, TO_TIMESTAMP('16/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('20/09/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA032', 'TB003', 1, TO_TIMESTAMP('30/01/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('02/02/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA032', 'TB005', 1, TO_TIMESTAMP('30/01/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('02/02/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA032', 'TB007', 5, TO_TIMESTAMP('30/01/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('02/02/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA032', 'TB009', 1, TO_TIMESTAMP('30/01/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('02/02/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA033', 'TB001', 1, TO_TIMESTAMP('03/08/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('09/08/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA033', 'TB004', 1, TO_TIMESTAMP('03/08/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('09/08/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA033', 'TB007', 4, TO_TIMESTAMP('03/08/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('09/08/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA033', 'TB008', 1, TO_TIMESTAMP('03/08/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('09/08/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA034', 'TB001', 2, TO_TIMESTAMP('10/12/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('14/12/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA034', 'TB004', 1, TO_TIMESTAMP('10/12/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('14/12/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA034', 'TB011', 3, TO_TIMESTAMP('10/12/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('14/12/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA035', 'TB003', 1, TO_TIMESTAMP('22/06/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('28/06/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA035', 'TB004', 1, TO_TIMESTAMP('22/06/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('28/06/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA035', 'TB010', 1, TO_TIMESTAMP('22/06/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('28/06/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA036', 'TB007', 5, TO_TIMESTAMP('07/03/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('12/03/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA036', 'TB008', 5, TO_TIMESTAMP('07/03/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('12/03/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA037', 'TB002', 1, TO_TIMESTAMP('20/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('26/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA037', 'TB006', 1, TO_TIMESTAMP('20/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('26/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA037', 'TB010', 1, TO_TIMESTAMP('20/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('26/05/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA038', 'TB004', 1, TO_TIMESTAMP('04/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('10/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA038', 'TB007', 1, TO_TIMESTAMP('04/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('10/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA039', 'TB008', 5, TO_TIMESTAMP('17/11/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('23/11/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA040', 'TB007', 1, TO_TIMESTAMP('30/09/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('04/10/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA040', 'TB008', 2, TO_TIMESTAMP('30/09/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('04/10/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA040', 'TB009', 1, TO_TIMESTAMP('30/09/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('04/10/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA040', 'TB010', 1, TO_TIMESTAMP('30/09/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('04/10/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA041', 'TB009', 1, TO_TIMESTAMP('13/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('19/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA041', 'TB010', 1, TO_TIMESTAMP('13/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('19/07/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA042', 'TB004', 1, TO_TIMESTAMP('26/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('01/03/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA042', 'TB006', 1, TO_TIMESTAMP('26/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('01/03/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA042', 'TB007', 2, TO_TIMESTAMP('26/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('01/03/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA042', 'TB011', 5, TO_TIMESTAMP('26/02/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('01/03/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA043', 'TB001', 3, TO_TIMESTAMP('09/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('15/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA043', 'TB004', 1, TO_TIMESTAMP('09/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('15/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA043', 'TB007', 4, TO_TIMESTAMP('09/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('15/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA043', 'TB008', 1, TO_TIMESTAMP('09/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('15/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA044', 'TB002', 1, TO_TIMESTAMP('22/10/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('27/10/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA044', 'TB010', 1, TO_TIMESTAMP('22/10/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('27/10/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA045', 'TB001', 3, TO_TIMESTAMP('03/05/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('09/05/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA045', 'TB002', 1, TO_TIMESTAMP('03/05/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('09/05/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA045', 'TB006', 1, TO_TIMESTAMP('03/05/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('09/05/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA045', 'TB010', 1, TO_TIMESTAMP('03/05/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('09/05/2000 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA046', 'TB002', 1, TO_TIMESTAMP('17/03/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('23/03/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA046', 'TB005', 1, TO_TIMESTAMP('17/03/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('23/03/2004 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA047', 'TB003', 3, TO_TIMESTAMP('30/12/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('03/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA047', 'TB004', 1, TO_TIMESTAMP('30/12/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('03/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA047', 'TB007', 1, TO_TIMESTAMP('30/12/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('03/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA047', 'TB011', 1, TO_TIMESTAMP('30/12/2002 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('03/01/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA048', 'TB001', 5, TO_TIMESTAMP('11/09/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('17/09/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA048', 'TB007', 4, TO_TIMESTAMP('11/09/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('17/09/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA049', 'TB004', 1, TO_TIMESTAMP('25/06/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('01/07/2001 00:00:00','DD/MM/YYYY HH24:MI:SS'));
INSERT INTO DIEUPHOITHIETBI VALUES ('CA050', 'TB002', 1, TO_TIMESTAMP('08/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP('13/04/2003 00:00:00','DD/MM/YYYY HH24:MI:SS'));

commit;
