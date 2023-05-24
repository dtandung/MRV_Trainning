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
				<div class="dropdown position-count-total">
					<button class="btn" type="button" id="dropdownMenuButton1"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fa-solid fa-filter" style="color: #050505;"></i> Bộ lọc
						<strong class="number count-total active" style="display: inline;"></strong>
					</button>

					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<div class="mb-3">
							<b>Hãng</b>
						</div>
						<form>
							<div class="grid-dropdown-item brandInfoFilter"></div>
						</form>
						<div class="dropdown-divider"></div>
						<div class="filter-all">
							<!-- <div>
								<div class="mb-3">
									<b>Loại điện thoại</b>
								</div>
								<form>
									<div class="grid-dropdown-item mr-1">
										<label class="imagetips"> <input type="checkbox"
											class="btn-check" autocomplete="off" /> <span
											class="imagetips_tip" for="btn-check">Android</span>
										</label> <label class="imagetips"> <input type="checkbox"
											class="btn-check" autocomplete="off" /> <span
											class="imagetips_tip" for="btn-check">Iphone(iOS)</span>
										</label>
									</div>
								</form>
							</div> -->
							<div>
								<div class="mb-3">
									<b>Giá</b>
								</div>
								<form class="form-price">
									<div class="grid-dropdown-item">
										<label class="imagetips "> <input type="checkbox"
											name="price" value="0-2000000" class="btn-check"
											autocomplete="off" /> <span class="imagetips_tip"
											for="btn-check">Dưới 2 triệu</span>
										</label> <label class="imagetips "> <input type="checkbox"
											name="price" value="2000000-4000000" class="btn-check"
											autocomplete="off" /> <span class="imagetips_tip"
											for="btn-check">Từ 2 - 4 triệu</span>
										</label> <label class="imagetips "> <input type="checkbox"
											name="price" value="4000000-7000000" class="btn-check"
											autocomplete="off" /> <span class="imagetips_tip"
											for="btn-check">Từ 4 - 7 triệu</span>
										</label> <label class="imagetips "> <input type="checkbox"
											name="price" value="7000000-13000000" class="btn-check"
											autocomplete="off" /> <span class="imagetips_tip"
											for="btn-check">Từ 7 - 13 triệu</span>
										</label> <label class="imagetips "> <input type="checkbox"
											name="price" value="13000000-20000000" class="btn-check"
											autocomplete="off" /> <span class="imagetips_tip"
											for="btn-check">Từ 13 - 20 triệu</span>
										</label> <label class="imagetips "> <input type="checkbox"
											name="price" value="20000000-20000000" class="btn-check"
											autocomplete="off" /> <span class="imagetips_tip"
											for="btn-check">Trên 20 triệu</span>
										</label>
									</div>

									<span class="range-toggle"> <i
										class="fa-solid fa-sliders"></i> Hoặc chọn mức giá phù hợp với
										bạn
									</span>

									<div class="price-slider">
										<div class="display ">
											<span class=" text-center mr-1 min ">300000</span> <span
												class=" text-center  max">42000000</span>
										</div>

										<div class="range-slide">
											<div class="slide">
												<div class="line" style="left: 0%; right: 0%;"></div>
												<span class="thumb thumbMin" style="left: 0%;"></span> <span
													class="thumb thumbMax" style="left: 100%;"></span>
											</div>
											<input class="fromPrice" type="range" max="42000000"
												min="300000" step="100000" value="0"> <input
												class="toPrice" type="range" max="42000000" min="300000"
												step="100000" value="42000000">
										</div>
									</div>
								</form>
							</div>
						</div>
						<div
							class="filter-button filter-button--total d-flex mb-3 justify-content-center pt-3"
							style="display: block;">
							<a class="btn btn-filter-close btn-primary">Bỏ chọn</a> <a
								class="btn btn-filter-readmore btn-danger">Xem kết quả <!-- <b class="total-reloading">6</b>  -->
							</a>
						</div>
					</div>

				</div>
				<!-- <div class="d-flex mobile-scroll"> -->
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button"
							id="dropdownMenuButton2" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Hãng</button>
						<form >
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
								<div class="grid-dropdown-item brandInfoFilter "></div>
								<div
									class="filter-button filter-button--total d-flex mb-3 justify-content-center pt-3"
									style="display: block;">
									<a class="btn btn-filter-close btn-primary">Bỏ chọn</a> <a
										class="btn btn-filter-readmore btn-danger">Xem kết quả <!-- <b class="total-reloading">6</b>  -->
									</a>
								</div>
							</div>
						</form>
					</div>
					<div class="dropdown">
						<button class="btn dropdown-toggle" type="button"
							id="dropdownMenuButton3" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Giá</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton3">
							<form>
								<div class="grid-dropdown-item">
									<label class="imagetips"> <input type="checkbox"
										name="price" value="0-2000000" class="btn-check"
										autocomplete="off" /> <span class="imagetips_tip"
										for="btn-check">Dưới 2 triệu</span>
									</label> <label class="imagetips"> <input type="checkbox"
										name="price" value="2000000-4000000" class="btn-check"
										autocomplete="off" /> <span class="imagetips_tip"
										for="btn-check">Từ 2 - 4 triệu</span>
									</label> <label class="imagetips"> <input type="checkbox"
										name="price" value="4000000-7000000" class="btn-check"
										autocomplete="off" /> <span class="imagetips_tip"
										for="btn-check">Từ 4 - 7 triệu</span>
									</label> <label class="imagetips"> <input type="checkbox"
										name="price" value="7000000-13000000" class="btn-check"
										autocomplete="off" /> <span class="imagetips_tip"
										for="btn-check">Từ 7 - 13 triệu</span>
									</label> <label class="imagetips"> <input type="checkbox"
										name="price" value="13000000-20000000" class="btn-check"
										autocomplete="off" /> <span class="imagetips_tip"
										for="btn-check">Từ 13 - 20 triệu</span>
									</label> <label class="imagetips"> <input type="checkbox"
										name="price" value="20000000-20000000" class="btn-check"
										autocomplete="off" /> <span class="imagetips_tip"
										for="btn-check">Trên 20 triệu</span>
									</label>
								</div>
								<span class="range-toggle"> <i
									class="fa-solid fa-sliders"></i> Hoặc chọn mức giá phù hợp với
									bạn
								</span>

								<div class="price-slider">
									<div class="display ">
										<span class=" text-center min ">300000</span> <span
											class=" text-center  max">42000000</span>
									</div>

									<div class="range-slide">
										<div class="slide">
											<div class="line" style="left: 0%; right: 0%;"></div>
											<span class="thumb thumbMin" style="left: 0%;"></span> <span
												class="thumb thumbMax" style="left: 100%;"></span>
										</div>
										<input class="fromPrice" type="range" max="42000000"
											min="300000" step="100000" value="0"> <input
											class="toPrice" type="range" max="42000000" min="300000"
											step="100000" value="42000000">
									</div>
								</div>
							</form>
							<div
								class="filter-button filter-button--total d-flex mb-3 justify-content-center pt-3"
								style="display: block;">
								<a class="btn btn-filter-close btn-primary">Bỏ chọn</a> <a
									class="btn btn-filter-readmore btn-danger">Xem kết quả <!-- <b class="total-reloading">6</b>  -->
								</a>
							</div>
						</div>
					</div>
					<!-- <div class="dropdown">
						<button class="btn dropdown-toggle" type="button"
							id="dropdownMenuButton4" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Loại Điện
							Thoại</button>
						<form>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton5">
								<div class="d-flex">
									<label class="imagetips mr-1"> <input type="checkbox"
										class="btn-check android" autocomplete="off" /> <span
										class="imagetips_tip" for="btn-check">Android</span>
									</label> <label class="imagetips"> <input type="checkbox"
										class="btn-check ios" autocomplete="off" /> <span
										class="imagetips_tip" for="btn-check">Iphone(iOS)</span>
									</label>
								</div>
								<div
									class="filter-button filter-button--total d-flex mb-3 justify-content-center pt-3"
									style="display: block;">
									<a class="btn btn-filter-close btn-primary">Bỏ chọn</a> <a
										class="btn btn-filter-readmore btn-danger">Xem kết quả <b class="total-reloading">6</b> 
									</a>
								</div>
							</div>
						</form>
					</div> -->
<!-- 				</div> -->
			</div>
			<div class="grid-dropdown-item brandInfo radius"></div>
		</div>
		<div class="box-sort">
			<p class="sort-total">
				<b></b> <strong class="manu-sort">Điện thoại</strong>
			</p>
			<div class="sort-select ">
				<select class="click-sort">
					<option value="1" selected>Xếp theo: Nổi Bật</option>
					<option value="2">Xếp theo: Giá thấp đến cao</option>
					<option value="3">Xếp theo: Giá cao đến thấp</option>
				</select>
			</div>
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
