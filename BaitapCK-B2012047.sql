-- BAI 1:
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

create table HANHKHACH (
    MaKH            char(4) primary key check (regexp_like(MaKH,'KH\d{2}')),
    TenHK           varchar2(30) not null,
    NgaySinh        date not null,
    Phai            varchar2(10) check (Phai in ('Nam','Nu')) not null,
    Email           varchar2(20) not null,
    SDT             char(10) check (regexp_like(SDT,'0\d{9}')) not null unique
);

create table DATCHUYEN (
    MaVe            char(3) primary key check (regexp_like(MaVe,'V\d{2}')),
    MaKH            char(4) references HANHKHACH(MaKH),
    MaCB            char(4) references CHUYENBAY(MaCB)
);

select sysdate from dual;
alter session set nls_date_format='dd-mm-yyyy';

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
    values ('KH01','Nguyen Bao An','02-09-1999','Nam','an@gmail.com','0123456789');
insert into HANHKHACH
    values ('KH02','Chu Hoai Bao','12-10-2004','Nam','bao@gmail.com','012346788');
insert into HANHKHACH
    values ('KH03','Tran Thanh Tam','25-03-2003','Nu','tam@gmail.com','0123456787');
insert into HANHKHACH
    values ('KH04','Pham Ngoc Mai','07-01-1995','Nu','mai@gmail.com','0123456786');
    
insert into DATCHUYEN
    values ('V01','KH03','CB01'); 
insert into DATCHUYEN
    values ('V02','KH02','CB03'); 
insert into DATCHUYEN
    values ('V03','KH04','CB05'); 
insert into DATCHUYEN
    values ('V04','KH01','CB04'); 

select * from CHUYENBAY;
select * from HANHKHACH;
select * from DATCHUYEN;

-- BAI 2: Thu tuc cho khach dat 1 chuyen bay nao do:
create or replace procedure Dat_CB (MV char, MKH char, MCB char)
is 
begin
    insert into DATCHUYEN
        values (MV,MKH,MCB);
    commit;
end;
    -- test --
execute Dat_CB('V05','KH03','CB04');
select * from DATCHUYEN;
    
    
-- BAI 3: Ham cho tim kiem thong tin chuyen bay:
create or replace function TT_CB (noidi varchar2, noiden varchar2, ndi date, nden date)
    return char  
is
    m char;
begin
    select MaCB into m
    from CHUYENBAY
    where dkhoihanh=noidi and dden=noiden and 
            ngaydi=ndi and ngayden=nden;
    return m;
end TT_CB;
    -- test --
set serveroutput on;
declare
    ma char(4);
begin
    ma:=TT_CB('Ha Noi','Da Nang','07-09-2023','07-09-2023');
    dbms_output.put_line('Ma chuyen bay: ' || ma);
end;

-- BAI 4:
K?t n?i, qu?n lý c? s? d? li?u, nh?p/xu?t c? s? d? li?u ?úng k? thu?t. ??m b?o tính toàn v?n d? li?u b?ng các ràng bu?c trên c? s? d? li?u 
N?m v?ng ki?n th?c chuyên môn, hi?u rõ h? th?ng ?? x? lý các yêu c?u phát sinh trong công vi?c t?t h?n
H?c h?i nhi?u ki?n th?c và k? n?ng h?n ngoài qu?n tr? c? s? d? li?u, nh? ph?n c?ng và m?ng
B?o v? c? s? d? li?u, qu?n lý ng??i dùng và c?p quy?n phù h?p cho các thành viên trong công ty
Sao l?u, ph?c h?i c? s? d? li?u ?? ??m b?o c?a h? th?ng luôn s?n sàng khi có s? c?
Luôn c?n th?n tr??c khi th?c hi?n b?t k? thay ??i nào, ph?i có k? ho?ch d? phòng trong tr??ng h?p thay ??i ?ó th?t b?i
??c thêm nhi?u tài li?u ?? bi?t thêm các công ngh?, tính n?ng khi khoa h?c k? thu?t ?ang t?ng ngày phát tri?n không ng?ng
Luôn nâng cao tinh th?n trách nhi?m trong công vi?c