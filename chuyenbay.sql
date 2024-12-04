
select sysdate from dual;
alter session set nls_date_format='dd-mm-yyyy';

create table CHUYENBAY (
    MaCB            char(4) primary key check (regexp_like(MaCB,'CB\d{2}')),
    DKhoiHanh       varchar2(30) not null,
    NgayDi          date not null,
    Tg_khoihanh     char(5) not null,
    DDen            varchar2(30) not null,
    NgayDen         date not null,
    Tg_den          char(5) not null,
    HangGhe         varchar2(20) check (HangGhe in ('Thuong gia', 'Pho thong')) not null,
    Gia             int check (Gia>0)  not null,
    PhuPhi          int check (PhuPhi>0)  not null,
    check (NgayDen>=NgayDi)
);

create table HANHKHACH(
    MAKH NVARCHAR2(4) PRIMARY KEY CHECK(REGEXP_LIKE(MAKH,'KH\d{2}')),
    TenHK           varchar2(30) not null,
    NgaySinh        date not null,
    Phai            nvarchar2(10) check(Phai in('Nam','Nu')) not null,
    Email           varchar2(20) not null unique,
    sdt             NUMBER  not null
    );
   
insert into CHUYENBAY
    values ('CB01','Ha Noi','07-09-2023','12:00','Da Nang','07-09-2023','16:00','Thuong gia','1200','900');
insert into CHUYENBAY
    values ('CB02','Ha Noi','25-09-2023','23:00','Ho Chi Minh','26-09-2023','05:00','Pho thong','2000','1100');
insert into CHUYENBAY
    values ('CB03','Can Tho','12-12-2023','03:30','Nha Trang','12-12-2023','08:00','Thuong gia','1250','950');
insert into CHUYENBAY
    values ('CB04','Phu Quoc','21-12-2023','12:00','Da Nang','21-12-2023','15:00','Pho thong','2000','1000');
insert into CHUYENBAY
    values ('CB05','Da Lat','30-12-2023','20:00','Phu Quoc','30-12-2023','04:00','Thuong gia','1100','700');


 
insert into HANHKHACH
    values ('KH01','Nguyen Bao An','02-09-1999','Nam','an@gmail.com',0123456789);
insert into HANHKHACH
    values ('KH02','Chu Hoai Bao','12-10-2004','Nam','bao@gmail.com',0123467889);
insert into HANHKHACH
    values ('KH03','Tran Thanh Tam','25-03-2003','Nu','tam@gmail.com',0123456787);
insert into HANHKHACH
    values ('KH04','Pham Ngoc Mai','07-01-1995','Nu','mai@gmail.com',0123456786); 
    
create table DATCHUYEN (
    MaVe            char(3) primary key check (regexp_like(MaVe,'V\d{2}')),
    MaKH            NVARCHAR2(4) references HANHKHACH(MaKH),
    MaCB            char(4) references CHUYENBAY(MaCB)
);

insert into DATCHUYEN
    values ('V01','KH03','CB01'); 
insert into DATCHUYEN
    values ('V02','KH02','CB03'); 
insert into DATCHUYEN
    values ('V03','KH04','CB05'); 
insert into DATCHUYEN
    values ('V04','KH01','CB04'); 

set serveroutput on;
create or replace procedure DATCHUYENBAY(
    MV  Datchuyen.mave%type,
    MKH HANHKHACH.makh%type,
    Macb Chuyenbay.macb%type
    )
is
begin
    insert into datchuyen values(MV,MKH,MACB);
    commit;
    DBMS_OUTPUT.PUT_LINE('Dat dat chuyen ' || Macb || ' thanh cong');
    Exception 
    when others then 
    DBMS_OUTPUT.PUT_LINE('L?i : '|| SQLERRM);
end;

execute Datchuyenbay('V05','KH03','CB04');

create or replace function timchuyenbay(mcb chuyenbay.macb%type)
return nvarchar2
is  DKKH CHUYENBAY.DKHOIHANH%TYPE;
    ND  CHUYENBAY.NGAYDI%TYPE;
    TGKH    CHUYENBAY.TG_KHOIHANH%TYPE;
    DDEN      CHUYENBAY.DDEN%TYPE;
    NGAYDEN DATE;
    TGD     CHAR(5);
    HG      VARCHAR2(20);
    GIA     INT;
    PP  INT;
   
    RESULT NVARCHAR2(1000);
