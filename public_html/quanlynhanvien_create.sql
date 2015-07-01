-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:17:43.282




-- tables
-- Table TNhanVien
CREATE TABLE TNhanVien (
    MaNV int    NOT NULL ,
    TenNV varchar(255)    NOT NULL ,
    Ngaysinh date    NOT NULL ,
    Gioitinh varchar(255)    NOT NULL ,
    Email varchar(255)    NOT NULL ,
    Mucluong int    NOT NULL ,
    MaPhong int    NOT NULL ,
    TPhongban _MaPhong int    NOT NULL ,
    CONSTRAINT TNhanVien_pk PRIMARY KEY (MaNV)
);

-- Table TPhongban 
CREATE TABLE TPhongban  (
    MaPhong int    NOT NULL ,
    Tenphong char(50)    NOT NULL ,
    CONSTRAINT TPhongban _pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  TNhanVien_TPhongban  (table: TNhanVien)


ALTER TABLE TNhanVien ADD CONSTRAINT TNhanVien_TPhongban  FOREIGN KEY TNhanVien_TPhongban  (TPhongban _MaPhong)
    REFERENCES TPhongban  (MaPhong);



-- End of file.

