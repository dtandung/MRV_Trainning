<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<main class="container">
	<section class="row discount-in-day">
		<div class="section-title">Điện Thoại</div>
		<div class="group-tabs">
			<div class="box-filter mb-3 ">
				<div class="dropdown">
					<button class="btn" type="button" id="dropdownMenuButton1"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fa-solid fa-filter" style="color: #050505;"></i> Bộ lọc
					</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<div class="mb-3">
							<b>Hãng</b>
						</div>
						<div class="grid-dropdown-item-filter">
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/Realme42-b_37.png" alt="Realme"></a> 
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/samsungnew-220x48-1.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/vivo-logo-220-220x48-3.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/logo-xiaomi-220x48-5.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/OPPO42-b_5.jpg" alt="Realme"></a> 
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/logo-iphone-220x48.png" alt="Realme"></a> 
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/20221124-1505-vgj6rp.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/20221124-1504-nak19v.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/20221124-1503-36khjb.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/20221124-1502-d0h72d.png" alt="Realme"></a>
						</div>
						<div class="dropdown-divider"></div>
						<div class="filter-all">
							<div>
								<div class="mb-3">
									<b>Loại điện thoại</b>
								</div>
								<div class="d-flex">
									<a class="dropdown-item btn-dropdown" href="#">Adroid</a> <a
										class="dropdown-item btn-dropdown" href="#">Iphone(IOS)</a>
								</div>
							</div>
							<div>
								<div class="mb-3">
									<b>Giá</b>
								</div>
								<div class="grid-dropdown-item">
									<a class="dropdown-item btn-dropdown" href="#">Dưới 2 triệu</a>
									<a class="dropdown-item btn-dropdown " href="#">Từ 2 - 4
										triệu</a> <a class="dropdown-item btn-dropdown" href="#">Từ 4
										- 7 triệu</a> <a class="dropdown-item btn-dropdown" href="#">Từ
										7 - 13 triệu</a> <a class="dropdown-item btn-dropdown" href="#">Từ
										13 - 20 triệu</a> <a class="dropdown-item btn-dropdown" href="#">Trên
										20 triệu</a>
								</div>
								<form class="range-price">
									<div class="display m-0 mt-3">
										<span class=" text-center btn-dropdown" id="min">300000</span>
										<span class=" text-center btn-dropdown" id="max">42000000</span>
									</div>
								</form>
								<div class="range-slide">
									<div class="slide">
										<div class="line" id="line" style="left: 0%; right: 0%;"></div>
										<span class="thumb" id="thumbMin" style="left: 0%;"></span> <span
											class="thumb" id="thumbMax" style="left: 100%;"></span>
									</div>
									<input id="rangeMin" type="range" max="42000000" min="300000"
										step="100000" value="0"> <input id="rangeMax"
										type="range" max="42000000" min="300000" step="100000"
										value="42000000">
								</div>
							</div>
						</div>
						<div
							class="filter-button filter-button--total d-flex mb-3 justify-content-center pt-3"
							style="display: block;">
							<a class="btn btn-primary" href="javascript:void(0)"
								class="btn-filter-close">Bỏ chọn</a> <a class="btn btn-danger"
								href="javascript:;" class="btn-filter-readmore">Xem <b
								class="total-reloading">6</b> kết quả
							</a>
						</div>
					</div>
				</div>
				<div class="dropdown">
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton2" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Hãng</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
						<div class="grid-dropdown-item">
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/Realme42-b_37.png" alt="Realme"></a> 
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/samsungnew-220x48-1.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/vivo-logo-220-220x48-3.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/logo-xiaomi-220x48-5.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/OPPO42-b_5.jpg" alt="Realme"></a> 
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/logo-iphone-220x48.png" alt="Realme"></a> 
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/20221124-1505-vgj6rp.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/20221124-1504-nak19v.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/20221124-1503-36khjb.png" alt="Realme"></a>
							<a class="dropdown-item btn-dropdown" href="#"><img
								src="images/brand/20221124-1502-d0h72d.png" alt="Realme"></a>
						</div>
					</div>
				</div>
				<div class="dropdown">
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton3" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Giá</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton3">
						<div class="grid-dropdown-item">
							<a class="dropdown-item btn-dropdown" href="#">Dưới 2 triệu</a> <a
								class="dropdown-item btn-dropdown " href="#">Từ 2 - 4 triệu</a>
							<a class="dropdown-item btn-dropdown" href="#">Từ 4 - 7 triệu</a>
							<a class="dropdown-item btn-dropdown" href="#">Từ 7 - 13
								triệu</a> <a class="dropdown-item btn-dropdown" href="#">Từ 13 -
								20 triệu</a> <a class="dropdown-item btn-dropdown" href="#">Trên
								20 triệu</a>
						</div>
						<form class="range-price">
							<div class="display ">
								<span class=" text-center btn-dropdown" id="min2">300000</span> <span
									class=" text-center btn-dropdown" id="max2">42000000</span>
							</div>
						</form>
						<div class="range-slide">
							<div class="slide">
								<div class="line" id="line2" style="left: 0%; right: 0%;"></div>
								<span class="thumb" id="thumbMin2" style="left: 0%;"></span> <span
									class="thumb" id="thumbMax2" style="left: 100%;"></span>
							</div>
							<input id="rangeMin2" type="range" max="42000000" min="300000"
								step="100000" value="0"> <input id="rangeMax2"
								type="range" max="42000000" min="300000" step="100000"
								value="42000000">
						</div>
					</div>
				</div>
				<div class="dropdown">
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton4" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Loại Điện
						Thoại</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton5">
						<div class="d-flex">
							<a class="dropdown-item btn-dropdown" href="#">Adroid</a> <a
								class="dropdown-item btn-dropdown" href="#">Iphone(IOS)</a>
						</div>
					</div>
				</div>
			</div>
			<ul class="nav-tabs product-types">
				<li class="nav-tab-item active"><a class="nav-link"
					href="#tab-1"><img src="images/brand/Realme42-b_37.png"
						alt="Realme"></a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-2"><img
						src="images/brand/20221124-1502-d0h72d.png" alt="HTC"></a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-3"><img
						src="images/brand/20221124-1503-36khjb.png" alt="Huawei"></a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-4"><img
						src="images/brand/vivo-logo-220-220x48-3.png" alt="Vivo"></a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-5"><img
						src="images/brand/logo-xiaomi-220x48-5.png" alt="Xiaomi"></a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-6"><img
						src="images/brand/20221124-1504-nak19v.png" alt="Sony"></a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-7"><img
						src="images/brand/OPPO42-b_5.jpg" alt="Oppo"></a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-8"><img
						src="images/brand/samsungnew-220x48-1.png" alt="Samsung"></a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-9"><img
						src="images/brand/20221124-1505-vgj6rp.png" alt="LG"></a></li>
				<li class="nav-tab-item"><a class="nav-link" href="#tab-10"><img
						src="images/brand/logo-iphone-220x48.png" alt="Apple"></a></li>
		</div>
		<div class="tab-content">
			<div class="tab-panel active" id="tab-1">
				<ul class="products-list">
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/lg-rn7-1-600x600.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">
							Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới
								2020</span>
						</div> <span class="prod-price">8.990.000<sup>₫</sup></span>
						<div class="prod-promotion">
							Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/tcl-40s6500-550x340.jpg">
						</div>
						<div class="prod-deal"></div>
						<div class="prod-name">TCL Android TV 40"</div>
						<div class="prod-price">
							5.990.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">6.990.000₫</span> <label
								class="discount-percent">(-14%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">
							Panasonic Inverter 188 lít <span class="new-prod-label">Mới
								2020</span>
						</div>
						<div class="prod-price">
							6.690.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<div class="prod-promotion">
								Giảm <b>800.000₫</b>
							</div>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>2.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Samsung Inverter 9 Kg</div>
						<div class="prod-price">
							11.490.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Giảm <b>2.100.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.1</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">Beko Inverter 1 HP</div>
						<div class="prod-price">
							7.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Quà <b>800.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>3.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Quạt điều hòa Midea AC120-16AR</div>
						<div class="prod-price">
							1.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">2.750.000₫</span> <label
								class="discount-percent">(-34%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">700
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/lg-rn7-1-600x600.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">
							Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới
								2020</span>
						</div> <span class="prod-price">8.990.000<sup>₫</sup></span>
						<div class="prod-promotion">
							Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/tcl-40s6500-550x340.jpg">
						</div>
						<div class="prod-deal"></div>
						<div class="prod-name">TCL Android TV 40"</div>
						<div class="prod-price">
							5.990.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">6.990.000₫</span> <label
								class="discount-percent">(-14%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">
							Panasonic Inverter 188 lít <span class="new-prod-label">Mới
								2020</span>
						</div>
						<div class="prod-price">
							6.690.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<div class="prod-promotion">
								Giảm <b>800.000₫</b>
							</div>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>2.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Samsung Inverter 9 Kg</div>
						<div class="prod-price">
							11.490.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Giảm <b>2.100.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.1</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">Beko Inverter 1 HP</div>
						<div class="prod-price">
							7.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Quà <b>800.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>3.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Quạt điều hòa Midea AC120-16AR</div>
						<div class="prod-price">
							1.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">2.750.000₫</span> <label
								class="discount-percent">(-34%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">700
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/lg-rn7-1-600x600.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">
							Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới
								2020</span>
						</div> <span class="prod-price">8.990.000<sup>₫</sup></span>
						<div class="prod-promotion">
							Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/tcl-40s6500-550x340.jpg">
						</div>
						<div class="prod-deal"></div>
						<div class="prod-name">TCL Android TV 40"</div>
						<div class="prod-price">
							5.990.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">6.990.000₫</span> <label
								class="discount-percent">(-14%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">
							Panasonic Inverter 188 lít <span class="new-prod-label">Mới
								2020</span>
						</div>
						<div class="prod-price">
							6.690.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<div class="prod-promotion">
								Giảm <b>800.000₫</b>
							</div>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>2.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Samsung Inverter 9 Kg</div>
						<div class="prod-price">
							11.490.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Giảm <b>2.100.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.1</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">Beko Inverter 1 HP</div>
						<div class="prod-price">
							7.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Quà <b>800.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>3.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Quạt điều hòa Midea AC120-16AR</div>
						<div class="prod-price">
							1.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">2.750.000₫</span> <label
								class="discount-percent">(-34%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">700
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/lg-rn7-1-600x600.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">
							Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới
								2020</span>
						</div> <span class="prod-price">8.990.000<sup>₫</sup></span>
						<div class="prod-promotion">
							Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/tcl-40s6500-550x340.jpg">
						</div>
						<div class="prod-deal"></div>
						<div class="prod-name">TCL Android TV 40"</div>
						<div class="prod-price">
							5.990.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">6.990.000₫</span> <label
								class="discount-percent">(-14%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">
							Panasonic Inverter 188 lít <span class="new-prod-label">Mới
								2020</span>
						</div>
						<div class="prod-price">
							6.690.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<div class="prod-promotion">
								Giảm <b>800.000₫</b>
							</div>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>2.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Samsung Inverter 9 Kg</div>
						<div class="prod-price">
							11.490.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Giảm <b>2.100.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.1</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">Beko Inverter 1 HP</div>
						<div class="prod-price">
							7.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Quà <b>800.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>3.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Quạt điều hòa Midea AC120-16AR</div>
						<div class="prod-price">
							1.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">2.750.000₫</span> <label
								class="discount-percent">(-34%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">700
								đánh giá</span>
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
							<img src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Quạt điều hòa Midea AC120-16AR</div>
						<div class="prod-price">
							1.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">2.750.000₫</span> <label
								class="discount-percent">(-34%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">700
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">
							Panasonic Inverter 188 lít <span class="new-prod-label">Mới
								2020</span>
						</div>
						<div class="prod-price">
							6.690.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<div class="prod-promotion">
								Giảm <b>800.000₫</b>
							</div>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>2.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Samsung Inverter 9 Kg</div>
						<div class="prod-price">
							11.490.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Giảm <b>2.100.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.1</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/lg-rn7-1-600x600.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">
							Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới
								2020</span>
						</div> <span class="prod-price">8.990.000<sup>₫</sup></span>
						<div class="prod-promotion">
							Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/tcl-40s6500-550x340.jpg">
						</div>
						<div class="prod-deal"></div>
						<div class="prod-name">TCL Android TV 40"</div>
						<div class="prod-price">
							5.990.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">6.990.000₫</span> <label
								class="discount-percent">(-14%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">Beko Inverter 1 HP</div>
						<div class="prod-price">
							7.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Quà <b>800.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>3.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Quạt điều hòa Midea AC120-16AR</div>
						<div class="prod-price">
							1.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">2.750.000₫</span> <label
								class="discount-percent">(-34%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">700
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">
							Panasonic Inverter 188 lít <span class="new-prod-label">Mới
								2020</span>
						</div>
						<div class="prod-price">
							6.690.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<div class="prod-promotion">
								Giảm <b>800.000₫</b>
							</div>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>2.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Samsung Inverter 9 Kg</div>
						<div class="prod-price">
							11.490.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Giảm <b>2.100.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.1</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/lg-rn7-1-600x600.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">
							Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới
								2020</span>
						</div> <span class="prod-price">8.990.000<sup>₫</sup></span>
						<div class="prod-promotion">
							Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/tcl-40s6500-550x340.jpg">
						</div>
						<div class="prod-deal"></div>
						<div class="prod-name">TCL Android TV 40"</div>
						<div class="prod-price">
							5.990.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">6.990.000₫</span> <label
								class="discount-percent">(-14%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">Beko Inverter 1 HP</div>
						<div class="prod-price">
							7.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Quà <b>800.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>3.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Quạt điều hòa Midea AC120-16AR</div>
						<div class="prod-price">
							1.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">2.750.000₫</span> <label
								class="discount-percent">(-34%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">700
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">
							Panasonic Inverter 188 lít <span class="new-prod-label">Mới
								2020</span>
						</div>
						<div class="prod-price">
							6.690.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<div class="prod-promotion">
								Giảm <b>800.000₫</b>
							</div>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>2.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Samsung Inverter 9 Kg</div>
						<div class="prod-price">
							11.490.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Giảm <b>2.100.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.1</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/lg-rn7-1-600x600.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">
							Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới
								2020</span>
						</div> <span class="prod-price">8.990.000<sup>₫</sup></span>
						<div class="prod-promotion">
							Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/tcl-40s6500-550x340.jpg">
						</div>
						<div class="prod-deal"></div>
						<div class="prod-name">TCL Android TV 40"</div>
						<div class="prod-price">
							5.990.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">6.990.000₫</span> <label
								class="discount-percent">(-14%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">Beko Inverter 1 HP</div>
						<div class="prod-price">
							7.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Quà <b>800.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>3.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/midea-ac120-16ar-13-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Quạt điều hòa Midea AC120-16AR</div>
						<div class="prod-price">
							1.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">2.750.000₫</span> <label
								class="discount-percent">(-34%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">700
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/panasonic-nr-ba229pkvn-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">
							Panasonic Inverter 188 lít <span class="new-prod-label">Mới
								2020</span>
						</div>
						<div class="prod-price">
							6.690.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<div class="prod-promotion">
								Giảm <b>800.000₫</b>
							</div>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>2.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/online-giảm-sốc-1x.png">
						</div>
						<div class="prod-name">Samsung Inverter 9 Kg</div>
						<div class="prod-price">
							11.490.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Giảm <b>2.100.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.1</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/lg-rn7-1-600x600.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">
							Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới
								2020</span>
						</div> <span class="prod-price">8.990.000<sup>₫</sup></span>
						<div class="prod-promotion">
							Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/tcl-40s6500-550x340.jpg">
						</div>
						<div class="prod-deal"></div>
						<div class="prod-name">TCL Android TV 40"</div>
						<div class="prod-price">
							5.990.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							<span class="linethough">6.990.000₫</span> <label
								class="discount-percent">(-14%)</label>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>4.2</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
					<li class="product-info">
						<div class="prod-payment">
							<span>Trả góp <b>0%</b></span>
						</div>
						<div class="prod-avatar">
							<img src="images/dmx/may-lanh-beko-rsvc09vs-5-550x160.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">Beko Inverter 1 HP</div>
						<div class="prod-price">
							7.790.000<sup>₫</sup>
						</div>
						<div class="prod-promotion">
							Quà <b>800.000₫</b>
						</div>
						<div class="prod-rating">
							<span class="rating-point"><b>3.9</b>/5<i
								class="icon-dmx icondmx-star"></i></span> <span class="rating-number">70
								đánh giá</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
		</div>
	</section>
</main>
