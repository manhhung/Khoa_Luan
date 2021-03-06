USE [QLBG]
GO
/****** Object:  StoredProcedure [dbo].[SP_CapNhatHangHoa]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_CapNhatHangHoa] (@MaHangHoa nchar(10), @MaLoaiHang nchar(10), @TenHangHoa nvarchar(50),
 @SoLuong int, @DonGia int, @DonViTinh nchar(10))
	
AS
BEGIN
	
	SET NOCOUNT ON;
	UPDATE HANGHOA SET MaHangHoa = @MaHangHoa, MaLoaiHang = @MaLoaiHang, TenHangHoa = @TenHangHoa, SoLuong = @SoLuong, DonGia = @DonGia, DonViTinh = @DonViTinh
	WHERE (MaHangHoa = @MaHangHoa AND MaLoaiHang = @MaLoaiHang)
	
		END
GO
/****** Object:  StoredProcedure [dbo].[SP_CapNhatHoaDon]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CapNhatHoaDon] (@MaHoaDon nchar(10), @MaKhachHang nchar(10), @MaNhanVien nchar(10), @NgayLapHoaDon datetime)
	
AS
BEGIN
	
	SET NOCOUNT ON;
update HOADON set MaHoaDon = @MaHoaDon, MaKhachHang = @MaKhachHang, MaNhanVien = @MaNhanVien, NgayLapHoaDon = @NgayLapHoaDon
where (MaHoaDon = @MaHoaDon) AND (MaKhachHang = @MaKhachHang)

	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_CapNhatHoaDonChiTiet]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CapNhatHoaDonChiTiet] (@MaHoaDon nchar(10), @MaHangHoa nchar(10), @SoLuong int, @DonGia int)
	
AS
BEGIN
	
	SET NOCOUNT ON;

  update HOADONCHITIET set MaHoaDon = @MaHoaDon, MaHangHoa = @MaHangHoa, SoLuong = @SoLuong, DonGia = @DonGia
  where (MaHoaDon = @MaHoaDon) and (MaHangHoa = @MaHangHoa)
	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_CapNhatKhachHang]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_CapNhatKhachHang] (@MaKhachHang nchar(10), @TenKhachHang nvarchar(50), @GioiTinh bit,
@NgaySinh datetime, @DiaChi nvarchar(50), @DienThoai nchar(20))

AS
BEGIN
SET NOCOUNT ON;
UPDATE KHACHHANG SET MaKhachHang = @MaKhachHang, TenKhachHang = @TenKhachHang, GioiTinh = @GioiTinh,
NgaySinh = @NgaySinh, DiaChi = @DiaChi, DienThoai = @DienThoai
where MaKhachHang = @MaKhachHang

END

GO
/****** Object:  StoredProcedure [dbo].[SP_CapNhatLoaiHang]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CapNhatLoaiHang] (@MaLoaiHang nchar(10), @TenLoaiHang nvarchar(50), @MoTa nvarchar(50))
AS
BEGIN
	
	SET NOCOUNT ON;

    update LOAIHANG set MaLoaiHang = @MaLoaiHang, TenLoaiHang = @TenLoaiHang, MoTa = @MoTa
	where MaLoaiHang = @MaLoaiHang
	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_CapNhatNhaCungCap]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CapNhatNhaCungCap] (@MaNCC nchar(10), @TenNCC nvarchar(50), @DiaChi nvarchar(50), @DienThoai nchar(20))
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE NHACUNGCAP SET MaNCC = @MaNCC, TenNCC = @TenNCC, DiaChi = @DiaChi, DienThoai = @DienThoai
	where MaNCC = @MaNCC
END

GO
/****** Object:  StoredProcedure [dbo].[SP_CapNhatNhanVien]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CapNhatNhanVien] (@MaNhanVien nchar(10), @TenNhanVien nvarchar(50), @DiaChiNV nvarchar(50), @DienThoai nchar(20), @ChucVu nchar(20), @GioiTinh bit, @NgaySinh datetime)

AS
BEGIN

	SET NOCOUNT ON;
	update NHANVIEN set MaNhanVien = @MaNhanVien, TenNhanVien = @TenNhanVien, DiaChiNV = @DiaChiNV, DienThoai = @DienThoai, ChucVu = @ChucVu, GioiTinh = @GioiTinh, NgaySinh = @NgaySinh
	where MaNhanVien= @MaNhanVien
	 END

GO
/****** Object:  StoredProcedure [dbo].[SP_CapNhatTaiKhoan]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CapNhatTaiKhoan] (@TenTaiKhoan nchar(20), @MatKhau nchar(20), @Quyen int, @MaNhanVien nchar(10))

AS
BEGIN
SET NOCOUNT ON;
Update TAIKHOAN set TenTaiKhoan = @TenTaiKhoan, MatKhau = @MatKhau, Quyen = @Quyen, MaNhanVien = @MaNhanVien
where TenTaiKhoan = @TenTaiKhoan

END

GO
/****** Object:  StoredProcedure [dbo].[SP_DangNhapQuyen]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_DangNhapQuyen] @TenTaiKhoan nchar(20), @MatKhau nchar(20)

AS
BEGIN

	SET NOCOUNT ON;


	SELECT Quyen
	From TAIKHOAN
	where (TenTaiKhoan = @TenTaiKhoan) and (MatKhau = @MatKhau)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_DangNhapTaiKhoan]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_DangNhapTaiKhoan] @TenTaiKhoan nchar(20), @MatKhau nchar(20)

AS
BEGIN

	SET NOCOUNT ON;


	SELECT COUNT(*)
	From TAIKHOAN
	where (TenTaiKhoan = @TenTaiKhoan) and (MatKhau = @MatKhau)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HienThiGiaTuTenHangHoa]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_HienThiGiaTuTenHangHoa] @TenHangHoa nvarchar(50)

AS
BEGIN
SET NOCOUNT ON;
SElect DonGia from HANGHOA
where TenHangHoa = @TenHangHoa
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HienThiHangHoa]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HienThiHangHoa]

AS
BEGIN
SET NOCOUNT ON;
SElect * from HANGHOA
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HienThiHangHoaQuaLoaiHang]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HienThiHangHoaQuaLoaiHang] @MaLoaiHang nchar(10)

AS
BEGIN
	
	SET NOCOUNT ON;
	select *
	from HANGHOA
	where MaLoaiHang like '%'+@MaLoaiHang+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HienThiHangHoaTuTenHangHoa]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_HienThiHangHoaTuTenHangHoa] @TenHangHoa nvarchar(50)

AS
BEGIN
SET NOCOUNT ON;
SElect MaHangHoa from HANGHOA
where TenHangHoa = @TenHangHoa
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HienThiHoaDon]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HienThiHoaDon]
	
AS
BEGIN
	
	SET NOCOUNT ON;

  
	SELECT *
	From HOADON
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HienThiHoaDonChiTiet]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HienThiHoaDonChiTiet] @MaHoaDon nchar(10)
	
AS
BEGIN
	
	SET NOCOUNT ON;

  
	SELECT HOADONCHITIET.MaHoaDon, HOADONCHITIET.MaHangHoa, HANGHOA.TenHangHoa, HOADONCHITIET.SoLuong, HOADONCHITIET.DonGia, HANGHOA.DonViTinh
	From HOADONCHITIET, HOADON, HANGHOA
	where (HOADONCHITIET.MaHoaDon = HOADON.MaHoaDon) AND (HOADONCHITIET.MaHangHoa = HANGHOA.MaHangHoa) AND (HOADONCHITIET.MaHoaDon = @MaHoaDon)
	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HienThiKhachHang]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HienThiKhachHang]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM KHACHHANG
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HienThiLoaiHang]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HienThiLoaiHang] 
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT * from LOAIHANG
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HienThiNhaCungCap]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HienThiNhaCungCap]

AS
BEGIN
SET NOCOUNT ON;
SElect * from NHACUNGCAP
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HienThiNhanVien]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HienThiNhanVien]

AS
BEGIN
SET NOCOUNT ON;
SElect * from NHANVIEN
END

GO
/****** Object:  StoredProcedure [dbo].[SP_HienThiTaiKhoan]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HienThiTaiKhoan]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TenTaiKhoan, MatKhau, Quyen, TenNhanVien
	FROM TAIKHOAN, NHANVIEN
	where TAIKHOAN.MaNhanVien = NHANVIEN.MaNhanVien
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LoadChucVu]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LoadChucVu]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	select MaChucVu, TenChucVu
	From CHUCVU
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LoadChucVuFromTenNhanVien]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LoadChucVuFromTenNhanVien] @MaNhanVien nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ChucVu
	from NHANVIEN
	where MaNhanVien = @MaNhanVien
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LoadLoaiHang]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LoadLoaiHang]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	select MaLoaiHang, TenLoaiHang
	From LOAIHANG
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LoadNhanVien]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_LoadNhanVien]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	select MaNhanVien, TenNhanVien
	From NHANVIEN
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LoadQuyen]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_LoadQuyen]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	select MaQuyen, TenQuyen
	From QUYEN
END

GO
/****** Object:  StoredProcedure [dbo].[SP_ThemHangHoa]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_ThemHangHoa] (@MaHangHoa nchar(10), @MaLoaiHang nchar(10), @TenHangHoa nvarchar(50),
 @SoLuong int, @DonGia int, @DonViTinh nchar(10))
	
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT into HANGHOA values (@MaHangHoa, @MaLoaiHang, @TenHangHoa, @SoLuong, @DonGia, @DonViTinh)
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_ThemHoaDon]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ThemHoaDon] (@MaHoaDon nchar(10), @MaKhachHang nchar(10), @MaNhanVien nchar(10), @NgayLapHoaDon datetime)
	
AS
BEGIN
	
	SET NOCOUNT ON;
insert into HOADON values (@MaHoaDon, @MaKhachHang, @MaNhanVien, @NgayLapHoaDon)
	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_ThemHoaDonChiTiet]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ThemHoaDonChiTiet] (@MaHoaDon nchar(10), @MaHangHoa nchar(10), @SoLuong int, @DonGia int)
	
AS
BEGIN
	
	SET NOCOUNT ON;

  
	insert into HOADONCHITIET values (@MaHoaDon, @MaHangHoa, @SoLuong, @DonGia)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_ThemKhachHang]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ThemKhachHang] (@MaKhachHang nchar(10), @TenKhachHang nvarchar(50), @GioiTinh bit,
@NgaySinh datetime, @DiaChi nvarchar(50), @DienThoai nchar(20))

AS
BEGIN
SET NOCOUNT ON;
INSERT INTO KHACHHANG values (@MaKhachHang, @TenKhachHang, @GioiTinh, @NgaySinh, @DiaChi, @DienThoai)

END

GO
/****** Object:  StoredProcedure [dbo].[SP_ThemLoaiHang]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ThemLoaiHang] (@MaLoaiHang nchar(10), @TenLoaiHang nvarchar(50), @MoTa nvarchar(50))
AS
BEGIN
	
	SET NOCOUNT ON;

    insert into LOAIHANG values (@MaLoaiHang, @TenLoaiHang, @MoTa)
	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_ThemNhaCungCap]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ThemNhaCungCap] (@MaNCC nchar(10), @TenNCC nvarchar(50), @DiaChi nvarchar(50), @DienThoai nchar(20))
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO NHACUNGCAP VALUES (@MaNCC, @TenNCC, @DiaChi, @DienThoai)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_ThemNhanVien]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ThemNhanVien] (@MaNhanVien nchar(10), @TenNhanVien nvarchar(50), @DiaChiNV nvarchar(50), @DienThoai nchar(20), @ChucVu nchar(10), @GioiTinh bit, @NgaySinh datetime)

AS
BEGIN

	SET NOCOUNT ON;
	insert into NHANVIEN values (@MaNhanVien,@TenNhanVien, @DiaChiNV, @DienThoai, @ChucVu, @GioiTinh, @NgaySinh)
 END

GO
/****** Object:  StoredProcedure [dbo].[SP_ThemTaiKhoan]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ThemTaiKhoan] (@TenTaiKhoan nchar(20), @MatKhau nchar(20), @Quyen int, @MaNhanVien nchar(10))

AS
BEGIN
SET NOCOUNT ON;
INSERT INTO TAIKHOAN values (@TenTaiKhoan, @MatKhau, @Quyen, @MaNhanVien)

END

GO
/****** Object:  StoredProcedure [dbo].[SP_TimKiemHoaDon]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_TimKiemHoaDon] @MaHoaDon nchar(10) 
	
AS
BEGIN
	
	SET NOCOUNT ON;

   SELECT * From HOADON
	where MaHoaDon like '%'+@MaHoaDon+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_TimKiemKhachHang]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_TimKiemKhachHang] @TenKhachHang nvarchar(50) 
	
AS
BEGIN
	
	SET NOCOUNT ON;

   
	SELECT * From KHACHHANG
	where TenKhachHang like '%'+@TenKhachHang+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_TimKiemMaHangHoa]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_TimKiemMaHangHoa] @MaHangHoa nchar(10) 
	
AS
BEGIN
	
	SET NOCOUNT ON;

   SELECT * From HANGHOA
	where MaHangHoa like '%'+@MaHangHoa+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_TimKiemNhaCungCap]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_TimKiemNhaCungCap] @TenNCC nvarchar(50) 
	
AS
BEGIN
	
	SET NOCOUNT ON;

   
	SELECT * From NHACUNGCAP
	where TenNCC like '%'+@TenNCC+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_TimKiemNhanVien]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_TimKiemNhanVien] @TenNhanVien nvarchar(50) 
	
AS
BEGIN
	
	SET NOCOUNT ON;

   
	SELECT * From NHANVIEN
	where TenNhanVien like '%'+@TenNhanVien+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_TimKiemTenHangHoa]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_TimKiemTenHangHoa] @TenHangHoa nvarchar(50) 
	
AS
BEGIN
	
	SET NOCOUNT ON;

   SELECT * From HANGHOA
	where TenHangHoa like '%'+@TenHangHoa+'%'
END

GO
/****** Object:  StoredProcedure [dbo].[SP_XoaHangHoa]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_XoaHangHoa] @MaHangHoa nchar(10)
	
AS
BEGIN
	
	SET NOCOUNT ON;
	DELETE HANGHOA
	WHERE MaHangHoa = @MaHangHoa
	
		END
GO
/****** Object:  StoredProcedure [dbo].[SP_XoaHoaDon]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_XoaHoaDon] @MaHoaDon nchar(10)
	
AS
BEGIN
	
	SET NOCOUNT ON;
delete HOADON
where MaHoaDon = @MaHoaDon

	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_XoaKhachHang]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_XoaKhachHang] @MaKhachHang nchar(10)
AS
BEGIN

	SET NOCOUNT ON;

	DELETE KHACHHANG
	WHERE MaKhachHang = @MaKhachHang
END

GO
/****** Object:  StoredProcedure [dbo].[SP_XoaLoaiHang]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_XoaLoaiHang] @MaLoaiHang nchar(10)
AS
BEGIN
	
	SET NOCOUNT ON;

   Delete LOAIHANG
	where MaLoaiHang = @MaLoaiHang
END

GO
/****** Object:  StoredProcedure [dbo].[SP_XoaNhaCungCap]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_XoaNhaCungCap] @MaNCC nchar(10)
AS
BEGIN

	SET NOCOUNT ON;
	delete NHACUNGCAP
	WHERE MaNCC = @MaNCC
END

GO
/****** Object:  StoredProcedure [dbo].[SP_XoaNhanVien]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_XoaNhanVien] @MaNhanVien nchar(10)

AS
BEGIN

	SET NOCOUNT ON;
	delete NHANVIEN 
	WHERE MaNhanVien = @MaNhanVien
	 END

GO
/****** Object:  StoredProcedure [dbo].[SP_XoaTaiKhoan]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_XoaTaiKhoan] @TenTaiKhoan nchar(10)

AS
BEGIN

	SET NOCOUNT ON;
	delete TAIKHOAN 
	WHERE TenTaiKhoan = @TenTaiKhoan
	 END

GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[MaChucVu] [nchar](10) NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_CHUCVU] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MaHangHoa] [nchar](10) NOT NULL,
	[MaLoaiHang] [nchar](10) NULL,
	[TenHangHoa] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[DonViTinh] [nchar](10) NULL,
	[MaNCC] [nchar](10) NULL,
 CONSTRAINT [PK_HANGHOA] PRIMARY KEY CLUSTERED 
(
	[MaHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHoaDon] [nchar](10) NOT NULL,
	[MaKhachHang] [nchar](10) NOT NULL,
	[MaNhanVien] [nchar](10) NOT NULL,
	[NgayLapHoaDon] [datetime] NULL,
 CONSTRAINT [PK_HOADON_1] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADONCHITIET]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONCHITIET](
	[MaHoaDon] [nchar](10) NOT NULL,
	[MaHangHoa] [nchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_HOADONCHITIET] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKhachHang] [nchar](10) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nchar](20) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAIHANG]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIHANG](
	[MaLoaiHang] [nchar](10) NOT NULL,
	[TenLoaiHang] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAIHANG] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [nchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nchar](20) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNhanVien] [nchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[DiaChiNV] [nvarchar](50) NULL,
	[DienThoai] [nchar](20) NULL,
	[ChucVu] [nchar](20) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYEN](
	[MaQuyen] [int] NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_QUYEN] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 16-Mar-17 10:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TenTaiKhoan] [nchar](20) NOT NULL,
	[MatKhau] [nchar](20) NULL,
	[Quyen] [int] NULL,
	[MaNhanVien] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TAIKHOAN_1] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC,
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu]) VALUES (N'KT        ', N'Kế toán')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu]) VALUES (N'NV        ', N'Nhân viên')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu]) VALUES (N'QL        ', N'Quản Lý')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu]) VALUES (N'QLK       ', N'Quản lý kho')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu]) VALUES (N'VL        ', N'Vãng lai')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [MaLoaiHang], [TenHangHoa], [SoLuong], [DonGia], [DonViTinh], [MaNCC]) VALUES (N'LH1H1     ', N'LH1       ', N'Màn hình 19 inch', 1243, 1243, N'cai       ', N'NCC1      ')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [MaLoaiHang], [TenHangHoa], [SoLuong], [DonGia], [DonViTinh], [MaNCC]) VALUES (N'LH3H2     ', N'LH3       ', N'Điện thoại Zenphone 2 laser', 100, 1548, N'cái       ', N'NCC1      ')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [MaLoaiHang], [TenHangHoa], [SoLuong], [DonGia], [DonViTinh], [MaNCC]) VALUES (N'LH4H3     ', N'LH4       ', N'Bàn phím Genius 199', 111, 1200, N'đôi       ', N'NCC2      ')
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon]) VALUES (N'HDKH290   ', N'KH2       ', N'NV4       ', CAST(0x0000A6F000000000 AS DateTime))
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon]) VALUES (N'HDKH302-Ja', N'KH3       ', N'QL6       ', CAST(0x0000A6EF00000000 AS DateTime))
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon]) VALUES (N'HDNV002   ', N'KH1       ', N'NV002     ', CAST(0x0000A6F000000000 AS DateTime))
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon]) VALUES (N'HKH245    ', N'KH2       ', N'NV3       ', CAST(0x0000A6F700000000 AS DateTime))
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon]) VALUES (N'HKH323    ', N'KH3       ', N'NV002     ', CAST(0x0000A6EF00000000 AS DateTime))
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon]) VALUES (N'HKH483    ', N'KH4       ', N'NV002     ', CAST(0x0000A6F100000000 AS DateTime))
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [NgayLapHoaDon]) VALUES (N'HKH578    ', N'KH5       ', N'NV3       ', CAST(0x0000A70F00000000 AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'KH1       ', N'Võ Mạnh Hùng', 1, CAST(0x0000A6DD00000000 AS DateTime), N'Huế', N'112                 ')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'KH2       ', N'Đoàn Quốc Trung', 0, CAST(0x0000A6DD00000000 AS DateTime), N'Huế', N'113                 ')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'KH3       ', N'Đặng Hữu Vỹ', 1, CAST(0x0000A6DD00000000 AS DateTime), N'Huế 2', N'116                 ')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'KH4       ', N'Nguyễn Ngọc Hằng Nga', 0, CAST(0x0000A5AF00000000 AS DateTime), N'Quảng Bình', N'90000               ')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'KH5       ', N'Thầy Hòa', 1, CAST(0x0000A6F800000000 AS DateTime), N'Huế', N'1122                ')
INSERT [dbo].[LOAIHANG] ([MaLoaiHang], [TenLoaiHang], [MoTa]) VALUES (N'LH1       ', N'Màn hình', N'Màn hình LCD')
INSERT [dbo].[LOAIHANG] ([MaLoaiHang], [TenLoaiHang], [MoTa]) VALUES (N'LH2       ', N'Máy in', N'Máy in màu')
INSERT [dbo].[LOAIHANG] ([MaLoaiHang], [TenLoaiHang], [MoTa]) VALUES (N'LH3       ', N'Điện thoại', N'Điện thoại smartphone')
INSERT [dbo].[LOAIHANG] ([MaLoaiHang], [TenLoaiHang], [MoTa]) VALUES (N'LH4       ', N'Bàn phím KH', N'Bàn phím không dây')
INSERT [dbo].[LOAIHANG] ([MaLoaiHang], [TenLoaiHang], [MoTa]) VALUES (N'LH5       ', N'Chuột KH', N'Chuột không dây')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC1      ', N'SAMSUNG', N'Singapore', N'4545445             ')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC2      ', N'GENIUS', N'USA', N'1212112             ')
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [DiaChiNV], [DienThoai], [ChucVu], [GioiTinh], [NgaySinh]) VALUES (N'NV002     ', N'Đàm Vĩnh Hưng', N'Nghệ An', N'115                 ', N'Quản lý kho         ', 1, CAST(0x00008BED00000000 AS DateTime))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [DiaChiNV], [DienThoai], [ChucVu], [GioiTinh], [NgaySinh]) VALUES (N'NV3       ', N'Đoàn Thị Hồng', N'Vũng Tàu', N'114                 ', N'Nhân viên           ', 0, CAST(0x0000A6CD00000000 AS DateTime))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [DiaChiNV], [DienThoai], [ChucVu], [GioiTinh], [NgaySinh]) VALUES (N'NV4       ', N'Nông Phúc Hiền', N'Đắc Lắc', N'119                 ', N'Nhân viên           ', 1, CAST(0x0000A6DC00000000 AS DateTime))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [DiaChiNV], [DienThoai], [ChucVu], [GioiTinh], [NgaySinh]) VALUES (N'QL1       ', N'Võ Mạnh Hùng', N'Huế', N'113                 ', N'Quản lý             ', 1, CAST(0x000088B600000000 AS DateTime))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [DiaChiNV], [DienThoai], [ChucVu], [GioiTinh], [NgaySinh]) VALUES (N'QL6       ', N'Thái Công Danh', N'Huế', N'1190                ', N'QL                  ', 1, CAST(0x0000A6F700000000 AS DateTime))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [DiaChiNV], [DienThoai], [ChucVu], [GioiTinh], [NgaySinh]) VALUES (N'VL6       ', N'Nguyễn Thị Ếch Ú', N'Quảng Bình', N'0975903974          ', N'VL                  ', 0, CAST(0x0000A6FF00000000 AS DateTime))
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen]) VALUES (1, N'Toàn quyền')
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen]) VALUES (2, N'Nhân viên')
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen]) VALUES (3, N'Kế toán')
INSERT [dbo].[TAIKHOAN] ([TenTaiKhoan], [MatKhau], [Quyen], [MaNhanVien]) VALUES (N'admin               ', N'admin               ', 1, N'QL1       ')
INSERT [dbo].[TAIKHOAN] ([TenTaiKhoan], [MatKhau], [Quyen], [MaNhanVien]) VALUES (N'nvbh                ', N'nvbh                ', 2, N'NV4       ')
INSERT [dbo].[TAIKHOAN] ([TenTaiKhoan], [MatKhau], [Quyen], [MaNhanVien]) VALUES (N'nvbh2               ', N'nvbh2               ', 2, N'QL1       ')
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_LOAIHANG] FOREIGN KEY([MaLoaiHang])
REFERENCES [dbo].[LOAIHANG] ([MaLoaiHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_LOAIHANG]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_NHACUNGCAP] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_NHACUNGCAP]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[HOADONCHITIET]  WITH CHECK ADD  CONSTRAINT [FK_HOADONCHITIET_HANGHOA] FOREIGN KEY([MaHangHoa])
REFERENCES [dbo].[HANGHOA] ([MaHangHoa])
GO
ALTER TABLE [dbo].[HOADONCHITIET] CHECK CONSTRAINT [FK_HOADONCHITIET_HANGHOA]
GO
ALTER TABLE [dbo].[HOADONCHITIET]  WITH CHECK ADD  CONSTRAINT [FK_HOADONCHITIET_HOADON1] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HOADON] ([MaHoaDon])
GO
ALTER TABLE [dbo].[HOADONCHITIET] CHECK CONSTRAINT [FK_HOADONCHITIET_HOADON1]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_NHANVIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_NHANVIEN]
GO
