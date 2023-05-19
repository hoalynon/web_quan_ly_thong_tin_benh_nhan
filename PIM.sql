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


INSERT INTO BACSI VALUES ('BS001', 'Le Tam Khoa', 'Nam', '08/04/1987', '53 Nguyen Hue, My Tho, Tien Giang', '123 Le Loi Street, Thu Dau Mot City, Binh Duong', 'Cap Cuu', 6);
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

select * from BACSI;

CREATE TABLE BENHNHAN
(
	MaBN VARCHAR(10) NOT NULL,
	HoTen VARCHAR2(100) NOT NULL,
	GioiTinh VARCHAR(10),
	NgaySinh VARCHAR2(10),
	QueQuan VARCHAR(100),
	NoiOHienTai VARCHAR(100),
	CONSTRAINT PK_BENHNHAN PRIMARY KEY (MaBN)
);


INSERT INTO BENHNHAN VALUES ('BN001', 'Tran Anh Lien', 'Nu', '21/03/1992', '36 Duong Le Loi, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh', '42 Duong Nguyen Hue, Phuong Ben Thanh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN002', 'Le Ngoc Quynh', 'Nu', '15/07/1985', '18 Duong Tran Phu, Phuong Loc Tho, Thanh pho Nha Trang, Tinh Khanh Hoa', '18 Duong Tran Phu, Phuong Loc Tho, Thanh pho Nha Trang, Tinh Khanh Hoa');
INSERT INTO BENHNHAN VALUES ('BN003', 'Vo Tri Quynh', 'Nam', '03/09/1988', '23 Duong Tran Hung Dao, Phuong Vinh Thanh, Thanh pho Rach Gia, Tinh Kien Giang', '12 Duong Hung Vuong, Phuong Le Loi, Thanh pho Hue, Tinh Thua Thien Hue');
INSERT INTO BENHNHAN VALUES ('BN005', 'Hoang Minh Ha', 'Nu', '28/05/1994', '30 Duong Ham Nghi, Phuong Nguyen Thai Binh, Quan 1, Thanh pho Ho Chi Minh', '39 Duong Le Duong, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN006', 'Pham Minh An', 'Nu', '17/08/1987', '30 Duong Ham Nghi, Phuong Nguyen Thai Binh, Quan 1, Thanh pho Ho Chi Minh', '30 Duong Ham Nghi, Phuong Nguyen Thai Binh, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN007', 'Le Thi Phuong', 'Nu', '05/11/1991', '44 Duong Tran Quang Dieu, Phuong Phuoc Ninh, Thanh pho Da Nang', '44 Duong Tran Quang Dieu, Phuong Phuoc Ninh, Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN008', 'Vo Anh Khanh', 'Nam', '09/02/1984', '44 Duong Tran Quang Dieu, Phuong Phuoc Ninh, Thanh pho Da Nang', '44 Duong Tran Quang Dieu, Phuong Phuoc Ninh, Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN009', 'Tran Tam Tu', 'Nam', '12/06/1989', 'Long An', '63 Duong Nguyen Thi Minh Khai, Phuong Ben Nghe, Quan 1, Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN010', 'Truong Kim An', 'Nam', '08/04/1993', 'Thanh pho Hai Phong', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN011', 'Nguyen Minh Phuong', 'Nam', '27/10/1997', 'Tuyen Quang', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN012', 'Tran Thi Hao', 'Nam', '14/09/1986', 'Thai Nguyen', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN013', 'Hoang Tam Hao', 'Nu', '02/07/1995', 'An Giang', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN014', 'Le Thu Phuong', 'Nam', '19/01/1996', 'Thanh pho Ho Chi Minh', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN015', 'Truong Minh Hoa', 'Nu', '09/11/1988', 'Thanh pho Ho Chi Minh', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN016', 'Truong Quoc Khanh', 'Nu', '16/06/1992', 'Quang Ninh', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN017', 'Pham Anh Ha', 'Nam', '25/03/1987', 'Dak Lak', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN018', 'Truong Tam Duong', 'Nu', '13/02/1989', 'Lam Dong', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN019', 'Vo Ngoc Tu', 'Nam', '06/05/1991', 'Ben Tre', 'Binh Duong');
INSERT INTO BENHNHAN VALUES ('BN020', 'Vo Anh Tu', 'Nam', '22/07/1985', 'Thanh pho Can Tho', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN021', 'Truong Quoc Hoa', 'Nu', '11/09/1990', 'Thai Nguyen', 'Binh Duong');
INSERT INTO BENHNHAN VALUES ('BN022', 'Nguyen Thanh Khanh', 'Nam', '30/12/1993', 'Quang Ninh', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN023', 'Hoang Tri Khoa', 'Nu', '18/06/1988', 'Dak Lak', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN024', 'Le Thanh Ha', 'Nam', '07/04/1992', 'An Giang', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN025', 'Vo Ngoc Quynh', 'Nam', '24/10/1996', 'Ben Tre', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN026', 'Tran Thu Hoa', 'Nu', '01/03/1987', 'Thanh pho Ha Noi', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN027', 'Tran Anh Duong', 'Nu', '20/09/1990', 'Thanh pho Ho Chi Minh', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN028', 'Nguyen Thu Khanh', 'Nam', '09/07/1983', 'Phu Tho', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN029', 'Hoang Tri Duong', 'Nu', '26/04/1995', 'Tuyen Quang', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN030', 'Truong Ngoc Hieu', 'Nam', '10/11/1991', 'Thanh pho Hai Phong', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN031', 'Phan Thanh Hieu', 'Nu', '28/02/1987', 'Dak Lak', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN032', 'Phan Tri Quynh', 'Nu', '14/05/1992', 'Quang Ninh', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN033', 'Le Minh Binh', 'Nam', '03/08/1996', 'Thanh pho Can Tho', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN034', 'Pham Anh Hao', 'Nu', '18/11/1993', 'Nghe An', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN035', 'Nguyen Ngoc Quynh', 'Nam', '07/07/1989', 'Thanh pho Ha Noi', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN036', 'Nguyen Minh Phuong', 'Nam', '25/09/1984', 'Thanh pho Hai Phong', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN037', 'Vo Anh Tuan', 'Nu', '13/01/1992', 'Thanh pho Hai Phong', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN038', 'Truong Ngoc Khoa', 'Nam', '30/05/1987', 'Thanh pho Hai Phong', 'Binh Duong');
INSERT INTO BENHNHAN VALUES ('BN039', 'Tran Anh Hieu', 'Nu', '19/03/1991', 'Thanh pho Hai Phong', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN040', 'Nguyen Minh Tuan', 'Nam', '06/08/1985', 'Phu Tho', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN041', 'Nguyen Thi Quynh', 'Nu', '12/07/1993', 'Binh Duong', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN042', 'Le Van Anh', 'Nam', '29/09/1988', 'Tuyen Quang', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN043', 'Pham Thi Hien', 'Nu', '08/12/1992', 'Lam Dong', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN044', 'Tran Minh Duc', 'Nam', '17/02/1986', 'Long An', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN045', 'Hoang Van Tuan', 'Nam', '05/06/1990', 'Dak Lak', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN046', 'Nguyen Thi My', 'Nu', '22/09/1995', 'Thai Nguyen', 'Binh Duong');
INSERT INTO BENHNHAN VALUES ('BN047', 'Le Minh Tuan', 'Nam', '10/03/1991', 'Quang Ninh', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN048', 'Truong Thi Huyen', 'Nu', '27/06/1987', 'An Giang', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN049', 'Vo Minh Hieu', 'Nam', '14/10/1993', 'Ben Tre', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN050', 'Nguyen Van Tu', 'Nam', '03/01/1989', 'Thanh pho Can Tho', 'Thanh pho Ha Noi');

select * from BENHNHAN;

create table benh
(
    mabenh varchar(50),
    tenbenh varchar2(100),
    tenkhoa varchar(50),
    constraint pk_benh primary key (mabenh)
)

create table phongbenh
(
    maphong varchar(10),
    loai varchar(20),
    toa number,
    lau number,
    succhua int,
    controng int,
    constraint pk_phongbenh primary key (maphong)
)


create table cabenh
(
    mabn varchar(10),
    mabs varchar(10),
    mabenh varchar(50),
    mucdo varchar2(20),
    hinhthuc varchar(20),
    ngaybatdau timestamp,
    ngayketthuc timestamp,
    tinhtrang varchar(20),
    maphong varchar(10),
    constraint pk_cabenh primary key (mabn,mabs,mabenh,ngaybatdau),
    constraint fk_cabenh_mabn foreign key (mabn) references benhnhan(mabn),
    constraint fk_cabenh_mabs foreign key (mabs) references bacsi(mabs),
    constraint fk_cabenh_mabenh foreign key (mabenh) references benh(mabenh),
    constraint fk_cabenh_maphong foreign key (maphong) references phongbenh (maphong)
)

create table thietbiyte
(
    mathietbi varchar(10),
    tenthietbi varchar2(50),
    loaisd varchar2(20),
    congdung varchar2(200),
    soluong int,
    constraint pk_thietbiyte primary key (mathietbi)
)

create table dieuphoithietbi
(
    mabn varchar(10),
    mathietbi varchar(10),
    soluong int,
    ngaydieuphoi timestamp,
    ngayketthuc timestamp,
    sldu int,
    constraint pk_dieuphoithietbi primary key (mabn,mathietbi,ngaydieuphoi),
    constraint fk_dieuphoithietbi_mabn foreign key (mabn) references benhnhan(mabn),
    constraint fk_dieuphoithietbi_mathietbi foreign key (mathietbi) references thietbiyte(mathietbi)
)

create table taikhoan
(
    tendangnhap varchar(10),
    matkhau varchar(100),
    constraint pk_taikhoan primary key (tendangnhap)
)
insert into taikhoan values ('QL001','password');
