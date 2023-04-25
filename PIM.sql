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


INSERT INTO BENHNHAN VALUES ('BN001', 'Vo Thanh Hoa', 'Nam', 'Quang Ngai', 'Binh Duong', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN002', 'Pham Tam Hieu', 'Nam', 'Phu Tho', 'Binh Duong', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN003', 'Pham Thi Duong', 'Nam', 'Thanh pho Ho Chi Minh', 'Thanh pho Ho Chi Minh', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN004', 'Tran Thu Duong', 'Nu', 'An Giang', 'Can Tho', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN005', 'Pham Quoc Hieu', 'Nam', 'Dong Nai', 'Thanh pho Da Nang', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN006', 'Le Van Quynh', 'Nam', 'Thanh pho Da Nang', 'Dong Nai', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN007', 'Truong Tri Ha', 'Nu', 'Binh Duong', 'Thanh pho Da Nang', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN008', 'Tran Van Khanh', 'Nam', 'Dak Lak', 'Dong Nai', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN009', 'Nguyen Tam Hieu', 'Nam', 'Ben Tre', 'Thanh pho Da Nang', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN010', 'Truong Van Hieu', 'Nu', 'Thanh pho Da Nang', 'Thanh pho Da Nang', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN011', 'Pham Thi Phuong', 'Nam', 'Nghe An', 'Thanh pho Ho Chi Minh', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN012', 'Hoang Quoc An', 'Nu', 'Quang Ninh', 'Can Tho', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN013', 'Hoang Quoc Hoa', 'Nu', 'Binh Duong', 'Thanh pho Ha Noi', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN014', 'Phan Thi Hao', 'Nu', 'Thanh pho Ho Chi Minh', 'Can Tho', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN015', 'Tran Quoc Tu', 'Nam', 'Quang Ngai', 'Thanh pho Ho Chi Minh', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN016', 'Nguyen Minh Hieu', 'Nu', 'Thanh pho Ho Chi Minh', 'Thanh pho Ha Noi', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN017', 'Vo Anh Duong', 'Nu', 'Phu Tho', 'Thanh pho Da Nang', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN018', 'Hoang Minh Khoa', 'Nam', 'Nghe An', 'Can Tho', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN019', 'Hoang Anh Khoa', 'Nu', 'Phu Tho', 'Binh Duong', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN020', 'Nguyen Anh Lien', 'Nu', 'Tuyen Quang', 'Thanh pho Ho Chi Minh', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN021', 'Le Thi Nguyen', 'Nam', 'Nghe An', 'Can Tho', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN022', 'Phan Van Ha', 'Nam', 'Ben Tre', 'Dong Nai', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN023', 'Tran Thi Duong', 'Nu', 'Nam Dinh', 'Thanh pho Ho Chi Minh', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN024', 'Truong Thanh Ha', 'Nam', 'Thanh pho Da Nang', 'Thanh pho Ha Noi', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN025', 'Vo Thu Tu', 'Nam', 'Phu Tho', 'Thanh pho Ha Noi', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN026', 'Le Thi Quynh', 'Nam', 'Dak Lak', 'Thanh pho Ha Noi', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN027', 'Tran Quoc Khanh', 'Nu', 'An Giang', 'Thanh pho Ho Chi Minh', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN028', 'Le Tri Ha', 'Nam', 'An Giang', 'Thanh pho Ha Noi', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN029', 'Nguyen Tam An', 'Nam', 'Lam Dong', 'Can Tho', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN030', 'Phan Tri Ha', 'Nam', 'Thanh pho Ha Noi', 'Binh Duong', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN031', 'Phan Thi Lien', 'Nam', 'Quang Ngai', 'Thanh pho Ho Chi Minh', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN032', 'Hoang Quoc Lien', 'Nu', 'Thanh pho Ha Noi', 'Thanh pho Ho Chi Minh', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN033', 'Le Tam Phuong', 'Nu', 'Thanh pho Ha Noi', 'Can Tho', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN034', 'Vo Tam Khoa', 'Nu', 'Lam Dong', 'Thanh pho Da Nang', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN035', 'Hoang Ngoc Khoa', 'Nu', 'Dak Lak', 'Thanh pho Ha Noi', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN036', 'Nguyen Quoc Ha', 'Nam', 'Ben Tre', 'Thanh pho Da Nang', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN037', 'Le Quoc Hoa', 'Nu', 'Thanh pho Hai Phong', 'Can Tho', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN038', 'Tran Thanh Hao', 'Nam', 'Thanh pho Ho Chi Minh', 'Can Tho', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN039', 'Vo Thu Duong', 'Nam', 'Thanh pho Ho Chi Minh', 'Binh Duong', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN040', 'Hoang Thanh Nguyen', 'Nu', 'Thanh Hoa', 'Dong Nai', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN041', 'Truong Thi Khoa', 'Nam', 'Dak Lak', 'Thanh pho Ho Chi Minh', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN042', 'Le Kim Lien', 'Nam', 'Lam Dong', 'Binh Duong', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN043', 'Le Minh Hao', 'Nu', 'Nam Dinh', 'Thanh pho Da Nang', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN044', 'Truong Thanh Nguyen', 'Nam', 'Quang Ninh', 'Thanh pho Ha Noi', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN045', 'Vo Anh Ha', 'Nu', 'Quang Ninh', 'Can Tho', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN046', 'Truong Anh Phuong', 'Nu', 'Ben Tre', 'Thanh pho Ho Chi Minh', 'Binh Thuong');
INSERT INTO BENHNHAN VALUES ('BN047', 'Nguyen Quoc An', 'Nu', 'Lam Dong', 'Can Tho', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN048', 'Phan Thu Hao', 'Nam', 'Quang Ngai', 'Thanh pho Ho Chi Minh', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN049', 'Truong Minh Duong', 'Nam', 'Phu Tho', 'Can Tho', 'Nguy Cap');
INSERT INTO BENHNHAN VALUES ('BN050', 'Nguyen Tam Ha', 'Nam', 'Thanh pho Can Tho', 'Thanh pho Da Nang', 'Binh Thuong');

select * from BENHNHAN;

CREATE TABLE BENH
(
	MaBenh VARCHAR(50) NOT NULL,
	TenBenh VARCHAR2(100) NOT NULL,
	MucDo NUMBER,
	TenKhoa VARCHAR(50),
	CONSTRAINT PK_BENH PRIMARY KEY (MaBenh),
	CONSTRAINT UNQ_TENBENH UNIQUE (TenBenh)
);
INSERT INTO BENH VALUES ('BE001', 'Viem Tai', 2, 'Nhi');
INSERT INTO BENH VALUES ('BE002', 'Viem Thanh Quan', 1, 'Nhi');
INSERT INTO BENH VALUES ('BE003', 'Soi', 5, 'Nhi');
INSERT INTO BENH VALUES ('BE004', 'Dau Mat Do', 1, 'Nhi');
INSERT INTO BENH VALUES ('BE005', 'Thuy Dau', 5, 'Nhi');
INSERT INTO BENH VALUES ('BE006', 'Sot Ret', 3, 'Truyen Nhiem');
INSERT INTO BENH VALUES ('BE007', 'Cum', 2, 'Truyen Nhiem');
INSERT INTO BENH VALUES ('BE008', 'Sot Xuat Huyet', 4, 'Truyen Nhiem');
INSERT INTO BENH VALUES ('BE009', 'Covid 19', 5, 'Truyen Nhiem');
INSERT INTO BENH VALUES ('BE010', 'Dich Hach', 5, 'Truyen Nhiem');
INSERT INTO BENH VALUES ('BE011', 'Dot Quy', 5, 'Cap Cuu');
INSERT INTO BENH VALUES ('BE012', 'Nhoi Mau Co Tim', 5, 'Cap Cuu');
INSERT INTO BENH VALUES ('BE013', 'Chan Thuong So Nao', 5, 'Cap Cuu');
INSERT INTO BENH VALUES ('BE014', 'Bong', 5, 'Cap Cuu');
INSERT INTO BENH VALUES ('BE015', 'Ngo Doc', 5, 'Cap Cuu');
INSERT INTO BENH VALUES ('BE016', 'Ung Thu Da Day', 4, 'Ung Buou');
INSERT INTO BENH VALUES ('BE017', 'Ung Thu Da', 3, 'Ung Buou');
INSERT INTO BENH VALUES ('BE018', 'Ung Thu Gan', 5, 'Ung Buou');
INSERT INTO BENH VALUES ('BE019', 'Ung Thu Phoi', 5, 'Ung Buou');
INSERT INTO BENH VALUES ('BE020', 'Ung Thu Vu', 4, 'Ung Buou');
INSERT INTO BENH VALUES ('BE021', 'Viem Tui Mat', 3, 'Noi Soi');
INSERT INTO BENH VALUES ('BE022', 'Cat Amidan', 2, 'Noi Soi');
INSERT INTO BENH VALUES ('BE023', 'Cat Ruot Thua', 3, 'Noi Soi');
INSERT INTO BENH VALUES ('BE024', 'Soi Than', 3, 'Noi Soi');
INSERT INTO BENH VALUES ('BE025', 'Thoat Vi Dia Dem', 3, 'Noi Soi');

select * from BENH;

CREATE TABLE PHONGBENH
(
	MaPhong VARCHAR(10) NOT NULL,
	Loai VARCHAR(20),
	Toa NUMBER,
	Lau NUMBER,
	SucChua INT,
	CONSTRAINT PK_PHONGBENH PRIMARY KEY (MaPhong)
);

CREATE TABLE CABENH
(
	MaBN VARCHAR(10) NOT NULL,
	MaBS VARCHAR(10) NOT NULL,
	MaBenh VARCHAR(50) NOT NULL,
	HinhThuc VARCHAR(20),
	NgayBatDau DATE,
	NgayKetThuc DATE,
	TinhTrang VARCHAR(20),
	MaPhong VARCHAR(10),
	CONSTRAINT PK_CABENH PRIMARY KEY (MaBN,MaBS,MaBenh,MaPhong),
	CONSTRAINT FK_CABENH_MaBN FOREIGN KEY (MaBN) REFERENCES BENHNHAN(MaBN),
	CONSTRAINT FK_CABENH_MaBS FOREIGN KEY (MaBS) REFERENCES BACSI(MaBS),
	CONSTRAINT FK_CABENH_MaBenh FOREIGN KEY (MaBenh) REFERENCES BENH(MaBenh),
	CONSTRAINT FK_CABENH_MaPhong FOREIGN KEY (MaPhong) REFERENCES PHONGBENH(MaPhong)
);

CREATE TABLE THIETBIYTE
(
	MaThietBi VARCHAR2(50) NOT NULL,
	SoLanSD VARCHAR2(20),
	CongDung VARCHAR2(50),
	SoLuong INT,
	CONSTRAINT PK_THIETBIYTE PRIMARY KEY (MaThietBi)
);

CREATE TABLE DIEUPHOITHIETBI
(
	MaBN VARCHAR(10) NOT NULL,
	MaThietBi VARCHAR(10) NOT NULL,
	SoLuong INT,
	CONSTRAINT PK_DIEUPHOITHIETBI PRIMARY KEY (MaBN,MaThietBi),
	CONSTRAINT FK_DIEUPHOITHIETBI_MaBN FOREIGN KEY (MaBN) REFERENCES BENHNHAN(MaBN),
	CONSTRAINT FK_DIEUPHOITHIETBI_MaThietBi FOREIGN KEY (MaThietBi) REFERENCES THIETBIYTE(MaThietBi)
);