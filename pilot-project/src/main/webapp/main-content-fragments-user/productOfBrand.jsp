<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<main class="container">
	<section class="row discount-in-day">
		<div class="section-title">Điện Thoại <i class="fa-solid fa-chevron-right"></i> <b></b> điện thoại</div>
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
						<div class="grid-dropdown-item brandInfo">
						</div>
						<div class="dropdown-divider"></div>
						<div class="filter-all">
							<div>
								<div class="mb-3">
									<b>Loại điện thoại</b>
								</div>
								<div class="d-flex">
									<a class="dropdown-item  " href="#">Adroid</a> <a
										class="dropdown-item  " href="#">Iphone(IOS)</a>
								</div>
							</div>
							<div>
								<div class="mb-3">
									<b>Giá</b>
								</div>
								<div class="grid-dropdown-item">
									<a class="dropdown-item  " href="#">Dưới 2 triệu</a>
									<a class="dropdown-item   " href="#">Từ 2 - 4
										triệu</a> <a class="dropdown-item  " href="#">Từ 4
										- 7 triệu</a> <a class="dropdown-item  " href="#">Từ
										7 - 13 triệu</a> <a class="dropdown-item  " href="#">Từ
										13 - 20 triệu</a> <a class="dropdown-item  " href="#">Trên
										20 triệu</a>
								</div>
								<form class="range-price">
									<div class="display m-0 mt-3">
										<span class=" text-center  " id="min">300000</span>
										<span class=" text-center  " id="max">42000000</span>
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
						<div class="grid-dropdown-item brandInfo">
						</div>
					</div>
				</div>
				<div class="dropdown">
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton3" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Giá</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton3">
						<div class="grid-dropdown-item">
							<a class="dropdown-item  " href="#">Dưới 2 triệu</a> <a
								class="dropdown-item   " href="#">Từ 2 - 4 triệu</a>
							<a class="dropdown-item  " href="#">Từ 4 - 7 triệu</a>
							<a class="dropdown-item  " href="#">Từ 7 - 13
								triệu</a> <a class="dropdown-item  " href="#">Từ 13 -
								20 triệu</a> <a class="dropdown-item  " href="#">Trên
								20 triệu</a>
						</div>
						<form class="range-price">
							<div class="display ">
								<span class=" text-center  " id="min2">300000</span>
								<span class=" text-center  " id="max2">42000000</span>
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
				<div class="dropdown " >
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton4" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Loại Điện
						Thoại</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton5">
						<div class="d-flex">
							<a class="dropdown-item  " href="#">Adroid</a> <a
								class="dropdown-item  " href="#">Iphone(IOS)</a>
						</div>
					</div>
				</div>
			</div>
			<div class="filter-product">
			</div>
			<!-- <div class="grid-dropdown-item brandInfo radius">
			</div> -->
		</div>
		<div class="content">
			<div class="panel">
				<ul class="products-list " id="productInfo">
					<!-- <li class="product-info">
						<div class="prod-avatar">
							<img src="images/dmx/lg-rn7-1-600x600.jpg">
						</div>
						<div class="prod-deal">
							<img src="images/dmx/giamsoc_optimized.png">
						</div>
						<div class="prod-name">
							Loa Karaoke LG Xboom RN7 
						</div> <span class="prod-price">8.990.000<sup>₫</sup></span>
					</li> -->
				</ul>
			</div>
			
		</div>
	</section>
	<div class="d-flex justify-content-center">
		<ul class="pagination">
		</ul>
	</div>
</main>
