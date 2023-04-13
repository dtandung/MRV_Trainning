<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					aria-label="Default select example">
					<option selected>1.000.000</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
			</div>
			<div class="search-area__select-fields-price-to">
				<b>Price To:</b> <select class="form-select"
					aria-label="Default select example">
					<option selected>5.000.000</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
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
			<tr>
				<td class='text-center'>1</td>
				<td class='text-center'>Iphone 7</td>
				<td class='text-center'>100</td>
				<td class='text-center'>150.000</td>
				<td class='text-center'>Apple</td>
				<td class='text-center'>11-04-2023</td>
				<td class='text-center'><a href='' data-toggle='lightbox'
					data-max-width='1000'><img class='img-fluid'
						src='/images/dmx/TCL-TV-690-300-690x300.png'></td>

				<td class='action-btns text-center'><a
					class='edit-btn btn-sm btn-primary' data-id=''><i
						class='fas fa-edit text-white'></i></a> | <a
					class='delete-btn btn-sm btn-danger' data-name='' data-id=''><i
						class='fas fa-trash-alt text-white'></i></a></td>
			</tr>
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
				<form id="brandInfoForm" role="form" enctype="multipart/form-data">
					<div class="modal-header">
						<h5 class="modal-title">Add Product</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group d-none row">
							<label>Product ID</label> <input type="text" class="form-control"
								name="productId" id="productId" placeholder="Product ID"
								readonly>
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
						<div class="form-group row"></div>
						<div class="form-group row">
							<label class="col-sm-3" for="brandName">Brand Name <span
								class="required-mask">(*)</span></label>
							<div class="col-sm-9">
								<select class="form-control" id="brandName" name="brandName"
									aria-label="Default select example">
									<option selected>Brand Name</option>
									<option value="1">One</option>
									<option value="2">Two</option>
									<option value="3">Three</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-3" for="openingForSale">Opening For
								Sale <span class="required-mask">(*)</span>
							</label>
							<div class="form-group row">
								<label class="col-sm-3" for="openingForSale">Opening For
									Sale <span class="required-mask">(*)</span>
								</label>
								<div class="col-sm-9">
									<div class="datepicker date input-group">
										<input type="text" placeholder="Opening For Sale"
											class="form-control date-end cursor-pointer"
											name="openingForSale" id="openingForSale">
										<div class="input-group-append">
											<span class="input-group-text"><i
												class="fa fa-calendar cursor-pointer"></i></span>
										</div>
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
							id="brandLogo">
							<label class="col-sm-3" for="logo">Logo <span
								class="required-mask">(*)</span></label>
							<div class="col-sm-9">
								<div class="image-upload-wrap">
									<input class="file-upload-input" type='file'
										onchange="readURL(this);" name="logoFiles" accept="image/*" />
									<div class="drag-text">
										<h3>Drag and drop a file or select add Image</h3>
									</div>
								</div>
								<input type="hidden" class="old-img" id="logo" name="logo">
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
<!-- Modal Add and Edit Product -->
<div class="modal fade" id="productInfoModal">
	<div class="modal-dialog modal-dialog-centered" role="document">
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
					<div class="form-group d-none">
						<label>Brand ID</label> <input type="text" class="form-control"
							name="brandId" id="brandId" placeholder="Brand ID" readonly>
					</div>
					<div class="form-group">
						<label for="brandName">Brand Name <span
							class="required-mask">(*)</span></label> <input type="text"
							class="form-control" id="brandName" name="brandName"
							placeholder="Brand Name">
					</div>
					<div class="form-group" id="brandLogo">
						<label for="logo">Logo <span class="required-mask">(*)</span></label>
						<div class="preview-image-upload" id="logoImg">
							<img src="<c:url value='/images/common/image-demo.png'/>"
								alt="image">
						</div>
						<input type="file" class="form-control upload-image"
							name="logoFiles" accept="image/*" /> <input type="hidden"
							class="old-img" id="logo" name="logo">
					</div>
					<div class="form-group">
						<label for="description">Description</label>
						<textarea name="description" id="description" cols="30" rows="3"
							class="form-control" placeholder="Description"></textarea>
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
					Do you want to delete <b id="deletedProduct"></b>?
				</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
				<button type="button" class="btn btn-primary" id="deleteSubmitBtn">Save</button>
			</div>
		</div>
	</div>
</div>