create database DatabaseFirst
go
use DatabaseFirst

go
-- Tao bang Khoa
CREATE TABLE Khoa (
    MaKhoa INT PRIMARY KEY,
    TenKhoa NVARCHAR(MAX)
);

go
-- Them du lieu vao bang Khoa
INSERT INTO Khoa (MaKhoa, TenKhoa)
VALUES
    (1, 'CNTT'),
    (2, 'DT'),
    (3, 'CK');

go
-- Tao bang Lop
CREATE TABLE Lop (
    MaLop INT PRIMARY KEY,
    TenLop NVARCHAR(MAX)
);

go
-- Thêm du lieu vao bang Lop
INSERT INTO Lop (MaLop, TenLop)
VALUES
    (1, '21T3'),
    (2, '22T3'),
    (3, '22DT3'),
    (4, '23CK1');

go
-- Tao bang Sinh Vien
CREATE TABLE SinhVien (
    MaSinhVien INT PRIMARY KEY,
    HoTen NVARCHAR(MAX),
    Age INT,
    LopMaLop INT FOREIGN KEY REFERENCES Lop(MaLop),
    KhoaMaKhoa INT FOREIGN KEY REFERENCES Khoa(MaKhoa)
);

go
-- Thêm du lieu vao bang sinh vien
INSERT INTO SinhVien (MaSinhVien, HoTen, Age, LopMaLop, KhoaMaKhoa)
VALUES
    (1, 'Dinh Cong Minh', 20, 1, 1),
    (2, 'Nguyen Van A', 19, 2, 1),
    (3, 'Nguyen Van B', 22, 1, 1),
    (4, 'Tran Van C', 21, 2, 2),
    (5, 'Tran Van D', 21, 2, 2);