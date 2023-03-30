/*câu 1: Liệt kê MaDatPhong, MaDV, SoLuong của tất cả các dịch vụ có số lượng lớn hơn 3 và nhỏ hơn 10.*/
SELECT *
FROM chi_tiet_su_dung_dich_vu
WHERE SoLuong > 3
  AND SoLuong <10;

/*câu 2: Cập nhật dữ liệu trên trường GiaPhong thuộc bảng PHONG tăng lên 10,000 VNĐ so với giá phòng hiện tại,
 chỉ cập nhật giá phòng của những phòng có số khách tối đa lớn hơn 10.*/
UPDATE phong
SET GiaPhong = GiaPhong + 10000
WHERE SoKhachToiDa > 10;


SELECT *
FROM phong;

/*câu 3: Xóa tất cả những đơn đặt phòng (từ bảng DAT_PHONG) có trạng thái đặt (TrangThaiDat) là “Da huy”.*/
DELETE
FROM dat_phong
WHERE TrangThaiDat = "DaHuy";


SELECT *
FROM dat_phong;

/*câu 4: Hiển thị TenKH của những khách hàng có tên bắt đầu là một trong các ký tự “H”, “N”, “M” và có độ dài tối đa là 12 ký tự.*/
SELECT TenKhachHang
FROM khach_hang
WHERE (TenKhachHang like "H%"
       OR TenKhachHang like "N%"
       OR TenKhachHang like "M%")
  AND length(TenKhachHang) <= 12;

/*câu 5: Hiển thị TenKH của tất cả các khách hàng có trong hệ thống, TenKH nào trùng nhau thì chỉ hiển thị một lần.*/
SELECT DISTINCT TenKhachHang
FROM khach_hang;

/*câu 6: Hiển thị MaDV, TenDV, DonViTinh, DonGia của những dịch vụ đi kèm có DonViTinh là “lon” và có DonGia lớn hơn 10,000 VNĐ
 hoặc những dịch vụ đi kèm có DonViTinh là “Cai” và có DonGia nhỏ hơn 5,000 VNĐ.*/
SELECT *
FROM dich_vu_di_kem
WHERE (DonGia > 10000
       AND DonViTinh = "lon")
  OR (DonGia < 5000
      AND DonViTinh = "cai");

/*câu 7: Hiển thị MaDatPhong, MaPhong, LoaiPhong, SoKhachToiDa, GiaPhong, MaKH, TenKH, SoDT, NgayDat, GioBatDau, GioKetThuc, MaDichVu, SoLuong, DonGia của những đơn đặt phòng có năm đặt phòng là “2016”, “2017”
 và đặt những phòng có giá phòng > 50,000 VNĐ/ 1 giờ.*/
SELECT dp.MaDatPhong,
       dp.MaPhong,
       p.LoaiPhong,
       p.SoKhachToiDa,
       p.GiaPhong,
       kh.MaKhachHang,
       kh.TenKhachHang,
       kh.SoDT,
       dp.NgayDat,
       dp.GioBatDau,
       dp.GioKetThuc,
       dv.MaDichVu,
       ct.SoLuong,
       dv.DonGia
FROM dat_phong dp
JOIN khach_hang kh ON dp.MaKhachHang = kh.MaKhachHang
JOIN phong p ON dp.MaPhong = p.MaPhong
JOIN chi_tiet_su_dung_dich_vu ct ON dp.MaDatPhong = ct.MaDatPhong
JOIN dich_vu_di_kem dv ON ct.MaDichVu = dv.MaDichVu
WHERE (YEAR(dp.NgayDat) = 2016
       OR YEAR(dp.NgayDat) = 2017)
  AND p.GiaPhong > 5000;

/*câu 8: Hiển thị MaDatPhong, MaPhong, LoaiPhong, GiaPhong, TenKH, NgayDat, TongTienHat, TongTienSuDungDichVu, TongTienThanhToan 
tương ứng với từng mã đặt phòng có trong bảng DAT_PHONG. Những đơn đặt phòng nào không sử dụng dịch vụ đi kèm thì cũng liệt kê 
thông tin của đơn đặt phòng đó ra*/

/*=============================== ĐỀ THIẾU =================================================*/

/*câu 9: Hiển thị MaDatPhong, MaPhong, LoaiPhong, GiaPhong, TenKH, NgayDat, TongTienHat, TongTienSuDungDichVu, TongTienThanhToan tương ứng với
 từng mã đặt phòng có trong bảng DAT_PHONG. Những đơn đặt phòng nào không sử dụng dịch vụ đi kèm thì cũng liệt kê thông tin của đơn đặt phòng đó ra.*/ /*  ĐỀ THIẾU  */ /*câu 9: Hiển thị MaKH, TenKH, DiaChi, SoDT của những khách hàng đã từng đặt phòng karaoke có địa chỉ ở “Hoa xuan”.*/
SELECT khach_hang.MaKhachHang,
       khach_hang.TenKhachHang,
       khach_hang.DiaChi,
       khach_hang.SoDT
FROM khach_hang
JOIN dat_phong ON khach_hang.MaKhachHang = dat_phong.MaKhachHang
WHERE khach_hang.DiaChi = "Hoa Xuan"
  AND dat_phong.TrangThaiDat = "DaDat";

/*câu 10: Hiển thị MaPhong, LoaiPhong, SoKhachToiDa, GiaPhong, SoLanDat của những phòng được khách hàng đặt có số lần đặt lớn hơn 1 lần và
 trạng thái đặt là “Da dat”.*/
SELECT p.MaPhong,
       p.LoaiPhong,
       p.SoKhachToiDa,
       p.GiaPhong,
       count(p.MaPhong) AS SoLanDat
FROM dat_phong AS dp
JOIN phong AS p ON dp.MaPhong = p.MaPhong
WHERE dp.TrangThaiDat = "DaDat"
GROUP BY p.MaPhong
HAVING SoLanDat > 1