begin
    SELECT DKHOIHANH,NGAYDI,TG_KHOIHANH,DDEN,NGAYDEN,TG_DEN,HANGGHE,GIA,PHUPHI INTO DKKH,ND,TGKH,DDEN,NGAYDEN,TGD,HG,GIA,PP
    FROM CHUYENBAY
    WHERE MaCB = mcb;
    
    RESULT := 'THONG TIN CHUYEN BAY C?A '|| mcb ||' LA: ' ||' DIEU KIEN KHOI HANH: '|| DKKH || ',' || ' NGAYDI: ' || ND||
    ','||TGKH||','|| DDEN || ','|| ND||','||TGD||','||HG||','||GIA||','||PP;
    RETURN RESULT;
    
    EXCEPTION 
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('L?I: ' || SQLERRM);
    RETURN NULL;
end;

SELECT timchuyenbay('CB01') FROM DUAL;


CREATE OR REPLACE FUNCTION timcbtukh( mkh hanhkhach.makh%type)
RETURN SYS_REFCURSOR
IS  
    cur_result SYS_REFCURSOR;
BEGIN
    OPEN cur_result FOR
    SELECT cb.Macb,cb.DKHOIHANH, cb.NGAYDI, cb.TG_KHOIHANH, DDEN, NGAYDEN, TG_DEN, HANGGHE, GIA, PHUPHI 
    FROM CHUYENBAY cb, datchuyen dt, hanhkhach hk
    WHERE cb.MaCB = dt.MaCB and dt.makh = hk.makh and dt.makh = mkh  ;

    RETURN cur_result;

EXCEPTION 
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('L?i: ' || SQLERRM);
        RETURN NULL;
END;

DECLARE
    v_mkh hanhkhach.makh%type  := 'KH02';
    v_macb chuyenbay.macb%type; 
    v_result SYS_REFCURSOR;
    v_DKKH CHUYENBAY.DKHOIHANH%TYPE;
    v_ND CHUYENBAY.NGAYDI%TYPE;
    v_TGKH CHUYENBAY.TG_KHOIHANH%TYPE;
    v_DDEN CHUYENBAY.DDEN%TYPE;
    v_NGAYDEN DATE;
    v_TGD CHAR(5);
    v_HG VARCHAR2(20);
    v_GIA INT;
    v_PP INT;
BEGIN
    v_result := timcbtukh(v_mkh); -- G?i hàm timchuyenbay v?i mã chuy?n bay

    -- ??c và hi?n th? thông tin t? k?t qu? tr? v?
    LOOP
        FETCH v_result INTO v_macb,v_DKKH, v_ND, v_TGKH, v_DDEN, v_NGAYDEN, v_TGD, v_HG, v_GIA, v_PP;
        EXIT WHEN v_result%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Thông tin chuy?n bay:');
        DBMS_OUTPUT.PUT_LINE('  - Mã Chuy?n bay : ' || v_macb);
        DBMS_OUTPUT.PUT_LINE('  - ?i?u ki?n kh?i hành: ' || v_DKKH);
        DBMS_OUTPUT.PUT_LINE('  - Ngày ?i: ' || TO_CHAR(v_ND, 'DD-MM-YYYY'));
        DBMS_OUTPUT.PUT_LINE('  - Th?i gian kh?i hành: ' || v_TGKH);
        DBMS_OUTPUT.PUT_LINE('  - ?i?m ??n: ' || v_DDEN);
        DBMS_OUTPUT.PUT_LINE('  - Ngày ??n: ' || TO_CHAR(v_NGAYDEN, 'DD-MM-YYYY'));
        DBMS_OUTPUT.PUT_LINE('  - Th?i gian ??n: ' || v_TGD);
        DBMS_OUTPUT.PUT_LINE('  - H?ng gh?: ' || v_HG);
        DBMS_OUTPUT.PUT_LINE('  - Giá vé: ' || v_GIA);
        DBMS_OUTPUT.PUT_LINE('  - Ph? phí: ' || v_PP);
    END LOOP;

    CLOSE v_result;
END;