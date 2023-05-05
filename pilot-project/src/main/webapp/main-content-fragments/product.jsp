<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="main-content">
	<div class="sub-header">
		<div class="float-left sub-title">Product Management</div>
		<div class="float-right">
			<a class="btn btn-success add-btn" id="addProductInfoModal"><i
				class="fas fa-plus-square"></i> Add Product</a>
		</div>
	</div>
	<div class="search-area">
		<div class="search-area__select-fields">
			<div class="search-area__select-fields-price-from">
				<b>Price From:</b> <select class="form-select"
					aria-label="Default select example" id="priceFrom">
					<option value = "" >--Select from Price--</option>
					<option value="2000000">2.000.000</option>
					<option value="4000000">4.000.000</option>
					<option value="6000000">6.000.000</option>
					<option value="8000000">8.000.000</option>
					<option value="10000000">10.000.000</option>
				</select>
			</div>
			<div class="search-area__select-fields-price-to">
				<b>Price To:</b> <select class="form-select"
					aria-label="Default select example" id="priceTo">
					<option value ="">--Select to Price--</option>
					<option value="12000000">12.000.000</option>
					<option value="14000000">14.000.000</option>
					<option value="16000000">16.000.000</option>
					<option value="18000000">18.000.000</option>
					<option value="20000000">20.000.000</option>
				</select>
			</div>
		</div>
		<div class="search-area__search-fields">
			<input type="text" id="keyword"
				class="search-area__search-fields--text"
				placeholder="Product, Brand Name, . v.v .">
		</div>
		<div class="search-area__btns">
			<div class="search-area__btn">
				<button class="btn btn-info" id="searchProductBtn">
					<i class="fas fa-search"></i>&nbsp;Search
				</button>
			</div>
			<div class="search-area__btn">
				<button class="btn btn-secondary" id="clearSearchFieldBtn">
					<i class="fas fa-times"></i>&nbsp;Clear
				</button>
			</div>
		</div>
	</div>

	<table class="table table-bordered table-striped" id="productInfoTable">
		<thead>
			<tr class="text-center bg-white">
				<th scope="col">#</th>
				<th scope="col">Procduct</th>
				<th scope="col">Quantity</th>
				<th scope="col">Price</th>
				<th scope="col">Brand Name</th>
				<th scope="col">Opening For Sale</th>
				<th scope="col">Image</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<div class="d-flex justify-content-center">
		<ul class="pagination">
		</ul>
	</div>
	<!-- Modal Add and Edit Product -->
	<div class="modal fade bd-example-modal-lg" id="productInfoModal">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<form id="productInfoForm" role="form" enctype="multipart/form-data">
					<div class="modal-header">
						<h5 class="modal-title">Add Product</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group d-none row">
							<label class="col-sm-3">Product ID</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="productId"
									id="productId" placeholder="Product ID" readonly>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-3" for="productName">Product Name <span
								class="required-mask">(*)</span></label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="productName"
									name="productName" placeholder="Product Name">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-6">
								<label for="quantity">Quantity <span
									class="required-mask">(*)</span></label> <input type="text"
									class="form-control " id="quantity" name="quantity"
									placeholder="Quantity">
							</div>
							<div class="col-sm-6 ">
								<label for="price">Price <span class="required-mask">(*)</span></label>
								<input type="text" class="form-control" id="price" name="price"
									placeholder="Price">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-3" for="brand">Brand Name <span
								class="required-mask">(*)</span></label>
							<div class="col-sm-9">
								<select class="form-control" id="brand" name="brand"
									aria-label="Default select example">
									<option>--Select Brand Name--</option>

								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-3" for="openingForSale">Opening For
								Sale <span class="required-mask">(*)</span>
							</label>
							<div class="col-sm-9">
								<div class="datepicker date input-group">
									<input type="text" placeholder="Opening For Sale"
										class="form-control cursor-pointer" name="saleDate"
										id="saleDate">
									<div class="input-group-append">
										<span class="input-group-text"><i
											class="fa fa-calendar cursor-pointer"></i></span>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-3" for="description">Description <span
								class="required-mask">(*)</span></label>
							<div class="col-sm-9">
								<textarea name="description" id="description" cols="30" rows="2"
									class="form-control" placeholder="Description"></textarea>
							</div>
						</div>
						<div class="form-group row d-flex justify-content-center"
							id="productLogo">
							<label class="col-sm-3" for="logo">Logo <span
								class="required-mask">(*)</span></label>
							<div class="col-sm-9">
								<div class="image-upload-wrap">
									<input class="file-upload-input" type='file'
										onchange="readURL(this)" name="imageFiles" accept="image/*" />
									<div class="drag-text">
										<h3>Drag and drop a file or select add Image</h3>
									</div>
								</div>
								<input type="hidden" class="old-img" id="imageProduct"
									name="image">
								<div class="file-upload-content">
									<div id="logoImg">
										<img class="img-fluid img-thumbnail file-upload-image" src="#"
											alt="your image" />
									</div>
									<div class="image-title-wrap">
										<button type="button" onclick="removeUpload()"
											class="remove-image">
											Remove <span class="image-title"> Image</span>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-primary" id="saveProductBtn">Save</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- Modal Confirm Deleting Product -->
<div class="modal fade" id="confirmDeleteModal">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Delete Product</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<p>
					Do you want to delete <b id="deletedProductName"></b>?
				</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
				<button type="button" class="btn btn-primary" id="deleteSubmitBtn">Save</button>
			</div>
		</div>
	</div>
</div>