CREATE TABLE BACSI
(
	MaBS VARCHAR(10) NOT NULL,
	HoTen VARCHAR2(100) NOT NULL,
	GioiTinh VARCHAR(10),
	QueQuan VARCHAR(100),
	NoiOHienTai VARCHAR(100),
	TenKhoa VARCHAR(50),
	NamPhucVu NUMBER,
	CONSTRAINT PK_BACSI PRIMARY KEY (MaBS)
);

INSERT INTO BACSI VALUES ('BS001', 'Phan Tri Lien', 'Nu', 'Thanh pho Can Tho', 'Thanh pho Ha Noi', 'Cap Cuu', 19);
INSERT INTO BACSI VALUES ('BS002', 'Phan Kim Duong', 'Nam', 'Phu Tho', 'Can Tho', 'Ung Buou', 24);
INSERT INTO BACSI VALUES ('BS003', 'Hoang Kim Hoa', 'Nam', 'Thanh pho Ha Noi', 'Thanh pho Da Nang', 'Truyen Nhiem', 13);
INSERT INTO BACSI VALUES ('BS004', 'Pham Thu Khanh', 'Nu', 'Long An', 'Dong Nai', 'Cap Cuu', 3);
INSERT INTO BACSI VALUES ('BS005', 'Phan Kim Phuong', 'Nu', 'Quang Ngai', 'Thanh pho Ho Chi Minh', 'Truyen Nhiem', 16);
INSERT INTO BACSI VALUES ('BS006', 'Pham Kim Khanh', 'Nu', 'Khanh Hoa', 'Thanh pho Da Nang', 'Nhi', 28);
INSERT INTO BACSI VALUES ('BS007', 'Le Tam Hieu', 'Nu', 'Quang Ninh', 'Binh Duong', 'Cap Cuu', 29);
INSERT INTO BACSI VALUES ('BS008', 'Vo Tam Tu', 'Nu', 'Khanh Hoa', 'Binh Duong', 'Noi Soi', 7);
INSERT INTO BACSI VALUES ('BS009', 'Tran Kim Phuong', 'Nu', 'Thai Nguyen', 'Thanh pho Ha Noi', 'Ung Buou', 9);
INSERT INTO BACSI VALUES ('BS010', 'Phan Thu An', 'Nam', 'Ben Tre', 'Dong Nai', 'Noi Soi', 22);
INSERT INTO BACSI VALUES ('BS011', 'Pham Van Duong', 'Nu', 'An Giang', 'Can Tho', 'Nhi', 14);
INSERT INTO BACSI VALUES ('BS012', 'Le Thanh Nguyen', 'Nu', 'Tuyen Quang', 'Thanh pho Ho Chi Minh', 'Truyen Nhiem', 21);
INSERT INTO BACSI VALUES ('BS013', 'Hoang Tri Quynh', 'Nu', 'Lam Dong', 'Thanh pho Ha Noi', 'Cap Cuu', 3);
INSERT INTO BACSI VALUES ('BS014', 'Hoang Anh Hieu', 'Nam', 'Quang Ninh', 'Thanh pho Ho Chi Minh', 'Cap Cuu', 6);
INSERT INTO BACSI VALUES ('BS015', 'Hoang Minh Tu', 'Nam', 'Thanh pho Da Nang', 'Can Tho', 'Truyen Nhiem', 3);
INSERT INTO BACSI VALUES ('BS016', 'Phan Ngoc Binh', 'Nam', 'Thanh pho Ha Noi', 'Thanh pho Ho Chi Minh', 'Cap Cuu', 18);
INSERT INTO BACSI VALUES ('BS017', 'Pham Van Tu', 'Nam', 'Quang Ninh', 'Thanh pho Ho Chi Minh', 'Nhi', 26);
INSERT INTO BACSI VALUES ('BS018', 'Nguyen Anh Nguyen', 'Nam', 'Thanh pho Ha Noi', 'Dong Nai', 'Ung Buou', 10);
INSERT INTO BACSI VALUES ('BS019', 'Pham Minh Binh', 'Nu', 'An Giang', 'Can Tho', 'Cap Cuu', 24);
INSERT INTO BACSI VALUES ('BS020', 'Le Thi Khanh', 'Nu', 'Tuyen Quang', 'Can Tho', 'Ung Buou', 23);

select * from BACSI;

CREATE TABLE BENHNHAN
(
	MaBN VARCHAR(10) NOT NULL,
	HoTen VARCHAR2(100) NOT NULL,
	GioiTinh VARCHAR(10),
	QueQuan VARCHAR(100),
	NoiOHienTai VARCHAR(100),
	Loai VARCHAR(20),
	CONSTRAINT PK_BENHNHAN PRIMARY KEY (MaBN)
);


