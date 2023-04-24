<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<nav>
	<div class="container">
		<ul class="d-flex fixed-nav row">
			<li class="active"><a><i class="fas fa-bars"></i> Danh Mục</a></li>
			<li><a>Xem Tất Cả</a></li>
			<li><a class="hot-event"><div class="dot"><span class="ping"></span></div><span class="text">Tivi Giảm Lớn 49%</span></a></li>
			<li><a>Quạt Điều Hòa Ưu Đãi Đến 34%</a></li>
			<li><a class="hot-event"><div class="dot"><span class="ping"></span></div><span class="text">Bỏ cũ lấy mới máy lọc nước giảm 30%</span></a></li>
		</ul>
	</div>
</nav>
<main class="container">
	<div class="row mixed-content ">
		<div class="local-nav">
			<ul class="list-nav-item">
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icon-tivi"></i>
						<a href="/tivi">Tivi</a>,&nbsp;
						<a href="/tivi">Loa Karaoke</a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title"><b>TIVI</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title"><b>LOA ÂM THANH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icon-tulanh"></i>
						<a href="/tivi">Tủ lạnh</a>,&nbsp;
						<a href="/tivi">Tủ đông</a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title"><b>TỦ LẠNH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title"><b>TỦ ĐÔNG </b><a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icondmx-maygiat"></i>
						<a href="/tivi">Máy giặt</a>,&nbsp;
						<a href="/tivi">Sấy quần áo</a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title"><b>TIVI</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title"><b>LOA ÂM THANH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icon-tivi"></i>
						<a href="/tivi">Máy lạnh</a>,&nbsp;
						<a href="/tivi">Quạt điều hòa</a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title"><b>TIVI</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title"><b>LOA ÂM THANH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icondmx-locnuoc"></i>
						<a href="/tivi">Lọc nước</a>,&nbsp;
						<a href="/tivi">Máy nước nóng</a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title"><b>TIVI</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title"><b>LOA ÂM THANH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icondmx-giadung"></i>
						<a href="/tivi">Điện gia dụng</a>,&nbsp;
						<a href="/tivi">Quạt</a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title"></b>TIVI</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title"><b>LOA ÂM THANH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icondmx-dodung"></i>
						<a href="/tivi">Đồ dùng gia đình </a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icondmx-tele"></i>
						<a href="/tivi">Điện thoại</a>,&nbsp;
						<a href="/tivi">Laptop</a>,&nbsp;
						<a href="/tivi">Tablet</a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icondmx-ict"></i>
						<a href="/tivi">Máy bộ</a>,&nbsp;
						<a href="/tivi">Màn hình</a>,&nbsp;
						<a href="/tivi">Máy In</a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icondmx-phukien"></i>
						<a href="/tivi">Phụ kiện</a>,&nbsp;
						<a href="/tivi">Đồng hồ</a>,&nbsp;
						<a href="/tivi"> Vali</a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icondmx-maycu"></i>
						<a href="/tivi">Máy cũ, trưng bày</a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<div class="sup-menu">
						<i class="icon-dmx icondmx-simso"></i>
						<a href="/tivi">Sim số, Thẻ cào</a>,&nbsp;
						<a href="/tivi">Thu hộ</a>
					</div>
					<div class="sub-menu">
						<ul class="group">
							<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
						<ul class="group">
							<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
							<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		<div class="hot-campaign">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
				  	<div class="carousel-item active">
						<img class="d-block w-100" src="images/dmx/03_07_2020_15_50_29_SONY-TV--690-300-(1).png" alt="First slide">
				  	</div>
				  	<div class="carousel-item">
						<img class="d-block w-100" src="images/dmx/TCL-TV-690-300-690x300.png" alt="Second slide">
				  	</div>
				  	<div class="carousel-item">
						<img class="d-block w-100" src="images/dmx/690-300-690x300-15.png"  alt="Third slide">
				  	</div>
				  	<div class="carousel-item">
						<img class="d-block w-100" src="images/dmx/BIG-MG-690-300-690x300-1.png"  alt="Third slide">
				  	</div>
					</div>
				<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
				  	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				 	<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
				  	<span class="carousel-control-next-icon" aria-hidden="true"></span>
				  	<span class="sr-only">Next</span>
				</a>
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"><span>Bỏ Cũ Lấy Mới<br>Chảo Giảm 50%</span></li>
					<li data-target="#myCarousel" data-slide-to="1"><span>Sắm Tivi TCL<br>Giảm Đến 6.2 Triệu</span></li>
					<li data-target="#myCarousel" data-slide-to="2"><span>Mua TV Samsung<br>Giảm Đến 18 Triệu</span></li>
					<li data-target="#myCarousel" data-slide-to="3"><span>Dụng Cụ Cầm Tay<br>Giảm Đến 20%</span></li>
				</ol>
			</div>
		</div>
		<div class="hot-news">
			<ul>
				<li><a class="bold-link">KINH NGHIỆM HAY - VIDEO <i class="fas fa-caret-right"></i></a></li>
				<li><a>Máy giặt cửa trên thế hệ mới TH2111DSAB của LG có gì HOT?</li>
				<li><a></a>Top 10 máy lạnh bán chạy nhất Điện máy XANH năm 2019</li>
			</ul>
			<div>
				<img src="images/dmx/26064-260x64.png"/>
				<img src="images/dmx/260X64.pngdesk-260x64.png"/>
				<img src="images/dmx/StickyBannerTCL-2-260x64.png"/>
			</div>
		</div>
	</div>
	<section class="row top-deal">
		<div class="mt-2"><img class="w-100" src="images/dmx/vunggiasocdesk-1200x80.png"></div>
		<div class="products-list">
			<div id="topDealProductsCarousel" class="carousel slide" data-ride="carousel" data-interval="500000">
				<div class="carousel-inner">
				  	<div class="carousel-item active">
						<ul>
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/dmx/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/dmx/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img src="images/dmx/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/dmx/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/online-giảm-sốc-1x.png">							
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
						</ul>
					</div>
					<div class="carousel-item">
						<ul>
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/dmx/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/dmx/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">									
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/dmx/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
						</ul>
					</div>
					<div class="carousel-item">
						<ul>
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/dmx/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/dmx/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">									
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/dmx/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
						</ul>
					</div>
					<div class="carousel-item">
						<ul>
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/dmx/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/dmx/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">									
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/dmx/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/dmx/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<a class="carousel-control-prev" href="#topDealProductsCarousel" role="button" data-slide="prev">
				  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				  <span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#topDealProductsCarousel" role="button" data-slide="next">
				  <span class="carousel-control-next-icon" aria-hidden="true"></span>
				  <span class="sr-only">Next</span>
				</a>					
			</div>
		</div>
	</section>		
	<section class="row discount-in-day">
		<div class="section-title">Khuyến mãi Hot mỗi ngày</div>
		<div class="group-tabs">
			<ul class="nav-tabs product-types">
				<li class="nav-tab-item active"><a class="nav-link" href="#tab-1">Nổi bật</a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-2">Máy lạnh</a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-3">Điện thoại, laptop</a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-4">Tivi, Loa </a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-5">Tủ lạnh, Tủ đông</a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-6">Máy giặt</a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-7">Máy lọc nước</a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-8">Điện gia dụng</a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-9">Đồ dùng nhà bếp</a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-10">Phụ kiện</a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-11">Đồng hồ</a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-12">Máy nước nóng</a></li>
			</div>			
			<div class="tab-content">
				<div class="tab-panel active" id="tab-1">
					<ul class="products-list">
						<li class="product-info">
							<div class="prod-avatar">
								<img  src="images/dmx/lg-rn7-1-600x600.jpg">
							</div>
							<div class="prod-deal">
								<img src="images/dmx/giamsoc_optimized.png">
							</div>
							<div class="prod-name">
								Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
							</div>
							<span class="prod-price">8.990.000<sup>₫</sup></span>
							<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/tcl-40s6500-550x340.jpg">
							</div>
							<div class="prod-deal">									
							</div>
							<div class="prod-name">
								TCL Android TV 40" 
							</div>
							<div class="prod-price">5.990.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">6.990.000₫</span>
								<label class="discount-percent">(-14%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
							</div>
							<div class="prod-price">6.690.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<div class="prod-promotion">Giảm <b>800.000₫</b></div>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">								
							<div class="prod-avatar">
								<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Samsung Inverter 9 Kg  
							</div>
							<div class="prod-price">11.490.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Giảm <b>2.100.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
							</div>
							<div class="prod-deal">		
								<img src="images/dmx/giamsoc_optimized.png">								
							</div>
							<div class="prod-name">
								Beko Inverter 1 HP 
							</div>
							<div class="prod-price">7.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Quà <b>800.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">							
							</div>
							<div class="prod-name">
								Quạt điều hòa Midea AC120-16AR  
							</div>
							<div class="prod-price">1.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">2.750.000₫</span>
								<label class="discount-percent">(-34%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">700 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-avatar">
								<img  src="images/dmx/lg-rn7-1-600x600.jpg">
							</div>
							<div class="prod-deal">
								<img src="images/dmx/giamsoc_optimized.png">
							</div>
							<div class="prod-name">
								Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
							</div>
							<span class="prod-price">8.990.000<sup>₫</sup></span>
							<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/tcl-40s6500-550x340.jpg">
							</div>
							<div class="prod-deal">									
							</div>
							<div class="prod-name">
								TCL Android TV 40" 
							</div>
							<div class="prod-price">5.990.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">6.990.000₫</span>
								<label class="discount-percent">(-14%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
							</div>
							<div class="prod-price">6.690.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<div class="prod-promotion">Giảm <b>800.000₫</b></div>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">								
							<div class="prod-avatar">
								<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Samsung Inverter 9 Kg  
							</div>
							<div class="prod-price">11.490.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Giảm <b>2.100.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
							</div>
							<div class="prod-deal">		
								<img src="images/dmx/giamsoc_optimized.png">								
							</div>
							<div class="prod-name">
								Beko Inverter 1 HP 
							</div>
							<div class="prod-price">7.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Quà <b>800.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">							
							</div>
							<div class="prod-name">
								Quạt điều hòa Midea AC120-16AR  
							</div>
							<div class="prod-price">1.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">2.750.000₫</span>
								<label class="discount-percent">(-34%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">700 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-avatar">
								<img  src="images/dmx/lg-rn7-1-600x600.jpg">
							</div>
							<div class="prod-deal">
								<img src="images/dmx/giamsoc_optimized.png">
							</div>
							<div class="prod-name">
								Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
							</div>
							<span class="prod-price">8.990.000<sup>₫</sup></span>
							<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/tcl-40s6500-550x340.jpg">
							</div>
							<div class="prod-deal">									
							</div>
							<div class="prod-name">
								TCL Android TV 40" 
							</div>
							<div class="prod-price">5.990.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">6.990.000₫</span>
								<label class="discount-percent">(-14%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
							</div>
							<div class="prod-price">6.690.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<div class="prod-promotion">Giảm <b>800.000₫</b></div>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">								
							<div class="prod-avatar">
								<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Samsung Inverter 9 Kg  
							</div>
							<div class="prod-price">11.490.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Giảm <b>2.100.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
							</div>
							<div class="prod-deal">		
								<img src="images/dmx/giamsoc_optimized.png">								
							</div>
							<div class="prod-name">
								Beko Inverter 1 HP 
							</div>
							<div class="prod-price">7.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Quà <b>800.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">							
							</div>
							<div class="prod-name">
								Quạt điều hòa Midea AC120-16AR  
							</div>
							<div class="prod-price">1.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">2.750.000₫</span>
								<label class="discount-percent">(-34%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">700 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-avatar">
								<img  src="images/dmx/lg-rn7-1-600x600.jpg">
							</div>
							<div class="prod-deal">
								<img src="images/dmx/giamsoc_optimized.png">
							</div>
							<div class="prod-name">
								Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
							</div>
							<span class="prod-price">8.990.000<sup>₫</sup></span>
							<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/tcl-40s6500-550x340.jpg">
							</div>
							<div class="prod-deal">									
							</div>
							<div class="prod-name">
								TCL Android TV 40" 
							</div>
							<div class="prod-price">5.990.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">6.990.000₫</span>
								<label class="discount-percent">(-14%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
							</div>
							<div class="prod-price">6.690.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<div class="prod-promotion">Giảm <b>800.000₫</b></div>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">								
							<div class="prod-avatar">
								<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Samsung Inverter 9 Kg  
							</div>
							<div class="prod-price">11.490.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Giảm <b>2.100.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
							</div>
							<div class="prod-deal">		
								<img src="images/dmx/giamsoc_optimized.png">								
							</div>
							<div class="prod-name">
								Beko Inverter 1 HP 
							</div>
							<div class="prod-price">7.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Quà <b>800.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">							
							</div>
							<div class="prod-name">
								Quạt điều hòa Midea AC120-16AR  
							</div>
							<div class="prod-price">1.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">2.750.000₫</span>
								<label class="discount-percent">(-34%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">700 đánh giá</span>
							</div>
						</li>
					</ul>
				</div>
				<div class="tab-panel" id="tab-2">
					<ul class="products-list">
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">							
							</div>
							<div class="prod-name">
								Quạt điều hòa Midea AC120-16AR  
							</div>
							<div class="prod-price">1.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">2.750.000₫</span>
								<label class="discount-percent">(-34%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">700 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
							</div>
							<div class="prod-price">6.690.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<div class="prod-promotion">Giảm <b>800.000₫</b></div>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">								
							<div class="prod-avatar">
								<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Samsung Inverter 9 Kg  
							</div>
							<div class="prod-price">11.490.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Giảm <b>2.100.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-avatar">
								<img  src="images/dmx/lg-rn7-1-600x600.jpg">
							</div>
							<div class="prod-deal">
								<img src="images/dmx/giamsoc_optimized.png">
							</div>
							<div class="prod-name">
								Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
							</div>
							<span class="prod-price">8.990.000<sup>₫</sup></span>
							<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/tcl-40s6500-550x340.jpg">
							</div>
							<div class="prod-deal">									
							</div>
							<div class="prod-name">
								TCL Android TV 40" 
							</div>
							<div class="prod-price">5.990.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">6.990.000₫</span>
								<label class="discount-percent">(-14%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>							
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
							</div>
							<div class="prod-deal">		
								<img src="images/dmx/giamsoc_optimized.png">								
							</div>
							<div class="prod-name">
								Beko Inverter 1 HP 
							</div>
							<div class="prod-price">7.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Quà <b>800.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>							
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">							
							</div>
							<div class="prod-name">
								Quạt điều hòa Midea AC120-16AR  
							</div>
							<div class="prod-price">1.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">2.750.000₫</span>
								<label class="discount-percent">(-34%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">700 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
							</div>
							<div class="prod-price">6.690.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<div class="prod-promotion">Giảm <b>800.000₫</b></div>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">								
							<div class="prod-avatar">
								<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Samsung Inverter 9 Kg  
							</div>
							<div class="prod-price">11.490.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Giảm <b>2.100.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-avatar">
								<img  src="images/dmx/lg-rn7-1-600x600.jpg">
							</div>
							<div class="prod-deal">
								<img src="images/dmx/giamsoc_optimized.png">
							</div>
							<div class="prod-name">
								Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
							</div>
							<span class="prod-price">8.990.000<sup>₫</sup></span>
							<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/tcl-40s6500-550x340.jpg">
							</div>
							<div class="prod-deal">									
							</div>
							<div class="prod-name">
								TCL Android TV 40" 
							</div>
							<div class="prod-price">5.990.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">6.990.000₫</span>
								<label class="discount-percent">(-14%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>							
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
							</div>
							<div class="prod-deal">		
								<img src="images/dmx/giamsoc_optimized.png">								
							</div>
							<div class="prod-name">
								Beko Inverter 1 HP 
							</div>
							<div class="prod-price">7.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Quà <b>800.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">							
							</div>
							<div class="prod-name">
								Quạt điều hòa Midea AC120-16AR  
							</div>
							<div class="prod-price">1.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">2.750.000₫</span>
								<label class="discount-percent">(-34%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">700 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
							</div>
							<div class="prod-price">6.690.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<div class="prod-promotion">Giảm <b>800.000₫</b></div>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">								
							<div class="prod-avatar">
								<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Samsung Inverter 9 Kg  
							</div>
							<div class="prod-price">11.490.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Giảm <b>2.100.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-avatar">
								<img  src="images/dmx/lg-rn7-1-600x600.jpg">
							</div>
							<div class="prod-deal">
								<img src="images/dmx/giamsoc_optimized.png">
							</div>
							<div class="prod-name">
								Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
							</div>
							<span class="prod-price">8.990.000<sup>₫</sup></span>
							<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/tcl-40s6500-550x340.jpg">
							</div>
							<div class="prod-deal">									
							</div>
							<div class="prod-name">
								TCL Android TV 40" 
							</div>
							<div class="prod-price">5.990.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">6.990.000₫</span>
								<label class="discount-percent">(-14%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>							
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
							</div>
							<div class="prod-deal">		
								<img src="images/dmx/giamsoc_optimized.png">								
							</div>
							<div class="prod-name">
								Beko Inverter 1 HP 
							</div>
							<div class="prod-price">7.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Quà <b>800.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">							
							</div>
							<div class="prod-name">
								Quạt điều hòa Midea AC120-16AR  
							</div>
							<div class="prod-price">1.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">2.750.000₫</span>
								<label class="discount-percent">(-34%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">700 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
							</div>
							<div class="prod-price">6.690.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<div class="prod-promotion">Giảm <b>800.000₫</b></div>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">								
							<div class="prod-avatar">
								<img  src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
							</div>
							<div class="prod-deal">	
								<img src="images/dmx/online-giảm-sốc-1x.png">								
							</div>
							<div class="prod-name">
								Samsung Inverter 9 Kg  
							</div>
							<div class="prod-price">11.490.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Giảm <b>2.100.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
						<li class="product-info">
							<div class="prod-avatar">
								<img  src="images/dmx/lg-rn7-1-600x600.jpg">
							</div>
							<div class="prod-deal">
								<img src="images/dmx/giamsoc_optimized.png">
							</div>
							<div class="prod-name">
								Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
							</div>
							<span class="prod-price">8.990.000<sup>₫</sup></span>
							<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
						</li>
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/tcl-40s6500-550x340.jpg">
							</div>
							<div class="prod-deal">									
							</div>
							<div class="prod-name">
								TCL Android TV 40" 
							</div>
							<div class="prod-price">5.990.000<sup>₫</sup></div>
							<div class="prod-promotion">
								<span class="linethough">6.990.000₫</span>
								<label class="discount-percent">(-14%)</label>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>							
						<li class="product-info">
							<div class="prod-payment">
								<span>Trả góp <b>0%</b></span>
							</div>
							<div class="prod-avatar">
								<img  src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
							</div>
							<div class="prod-deal">		
								<img src="images/dmx/giamsoc_optimized.png">								
							</div>
							<div class="prod-name">
								Beko Inverter 1 HP 
							</div>
							<div class="prod-price">7.790.000<sup>₫</sup></div>
							<div class="prod-promotion">
								Quà <b>800.000₫</b>
							</div>
							<div class="prod-rating">
								<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
								<span class="rating-number">70 đánh giá</span>
							</div>
						</li>
					</ul>
				</div>
			</div>	
		</div>
	</section>
	<section class="row ads-area">
		<img src="images/dmx/CHUYENTRANGKANG4-394x76.jpg">
		<img src="images/dmx/HERUCRO-06-394x76.jpg">
		<img src="images/dmx/HERUCRO-01-394x76.jpg">
	</section>		
	<section class="hot-videos-area">
		<div class="section-title">Kinh nghiệm hay, mẹo vặt, nấu ăn</div>
		<div class="hot-videos row">
			<div class="col-sm-7">
				<a class="hero-video">
					<div class="video-image btn-play-video" data-youtube-url="https://www.youtube.com/embed/dR6Xrs7_zAc">
						<img src="images/dmx/maxresdefault.jpg">
					</div>						
					<div class="video-title">Top 10 máy lạnh bán chạy nhất Điện máy XANH năm 2019</div>
				</a>
			</div>
			<div class="col-sm-5 other-videos pl-0">
				<a class="row video-item">
					<div class="col-sm-3 video-image px-0 btn-play-video" data-youtube-url="https://www.youtube.com/embed/BQ3s5XjsJ7c">
						<img src="images/dmx/hqdefault.jpg">
					</div>
					<div class="col-sm-9 video-title">Top 10 máy giặt bán chạy nhất Điện máy XANH năm 2019</div>
				</a>
				<a class="row video-item">
					<div class="col-sm-3 video-image px-0 btn-play-video" data-youtube-url="https://www.youtube.com/embed/BQ3s5XjsJ7c">
						<img src="images/dmx/hqdefault (1).jpg">
					</div>
					<div class="col-sm-9 video-title">Chọn máy giặt bao nhiêu kg thì phù hợp với lượng quần áo gia đình?</div>
				</a>
				<a class="row video-item">
					<div class="col-sm-3 video-image px-0">
						<img src="images/dmx/top-10-quat-dieu-hoa-ban-chay-nhat-thang-05-2020-t-665x320.jpg">
					</div>
					<div class="col-sm-9 video-title">Top 10 quạt điều hòa bán chạy nhất tháng 05/2020 tại Điện máy XANH</div>
				</a>
				<a class="row video-item">
					<div class="col-sm-3 video-image px-0">
						<img src="images/dmx/top-5-may-giat-cua-truoc-ban-chay-nhat-thang-05-20-1-665x320.jpg">
					</div>
					<div class="col-sm-9 video-title">Top 5 Máy giặt cửa trước bán chạy nhất tháng 05/2020 tại Điện máy XANH</div>
				</a>
				<a class="row video-item">
					<div class="col-sm-3 video-image px-0">
						<img src="images/dmx/top-5-may-giat-cua-tren-ban-chay-nhat-thang-05-202-2-665x320.jpg">
					</div>
					<div class="col-sm-9 video-title">Top 5 máy giặt cửa trên bán chạy nhất tháng 05/2020 tại Điện máy XANH</div>
				</a>
			</div>				
		</div>			
		<div class="video-player-modal d-none">
			<div class="video-player-body">
				<i class="close-btn fas fa-times"></i>
				<div class="video-player"></div>
			</div>
		</div>
	</section>			
</main>
<div id="online-support">
	<a href="#">
		<img src="images/dmx/iconinvitechat_2.v201901000046.png">
		<span>Hỗ trợ<br> online</span>
	</a>
</div>
<div id="goto-top">↑</div>
