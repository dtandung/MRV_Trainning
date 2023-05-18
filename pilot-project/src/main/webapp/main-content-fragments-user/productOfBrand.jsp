<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<main class="container">
	<section class="row discount-in-day">
		<div class="section-title">
			<div class="section-title d-flex">
				<span class="mr-1"><a href="/home">Điện thoại</a></span> <span style="color: #999;">›</span>
				<div class="detail-title ml-1">
					<b></b> Điện thoại (${brand})
				</div>
			</div>
		</div>
		<!-- <div class="group-tabs">
			<div class="box-filter mb-3 ">
				<div class="dropdown">
					<button class="btn" type="button" id="dropdownMenuButton1"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fa-solid fa-filter" style="color: #050505;"></i> Bộ lọc
					</button>
					<form class="range-price">
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<div class="mb-3">
								<b>Hãng</b>
							</div>

							<div class="grid-dropdown-item brandInfoFilter"></div>
							<div class="dropdown-divider"></div>
							<div class="filter-all">
								<div>
									<div class="mb-3">
										<b>Loại điện thoại</b>
									</div>
									<div class="grid-dropdown-item mr-1">
										<label class="imagetips"> <input type="checkbox"
											class="btn-check" autocomplete="off" /> <span
											class="imagetips_tip" for="btn-check">Android</span>
										</label> <label class="imagetips"> <input type="checkbox"
											class="btn-check" autocomplete="off" /> <span
											class="imagetips_tip" for="btn-check">Iphone(iOS)</span>
										</label>
									</div>
								</div>
								<div>
									<div class="mb-3">
										<b>Giá</b>
									</div>
									<div class="grid-dropdown-item">
										<label class="imagetips"> <input type="checkbox"
											class="btn-check" autocomplete="off" /> <span
											class="imagetips_tip" for="btn-check">Dưới 2 triệu</span>
										</label> <label class="imagetips"> <input type="checkbox"
											class="btn-check" autocomplete="off" /> <span
											class="imagetips_tip" for="btn-check">Từ 2 - 4 triệu</span>
										</label> <label class="imagetips"> <input type="checkbox"
											class="btn-check" autocomplete="off" /> <span
											class="imagetips_tip" for="btn-check">Từ 4 - 7 triệu</span>
										</label> <label class="imagetips"> <input type="checkbox"
											class="btn-check" autocomplete="off" /> <span
											class="imagetips_tip" for="btn-check">Từ 7 - 13 triệu</span>
										</label> <label class="imagetips"> <input type="checkbox"
											class="btn-check" autocomplete="off" /> <span
											class="imagetips_tip" for="btn-check">Từ 13 - 20 triệu</span>
										</label> <label class="imagetips"> <input type="checkbox"
											class="btn-check" autocomplete="off" /> <span
											class="imagetips_tip" for="btn-check">Trên 20 triệu</span>
										</label>
									</div>
									<form class="range-price">
									<div class="display m-0 mt-3">
										<span class=" text-center  " id="min">300000</span> <span
											class=" text-center  " id="max">42000000</span>
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
					</form>
				</div>

				<div class="dropdown">
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton2" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Hãng</button>
					<form>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
							<div class="grid-dropdown-item brandInfoFilter"></div>
						</div>
					</form>
				</div>

				<div class="dropdown">
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton3" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Giá</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton3">
						<form class="range-price">
							<div class="grid-dropdown-item">
								<label class="imagetips"> <input type="checkbox"
									class="btn-check" autocomplete="off" /> <span
									class="imagetips_tip" for="btn-check">Dưới 2 triệu</span>
								</label> <label class="imagetips"> <input type="checkbox"
									class="btn-check" autocomplete="off" /> <span
									class="imagetips_tip" for="btn-check">Từ 2 - 4 triệu</span>
								</label> <label class="imagetips"> <input type="checkbox"
									class="btn-check" autocomplete="off" /> <span
									class="imagetips_tip" for="btn-check">Từ 4 - 7 triệu</span>
								</label> <label class="imagetips"> <input type="checkbox"
									class="btn-check" autocomplete="off" /> <span
									class="imagetips_tip" for="btn-check">Từ 7 - 13 triệu</span>
								</label> <label class="imagetips"> <input type="checkbox"
									class="btn-check" autocomplete="off" /> <span
									class="imagetips_tip" for="btn-check">Từ 13 - 20 triệu</span>
								</label> <label class="imagetips"> <input type="checkbox"
									class="btn-check" autocomplete="off" /> <span
									class="imagetips_tip" for="btn-check">Trên 20 triệu</span>
								</label>
							</div>

							<div class="display ">
								<span class=" text-center  " id="min2">300000</span> <span
									class=" text-center  " id="max2">42000000</span>
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
				<div class="dropdown ">
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton4" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Loại Điện
						Thoại</button>
					<form>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton5">
							<div class="d-flex">
								<label class="imagetips mr-1"> <input type="checkbox"
									class="btn-check" autocomplete="off" /> <span
									class="imagetips_tip" for="btn-check">Android</span>
								</label> <label class="imagetips"> <input type="checkbox"
									class="btn-check" autocomplete="off" /> <span
									class="imagetips_tip" for="btn-check">Iphone(iOS)</span>
								</label>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="filter-product"></div>
			<div class="grid-dropdown-item brandInfo radius">
			</div>
		</div> -->
		<div class="box-sort">
			<p class="sort-total">
				<b></b>  <strong class="manu-sort">Điện thoại</strong>
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
				</ul>
			</div>

		</div>
	</section>
	<div class="d-flex justify-content-center">
		<ul class="pagination">
		</ul>
	</div>
</main>