INSERT INTO BENHNHAN VALUES ('BN001', 'Tran Anh Lien', 'Nu', null, 'Thanh pho Ha Noi', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN002', 'Le Ngoc Quynh', 'Nu', null, 'Lam Dong', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN003', 'Vo Tri Quynh', 'Nam', null, 'Nam Dinh', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN004', 'Nguyen Anh Quynh', 'Nu', null, 'Nghe An', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN005', 'Hoang Minh Ha', 'Nu', null, 'Dak Lak', 'Binh Duong');
INSERT INTO BENHNHAN VALUES ('BN006', 'Pham Minh An', 'Nu', null, 'Dak Lak', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN007', 'Le Thi Phuong', 'Nu', null, 'Dong Nai', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN008', 'Vo Anh Khanh', 'Nam', null, 'Thai Nguyen', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN009', 'Tran Tam Tu', 'Nam', null, 'Long An', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN010', 'Truong Kim An', 'Nam', null, 'Thanh pho Hai Phong', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN011', 'Nguyen Minh Phuong', 'Nam', null, 'Tuyen Quang', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN012', 'Tran Thi Hao', 'Nam', null, 'Thai Nguyen', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN013', 'Hoang Tam Hao', 'Nu', null, 'An Giang', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN014', 'Le Thu Phuong', 'Nam', null, 'Thanh pho Ho Chi Minh', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN015', 'Truong Minh Hoa', 'Nu', null, 'Thanh pho Ho Chi Minh', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN016', 'Truong Quoc Khanh', 'Nu', null, 'Quang Ninh', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN017', 'Pham Anh Ha', 'Nam', null, 'Dak Lak', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN018', 'Truong Tam Duong', 'Nu', null, 'Lam Dong', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN019', 'Vo Ngoc Tu', 'Nam', null, 'Ben Tre', 'Binh Duong');
INSERT INTO BENHNHAN VALUES ('BN020', 'Vo Anh Tu', 'Nam', null, 'Thanh pho Can Tho', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN021', 'Truong Quoc Hoa', 'Nu', null, 'Thai Nguyen', 'Binh Duong');
INSERT INTO BENHNHAN VALUES ('BN022', 'Nguyen Thanh Khanh', 'Nam', null, 'Quang Ninh', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN023', 'Hoang Tri Khoa', 'Nu', null, 'Dak Lak', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN024', 'Le Thanh Ha', 'Nam', null, 'An Giang', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN025', 'Vo Ngoc Quynh', 'Nam', null, 'Ben Tre', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN026', 'Tran Thu Hoa', 'Nu', null, 'Thanh pho Ha Noi', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN027', 'Tran Anh Duong', 'Nu', null, 'Thanh pho Ho Chi Minh', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN028', 'Nguyen Thu Khanh', 'Nam', null, 'Phu Tho', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN029', 'Hoang Tri Duong', 'Nu', null, 'Tuyen Quang', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN030', 'Truong Ngoc Hieu', 'Nam', null, 'Thanh pho Hai Phong', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN031', 'Phan Thanh Hieu', 'Nu', null, 'Dak Lak', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN032', 'Phan Tri Quynh', 'Nu', null, 'Quang Ninh', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN033', 'Le Minh Binh', 'Nam', null, 'Thanh pho Can Tho', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN034', 'Pham Anh Hao', 'Nu', null, 'Nghe An', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN035', 'Nguyen Ngoc Quynh', 'Nam', null, 'Thanh pho Ha Noi', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN036', 'Hoang Thu Khanh', 'Nu', null, 'Thanh pho Da Nang', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN037', 'Truong Thu Phuong', 'Nam', null, 'Thai Nguyen', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN038', 'Le Van Tu', 'Nu', null, 'Ben Tre', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN039', 'Vo Thi Quynh', 'Nu', null, 'Quang Ninh', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN040', 'Truong Tri Lien', 'Nam', null, 'Lam Dong', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN041', 'Truong Minh Nguyen', 'Nu', null, 'Binh Duong', 'Thanh pho Ho Chi Minh');
INSERT INTO BENHNHAN VALUES ('BN042', 'Pham Van Tu', 'Nu', null, 'Thanh pho Hai Phong', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN043', 'Tran Quoc Ha', 'Nu', null, 'Phu Tho', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN044', 'Truong Van Hao', 'Nam', null, 'Long An', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN045', 'Le Van An', 'Nu', null, 'Thanh pho Can Tho', 'Can Tho');
INSERT INTO BENHNHAN VALUES ('BN046', 'Hoang Thi Hieu', 'Nu', null, 'Dak Lak', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN047', 'Phan Minh Nguyen', 'Nu', null, 'Thai Nguyen', 'Thanh pho Da Nang');
INSERT INTO BENHNHAN VALUES ('BN048', 'Le Van Khoa', 'Nu', null, 'Quang Tri', 'Dong Nai');
INSERT INTO BENHNHAN VALUES ('BN049', 'Truong Quoc Nguyen', 'Nu', null, 'Dak Lak', 'Thanh pho Ha Noi');
INSERT INTO BENHNHAN VALUES ('BN050', 'Vo Kim Duong', 'Nu', null, 'Phu Tho', 'Binh Duong');

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
    ngaybatdau date,
    ngayketthuc date,
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
    ngaydieuphoi date,
    ngayketthuc date,
    sldu int,
    constraint pk_dieuphoithietbi primary key (mabn,mathietbi),
    constraint fk_dieuphoithietbi_mabn foreign key (mabn) references benhnhan(mabn),
    constraint fk_dieuphoithietbi_mathietbi foreign key (mathietbi) references thietbiyte(mathietbi)
)

create table taikhoan
(
    tendangnhap varchar(10),
    matkhau varchar(100),
    constraint pk_taikhoan primary key (tendangnhap)
)
