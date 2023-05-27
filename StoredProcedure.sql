-- 1

create or replace function func_phongbenh_tinhsisophong( PHMaPhong VARCHAR)
return INT
as
    siso INT := 0;
begin
    SELECT COUNT(DISTINCT(MABN)) INTO siso FROM CABENH
    WHERE MAPHONG = PHMaPhong AND TINHTRANG != 'Da ket thuc';
    return siso;
end;

--------------------------------------
-- 2
create or replace function func_thietbiyte_tinhsothietbidieuphoi( TBMaThietBi VARCHAR)
return INT
as
    tongso INT := 0;
begin
    SELECT SUM(DP.SOLUONG) INTO tongso FROM DIEUPHOITHIETBI DP, CABENH CB
    WHERE DP.MACA = CB.MACA AND DP.MATHIETBI = TBMAThietBi 
    AND CB.TINHTRANG != 'Da ket thuc' AND CURRENT_TIMESTAMP > DP.NGAYKETTHUC;
    return tongso;
end;

----------------------------------------
-- 3
create or replace procedure proc_bacsi_laybacsi (p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT * FROM BACSI ORDER BY MABS ASC;
exception
    when no_data_found then
        raise_application_error(-20101,'Khong ton tai du lieu bac si nao');
end;
-- 4
create or replace procedure proc_bacsi_them1bacsi (
                                                    BSMaBS VARCHAR,
                                                    BSHoTen VARCHAR,
                                                    BSGioiTinh VARCHAR,
                                                    BSNgaySinh VARCHAR,
                                                    BSQueQuan VARCHAR,
                                                    BSNoiOHienTai VARCHAR,
                                                    BSTenKhoa VARCHAR,
                                                    BSNamPhucVu INT,
                                                    changedrows OUT INT
                                                    )
as
begin
    INSERT INTO BACSI VALUES (BSMaBS, BSHoTen, BSGioiTinh, TO_DATE(BSNgaySinh,'DD/MM/YYYY'), BSQueQuan, BSNoiOHienTai, BSTenKhoa, BSNamPhucVu);
    changedrows := SQL%ROWCOUNT;
end;
-- 5

create or replace procedure proc_bacsi_xoa1bacsi (
                                                    BSMaBS VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    DELETE FROM BACSI 
        WHERE MABS = BSMaBS;
    changedrows := SQL%ROWCOUNT;
end;

-- 6
create or replace procedure proc_bacsi_sua1bacsi (
                                                    BSMaBS VARCHAR,
                                                    BSHoTen VARCHAR,
                                                    BSGioiTinh VARCHAR,
                                                    BSNgaySinh VARCHAR,
                                                    BSQueQuan VARCHAR,
                                                    BSNoiOHienTai VARCHAR,
                                                    BSTenKhoa VARCHAR,
                                                    BSNamPhucVu INT,
                                                    changedrows OUT INT
                                                    )
as
begin
    UPDATE BACSI 
        SET HOTEN = BSHoTen, GIOITINH = BSGioiTinh, NGAYSINH = TO_DATE(BSNgaySinh,'DD/MM/YYYY'), QUEQUAN = BSQueQuan, NOIOHIENTAI = BSNoiOHienTai, TENKHOA = BSTenKhoa, NAMPHUCVU = BSNamPhucVu
        WHERE MABS = BSMaBS;
    changedrows := SQL%ROWCOUNT;
end;

-----------------------------------------
-- 7
create or replace procedure proc_benh_laybenh (p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT * FROM BENH ORDER BY MABENH ASC;
exception
    when no_data_found then
        raise_application_error(-20102,'Khong ton tai du lieu benh nao');
end;

create or replace procedure proc_benh_them1benh (
                                                    BEMaBenh VARCHAR,
                                                    BETenBenh VARCHAR,
                                                    BETenKhoa VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    INSERT INTO BENH VALUES (BEMaBenh, BETenBenh, BETenKhoa);
    changedrows := SQL%ROWCOUNT;
end;

-- 8
create or replace procedure proc_benh_xoa1benh (
                                                    BEMaBenh VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    DELETE FROM BENH 
        WHERE MABENH = BEMaBenh;
    changedrows := SQL%ROWCOUNT;
end ;

-- 9
create or replace procedure proc_benh_sua1benh (
                                                    BEMaBenh VARCHAR,
                                                    BETenBenh VARCHAR,
                                                    BETenKhoa VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    UPDATE BENH 
        SET TENBENH = BETenBenh, TENKHOA = BETenKhoa
        WHERE MABENH = BEMaBenh;
    changedrows := SQL%ROWCOUNT;
end;
-------------------------------------------

-- 10
create or replace procedure proc_benhnhan_laybenhnhan (p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT * FROM BENHNHAN ORDER BY MABN ASC;
exception
    when no_data_found then
        raise_application_error(-20103,'Khong ton tai du lieu benh nhan nao');
end;
-- 11
create or replace procedure proc_benhnhan_them1benhnhan (
                                                    BNMaBN VARCHAR,
                                                    BNHoTen VARCHAR,
                                                    BNGioiTinh VARCHAR,
                                                    BNNgaySinh VARCHAR,
                                                    BNQueQuan VARCHAR,
                                                    BNNoiOHienTai VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    INSERT INTO BENHNHAN VALUES (BNMaBN, BNHoTen, BNGioiTinh, TO_DATE(BNNgaySinh,'DD/MM/YYYY'), BNQueQuan, BNNoiOHienTai);
    changedrows := SQL%ROWCOUNT;
end;

-- 12
create or replace procedure proc_benhnhan_xoa1benhnhan (
                                                    BNMaBN VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    DELETE FROM BENHNHAN 
        WHERE MABN = BNMaBN;
    changedrows := SQL%ROWCOUNT;
end;

-- 13
create or replace procedure proc_benhnhan_sua1benhnhan (
                                                    BNMaBN VARCHAR,
                                                    BNHoTen VARCHAR,
                                                    BNGioiTinh VARCHAR,
                                                    BNNgaySinh VARCHAR,
                                                    BNQueQuan VARCHAR,
                                                    BNNoiOHienTai VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    UPDATE BENHNHAN 
        SET HOTEN = BNHoTen, GIOITINH = BNGioiTinh, NGAYSINH = TO_DATE(BNNgaySinh,'DD/MM/YYYY'), QUEQUAN = BNQueQuan, NOIOHIENTAI = BNNoiOHienTai
        WHERE MABN = BNMaBN;
    changedrows := SQL%ROWCOUNT;
end;

-----------------------------------------

-- 14
create or replace procedure proc_cabenh_laycabenh (p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT * FROM CABENH ORDER BY MACA ASC;
exception
    when no_data_found then
        raise_application_error(-20104,'Khong ton tai du lieu ca benh nao');
end;

-- 15
create or replace procedure proc_cabenh_them1cabenh (
                                                    CBMaCa VARCHAR,
                                                    CBMaBN VARCHAR,
                                                    CBMaBS VARCHAR,
                                                    CBMaBenh VARCHAR,
                                                    CBMucDo VARCHAR,
                                                    CBHinhThuc VARCHAR,
                                                    CBBatDau VARCHAR,
                                                    CBKetThuc VARCHAR,
                                                    CBTinhTrang VARCHAR,
                                                    CBMaPhong VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
    sl INT;
    phong VARCHAR(10);
    khongcontrong EXCEPTION;
begin
    IF CBMaPhong IS NOT NULL THEN
        SELECT CONTRONG INTO sl FROM PHONGBENH WHERE MAPHONG = CBMaPhong;
        IF sl <= 0 THEN
            RAISE khongcontrong;
        END IF;
    END IF;
   
    INSERT INTO CABENH VALUES (CBMaCa, CBMaBN, CBMaBS, CBMaBenh, CBMucDo, CBHinhThuc, TO_TIMESTAMP(CBBatDau,'DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP(CBKetThuc,'DD/MM/YYYY HH24:MI:SS'), CBTinhTrang, CBMaPhong);
    changedrows := SQL%ROWCOUNT;
    UPDATE CABENH SET MAPHONG = CBMaPhong WHERE MABN = CBMaBN;
    UPDATE PHONGBENH SET CONTRONG = SUCCHUA - func_phongbenh_tinhsisophong(MAPHONG);
exception
    when khongcontrong then
        raise_application_error('-20105','Phong da day');
end;

-- 16
create or replace procedure proc_cabenh_xoa1cabenh (
                                                    CBMaCa VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
    phong VARCHAR(10);
begin
    SELECT MAPHONG INTO phong FROM CABENH WHERE MACA = CBMaCa;
    DELETE FROM CABENH 
        WHERE MACA = CBMaCa;
    changedrows := SQL%ROWCOUNT;
    IF phong IS NOT NULL THEN
       UPDATE PHONGBENH SET CONTRONG = SUCCHUA - func_phongbenh_tinhsisophong(phong);
    END IF;
end;

-- 17
create or replace procedure proc_cabenh_sua1cabenh (
                                                    CBMaCa VARCHAR,
                                                    CBMucDo VARCHAR,
                                                    CBHinhThuc VARCHAR,
                                                    CBKetThuc VARCHAR,
                                                    CBTinhTrang VARCHAR,
                                                    CBMaPhong VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
    phongtruoc VARCHAR(10);
    khongcontrong EXCEPTION;
    sl INT := 1;
    bn VARCHAR(10);
begin
    SELECT MAPHONG INTO phongtruoc FROM CABENH WHERE MACA = CBMaCa;
    IF CBMaPhong is not null THEN
        SELECT CONTRONG INTO sl FROM PHONGBENH WHERE MAPHONG = CBMaPhong;
    END IF;
    SELECT MABN INTO bn FROM CABENH WHERE MACA = CBMaCa;
    IF (phongtruoc <> CBMaPhong AND CBMaPhong is not null AND ((sl-1) < 0)) THEN
        RAISE khongcontrong;
    END IF;
    
    UPDATE CABENH 
        SET MUCDO = CBMucDo, HINHTHUC = CBHinhThuc, NGAYKETTHUC = TO_TIMESTAMP(CBKetThuc,'DD/MM/YYYY HH24:MI:SS'), TINHTRANG = CBTinhTrang, MAPHONG = CBMaPhong
        WHERE MACA = CBMaCa;
    changedrows := SQL%ROWCOUNT;
    
    UPDATE CABENH
        SET MAPHONG = CBMaPhong WHERE MABN = bn AND TINHTRANG != 'Da ket thuc';
    
    IF phongtruoc IS NOT NULL THEN
        UPDATE PHONGBENH SET CONTRONG = SUCCHUA - func_phongbenh_tinhsisophong(phongtruoc) WHERE MAPHONG = phongtruoc;
    END IF;
    IF CBMaPhong IS NOT NULL THEN
        UPDATE PHONGBENH SET CONTRONG = SUCCHUA - func_phongbenh_tinhsisophong(CBMaPhong) WHERE MAPHONG = CBMaPhong;
    END IF;

exception
    when khongcontrong then
        raise_application_error (-20106, 'Phong da day');
end;

-----------------------------------------

-- 18
create or replace procedure proc_dieuphoithietbi_laydieuphoithietbi (p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT * FROM DIEUPHOITHIETBI ORDER BY MACA, MATHIETBI ASC;
exception
    when no_data_found then
        raise_application_error(-20107,'Khong ton tai du lieu dieu phoi thiet bi nao');
end;

-- 19
create or replace procedure proc_dieuphoithietbi_them1dieuphoithietbi (
                                                    DPMaCa VARCHAR,
                                                    DPMaThietBi VARCHAR,
                                                    DPSoLuong INT,
                                                    DPDieuPhoi VARCHAR,
                                                    DPKetThuc VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
    tt VARCHAR(20);
    tinhtrangkhonghople EXCEPTION;
     sl INT;
    khongdusoluong EXCEPTION;
   
begin
    SELECT TINHTRANG INTO tt FROM CABENH WHERE MACA = DPMaCa;
    IF tt = 'Da ket thuc' THEN
        RAISE tinhtrangkhonghople;
    END IF;
    
    SELECT SLCONLAI into sl FROM THIETBIYTE WHERE MATHIETBI = DPMaThietBi;
    IF (sl-DPSoLuong) < 0 THEN
        raise khongdusoluong;
    END IF;
    
    INSERT INTO DIEUPHOITHIETBI VALUES (DPMaCa, DPMaThietBi, DPSoLuong, TO_TIMESTAMP(DPDieuPhoi,'DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP(DPKetThuc,'DD/MM/YYYY HH24:MI:SS'));
    changedrows := SQL%ROWCOUNT;
    UPDATE THIETBIYTE SET SLCONLAI = SLCONLAI - DPSoLuong WHERE MATHIETBI = DPMaThietBi;
    
exception
    when tinhtrangkhonghople then
        raise_application_error(-20108,'Ca benh da ket thuc. Khong the dieu phoi');
    when khongdusoluong then
        raise_application_error(-20109,'Thiet bi khong con du so luong');
end;

-- 20
create or replace procedure proc_dieuphoithietbi_xoa1dieuphoithietbi (
                                                    DPMaCa VARCHAR,
                                                    DPMaThietBi VARCHAR,
                                                    DPDieuPhoi VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    DELETE FROM DIEUPHOITHIETBI
        WHERE MACA = DPMaCa AND MATHIETBI = DPMaThietBi AND NGAYDIEUPHOI = TO_TIMESTAMP (DPDieuPhoi , 'DD/MM/YYYY HH24:MI:SS');
    changedrows := SQL%ROWCOUNT;
    UPDATE THIETBIYTE SET SLCONLAI = SLTONG - func_thietbiyte_tinhsothietbidieuphoi(DPMaThietBi);
end;

-- 21
create or replace procedure proc_dieuphoithietbi_sua1dieuphoithietbi (
                                                    DPMaCa VARCHAR,
                                                    DPMaThietBi VARCHAR,
                                                    DPSoLuong INT,
                                                    DPDieuPhoi VARCHAR,
                                                    DPKetThuc VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
    sl INT;
    khongdusoluong EXCEPTION;
begin
    SELECT SLCONLAI into sl FROM THIETBIYTE WHERE MATHIETBI = DPMaThietBi;
    IF (sl-DPSoLuong) < 0 THEN
        raise khongdusoluong;
    END IF;
    
    UPDATE DIEUPHOITHIETBI 
        SET SOLUONG = DPSoLuong, NGAYKETTHUC = TO_TIMESTAMP(DPKetThuc,'DD/MM/YYYY HH24:MI:SS')
        WHERE MACA = DPMaCa AND MATHIETBI = DPMaThietBi AND NGAYDIEUPHOI = TO_TIMESTAMP (DPDieuPhoi , 'DD/MM/YYYY HH24:MI:SS');
    changedrows := SQL%ROWCOUNT;
    UPDATE THIETBIYTE SET SLCONLAI = SLCONLAI - DPSoLuong WHERE MATHIETBI = DPMaThietBi;
exception
    when khongdusoluong then
        raise_application_error(-20110,'Thiet bi khong con du so luong');
end;

-----------------------------------------

-- 22
create or replace procedure proc_phongbenh_layphongbenh (p_result OUT SYS_REFCURSOR)
as
begin
    UPDATE PHONGBENH SET CONTRONG = SUCCHUA - func_phongbenh_tinhsisophong(MAPHONG);
    OPEN p_result FOR SELECT * FROM PHONGBENH ORDER BY MAPHONG ASC;
exception
    when no_data_found then
        raise_application_error(-20111,'Khong ton tai du lieu phong benh nao');
end;

-- 23
create or replace procedure proc_phongbenh_them1phongbenh (
                                                    PHMaPhong VARCHAR,
                                                    PHLoai VARCHAR,
                                                    PHToa INT,
                                                    PHLau INT,
                                                    PHSucChua INT,
                                                    changedrows OUT INT
                                                    )
as
begin
    INSERT INTO PHONGBENH VALUES (PHMaPhong, PHLoai, PHToa, PHLau, PHSucChua, PHSucChua - func_phongbenh_tinhsisophong(PHMaPhong));
    changedrows := SQL%ROWCOUNT;
end;

-- 24
create or replace procedure proc_phongbenh_xoa1phongbenh (
                                                    PHMaPhong VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    DELETE FROM PHONGBENH 
        WHERE MAPHONG = PHMaPhong;
    changedrows := SQL%ROWCOUNT;
end;

-- 25
create or replace procedure proc_phongbenh_sua1phongbenh (
                                                    PHMaPhong VARCHAR,
                                                    PHToa NUMBER,
                                                    PHLau NUMBER,
                                                    PHSucChua NUMBER,
                                                    PHLoai VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
    succhuakhongdu EXCEPTION;
begin
    IF (PHSucChua - func_phongbenh_tinhsisophong(PHMaPhong)) < 0 THEN
        RAISE succhuakhongdu;
    END IF;
    
    UPDATE PHONGBENH 
        SET TOA = PHToa, LAU = PHLau, SUCCHUA = PHSucChua, LOAI = PHLoai, CONTRONG = PHSucChua - (func_phongbenh_tinhsisophong(PHMaPhong))
        WHERE MAPHONG = PHMaPhong;
    changedrows := SQL%ROWCOUNT;

exception
    when succhuakhongdu then
        raise_application_error(-20112,'Phong khong chua du benh nhan hien co');
end;

-------------------------------------------------

-- 26
create or replace procedure proc_taikhoan_laytaikhoan_theotendangnhapmatkhau (
                                                                                TKTenDangNhap VARCHAR,
                                                                                TKMatKhau VARCHAR,
                                                                                p_result OUT SYS_REFCURSOR)
as
begin
    IF TKMatKhau = '' THEN
    OPEN p_result FOR SELECT * FROM TAIKHOAN 
                        WHERE TENDANGNHAP = TKTenDangNhap AND MATKHAU IS NULL
                        ORDER BY TENDANGNHAP ASC;
    ELSE
        OPEN p_result FOR SELECT * FROM TAIKHOAN 
                        WHERE TENDANGNHAP = TKTenDangNhap AND MATKHAU = TKMatKhau
                        ORDER BY TENDANGNHAP ASC;
    END IF;
exception
    when no_data_found then
        raise_application_error(-20113,'Khong ton tai du lieu tai khoan nao');
end;

-- 27
create or replace procedure proc_taikhoan_them1taikhoan (
                                                    TKTenDangNhap VARCHAR,
                                                    TKMatKhau VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    INSERT INTO TAIKHOAN VALUES (TKTenDangNhap, TKMatKhau);
    changedrows := SQL%ROWCOUNT;
end;

-- 28
create or replace procedure proc_taikhoan_xoa1taikhoan (
                                                    TKTenDangNhap VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    DELETE FROM TAIKHOAN 
        WHERE TENDANGNHAP = TKTenDangNhap;
    changedrows := SQL%ROWCOUNT;
end;

-- 29
create or replace procedure proc_taikhoan_sua1taikhoan (
                                                    TKTenDangNhap VARCHAR,
                                                    TKMatKhau VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    UPDATE TAIKHOAN 
        SET MATKHAU = TKMatKhau
        WHERE TENDANGNHAP = TKTenDangNhap;
    changedrows := SQL%ROWCOUNT;
end;

-----------------------------------------

-- 30
create or replace procedure proc_thietbiyte_laythietbiyte (p_result OUT SYS_REFCURSOR)
as
begin
    UPDATE THIETBIYTE SET SLCONLAI = SLTONG - func_thietbiyte_tinhsothietbidieuphoi(MATHIETBI);
    OPEN p_result FOR SELECT * FROM THIETBIYTE ORDER BY MATHIETBI ASC;
exception
    when no_data_found then
        raise_application_error(-20114,'Khong ton tai du lieu thiet bi y te nao');
end;

-- 31
create or replace procedure proc_thietbiyte_them1thietbiyte (
                                                    TBMaThietBi VARCHAR,
                                                    TBTenThietBi VARCHAR,
                                                    TBLoaiSD VARCHAR,
                                                    TBCongDung VARCHAR,
                                                    TBSoLuongTong INT,
                                                    changedrows OUT INT
                                                    )
as
begin
    INSERT INTO THIETBIYTE VALUES (TBMaThietBi, TBTenThietBi, TBLoaiSD, TBCongDung, TBSoLuongTong, TBSoLuongTong - func_thietbiyte_tinhsothietbidieuphoi(TBMaThietBi));
    changedrows := SQL%ROWCOUNT;
end;

-- 32
create or replace procedure proc_thietbiyte_xoa1thietbiyte (
                                                    TBMaThietBi VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
begin
    DELETE FROM THIETBIYTE 
        WHERE MATHIETBI = TBMaThietBi;
    changedrows := SQL%ROWCOUNT;
end;

-- 33
create or replace procedure proc_thietbiyte_sua1thietbiyte (
                                                    TBMaThietBi VARCHAR,
                                                    TBTenThietBi VARCHAR,
                                                    TBLoaiSD VARCHAR,
                                                    TBCongDung VARCHAR,
                                                    TBSoLuongTong INT,
                                                    changedrows OUT INT
                                                    )
as
    khongdudieuphoi EXCEPTION;
begin
    IF (TBSoLuongTong - func_thietbiyte_tinhsothietbidieuphoi(TBMaThietBi)) < 0 THEN
        RAISE khongdudieuphoi;
    END IF;
    
    UPDATE THIETBIYTE 
        SET TENTHIETBI = TBTenThietBi, LOAISD = TBLoaiSD, CONGDUNG = TBCongDung, SLTONG = TBSoLuongTong, SLCONLAI = TBSoLuongTong - func_thietbiyte_tinhsothietbidieuphoi(TBMaThietBi)
        WHERE MATHIETBI = TBMaThietBi;
    changedrows := SQL%ROWCOUNT;

exception
    when khongdudieuphoi then
        raise_application_error (-20115,'Thiet bi khong du so luong cho luong dieu phoi hien co');
end;
------------------------------------------------

-- 34
create or replace procedure proc_cabenh_laycabenh_theobacsi (BSMaBS VARCHAR, p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT MACA, MABN, MABENH, MUCDO, HINHTHUC, NGAYBATDAU, NGAYKETTHUC, TINHTRANG, MAPHONG FROM CABENH
                        WHERE MABS = BSMaBS ORDER BY MACA ASC;
exception
    when no_data_found then
        raise_application_error(-20116,'Khong ton tai du lieu ca benh nao');
end;


-- 35
create or replace procedure proc_cabenh_sua1cabenh_theobacsi (
                                                    BSMaBS VARCHAR,
                                                    CBMaCa VARCHAR,
                                                    CBMucDo VARCHAR,
                                                    CBHinhThuc VARCHAR,
                                                    CBKetThuc VARCHAR,
                                                    CBTinhTrang VARCHAR,
                                                    CBMaPhong VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
    phongtruoc VARCHAR(10);
    khongcontrong EXCEPTION;
    sl INT;
    bn VARCHAR(10);
begin
    SELECT MAPHONG INTO phongtruoc FROM CABENH WHERE MACA = CBMaCa;
    IF CBMaPhong is not null THEN
        SELECT CONTRONG INTO sl FROM PHONGBENH WHERE MAPHONG = CBMaPhong;
    END IF;
    SELECT MABN INTO bn FROM CABENH WHERE MACA = CBMaCa;
    IF (phongtruoc <> CBMaPhong AND CBMaPhong is not null AND ((sl-1) < 0)) THEN
        RAISE khongcontrong;
    END IF;
    
    UPDATE CABENH 
        SET MUCDO = CBMucDo, HINHTHUC = CBHinhThuc, NGAYKETTHUC = TO_TIMESTAMP(CBKetThuc,'DD/MM/YYYY HH24:MI:SS'), TINHTRANG = CBTinhTrang, MAPHONG = CBMaPhong
        WHERE MACA = CBMaCa AND MABS = BSMaBS;
    changedrows := SQL%ROWCOUNT;
    
    UPDATE CABENH
        SET MAPHONG = CBMaPhong WHERE MABN = bn AND TINHTRANG != 'Da ket thuc';
    
    IF phongtruoc IS NOT NULL THEN
        UPDATE PHONGBENH SET CONTRONG = SUCCHUA - func_phongbenh_tinhsisophong(phongtruoc) WHERE MAPHONG = phongtruoc;
    END IF;
    IF CBMaPhong IS NOT NULL THEN
        UPDATE PHONGBENH SET CONTRONG = SUCCHUA - func_phongbenh_tinhsisophong(CBMaPhong) WHERE MAPHONG = CBMaPhong;
    END IF;

exception
    when khongcontrong then
        raise_application_error (-20117, 'Phong da day');
end;


-- 36
create or replace procedure proc_dieuphoithietbi_laydieuphoithietbi_theobacsi (BSMaBS VARCHAR, p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT DISTINCT DP.* FROM DIEUPHOITHIETBI DP, CABENH CB 
                        WHERE CB.MABS = BSMaBS AND CB.MACA = DP.MACA ORDER BY DP.MACA, DP.MATHIETBI ASC;
exception
    when no_data_found then
        raise_application_error(-20118,'Khong ton tai du lieu dieu phoi thiet bi nao');
end;


-- 37
create or replace procedure proc_dieuphoithietbi_them1dieuphoithietbi_theobacsi (
                                                    BSMaBS VARCHAR,
                                                    DPMaCa VARCHAR,
                                                    DPMaThietBi VARCHAR,
                                                    DPSoLuong INT,
                                                    DPDieuPhoi VARCHAR,
                                                    DPKetThuc VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
    tt VARCHAR(20);
    tinhtrangkhonghople EXCEPTION;
    soca INT := 0;
    khongcoca EXCEPTION;
    sl INT;
    khongdusoluong EXCEPTION;
begin
     SELECT TINHTRANG INTO tt FROM CABENH WHERE MACA = DPMaCa;
    IF tt = 'Da ket thuc' THEN
        RAISE tinhtrangkhonghople;
    END IF;
    
    SELECT COUNT(*) INTO soca FROM CABENH WHERE MABS = BSMaBS AND MACA = DPMaCa;
    IF soca = 0 THEN
        RAISE khongcoca;
    END IF;
    
    SELECT SLCONLAI into sl FROM THIETBIYTE WHERE MATHIETBI = DPMaThietBi;
    IF (sl-DPSoLuong) < 0 THEN
        raise khongdusoluong;
    END IF;
    
    INSERT INTO DIEUPHOITHIETBI VALUES (DPMaCa, DPMaThietBi, DPSoLuong, TO_TIMESTAMP(DPDieuPhoi,'DD/MM/YYYY HH24:MI:SS'), TO_TIMESTAMP(DPKetThuc,'DD/MM/YYYY HH24:MI:SS'));
    changedrows := SQL%ROWCOUNT;
    UPDATE THIETBIYTE SET SLCONLAI = (SLCONLAI - DPSoLuong) WHERE MATHIETBI = DPMaThietBi;

exception
    when tinhtrangkhonghople then
        raise_application_error(-20119,'Ca benh da ket thuc. Khong the dieu phoi');
    when khongcoca then
        raise_application_error(-20120, 'Khong duoc tao dieu phoi thiet bi ca benh cua bac si khac');
    when khongdusoluong then
        raise_application_error(-20121,'Thiet bi khong con du so luong');
end;


-- 38
create or replace procedure proc_dieuphoithietbi_sua1dieuphoithietbi_theobacsi (
                                                    BSMaBS VARCHAR,
                                                    DPMaCa VARCHAR,
                                                    DPMaThietBi VARCHAR,
                                                    DPSoLuong INT,
                                                    DPDieuPhoi VARCHAR,
                                                    DPKetThuc VARCHAR,
                                                    changedrows OUT INT
                                                    )
as
     soca INT := 0;
    khongcoca EXCEPTION;
    sl INT;
    khongdusoluong EXCEPTION;
begin
    SELECT COUNT(*) INTO soca FROM CABENH WHERE MABS = BSMaBS AND MACA = DPMaCa;
    IF soca = 0 THEN
        RAISE khongcoca;
    END IF;
    SELECT SLCONLAI into sl FROM THIETBIYTE WHERE MATHIETBI = DPMaThietBi;
    IF (sl-DPSoLuong) < 0 THEN
        raise khongdusoluong;
    END IF;
    
    UPDATE DIEUPHOITHIETBI 
        SET SOLUONG = DPSoLuong, NGAYKETTHUC = TO_TIMESTAMP(DPKetThuc,'DD/MM/YYYY HH24:MI:SS')
        WHERE MACA = DPMaCa AND MATHIETBI = DPMaThietBi AND NGAYDIEUPHOI = TO_TIMESTAMP (DPDieuPhoi , 'DD/MM/YYYY HH24:MI:SS');
    changedrows := SQL%ROWCOUNT;
    UPDATE THIETBIYTE SET SLCONLAI = SLTONG - func_thietbiyte_tinhsothietbidieuphoi(DPMaThietBi);

exception
    when khongcoca then
        raise_application_error(-20122, 'Khong duoc sua dieu phoi thiet bi ca benh cua bac si khac');
    when khongdusoluong then
        raise_application_error(-20123,'Thiet bi khong con du so luong');
end;

-- 39
create or replace procedure proc_bacsi_laybacsi_theobacsi (BSMaBS VARCHAR, p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT * FROM BACSI WHERE MABS = BSMaBS ORDER BY MABS ASC;
exception
    when no_data_found then
        raise_application_error(-20124,'Khong ton tai du lieu bac si nao');
end;

-------------------------------------------------
-- 40
create or replace procedure proc_bacsi_laybacsi_theobenhnhan (BNMaBN VARCHAR, p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT DISTINCT BS.* FROM BACSI BS, CABENH CB 
                        WHERE CB.MABN = BNMaBN AND BS.MABS = CB.MABS ORDER BY BS.MABS ASC;
exception
    when no_data_found then
        raise_application_error(-20125,'Khong ton tai du lieu bac si nao');
end;

-- 41
create or replace procedure proc_cabenh_laycabenh_theobenhnhan (BNMaBN VARCHAR, p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT DISTINCT CB.MACA, CB.MABS, CB.MABENH, B.TENBENH, CB.MUCDO, CB.HINHTHUC, CB.NGAYBATDAU, CB.NGAYKETTHUC, CB.TINHTRANG, CB.MAPHONG
                        FROM CABENH CB, BENH B WHERE CB.MABN = BNMaBN AND CB.MABENH = B.MABENH ORDER BY CB.MACA ASC;
exception
    when no_data_found then
        raise_application_error(-20126,'Khong ton tai du lieu ca benh nao');
end;

-- 42
create or replace procedure proc_dieuphoithietbi_laydieuphoithietbi_theobenhnhan (BNMaBN VARCHAR, p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT DISTINCT DP.MATHIETBI, TB.TENTHIETBI, TB.CONGDUNG, DP.SOLUONG, DP.NGAYDIEUPHOI, DP.NGAYKETTHUC
                        FROM DIEUPHOITHIETBI DP, THIETBIYTE TB, CABENH CB 
                        WHERE DP.MACA = CB.MACA AND CB.MABN = BNMaBN AND DP.MATHIETBI = TB.MATHIETBI 
                        ORDER BY DP.MATHIETBI ASC;
exception
    when no_data_found then
        raise_application_error(-20127,'Khong ton tai du lieu dieu phoi thiet bi nao');
end;

-- 43
create or replace procedure proc_benhnhan_laybenhnhan_theobenhnhan (BNMaBN VARCHAR, p_result OUT SYS_REFCURSOR)
as
begin
    OPEN p_result FOR SELECT * FROM BENHNHAN WHERE MABN = BNMaBN ORDER BY MABN ASC;
exception
    when no_data_found then
        raise_application_error(-20128,'Khong ton tai du lieu benh nhan nao');
end;
----------------------------------------------

                                                   