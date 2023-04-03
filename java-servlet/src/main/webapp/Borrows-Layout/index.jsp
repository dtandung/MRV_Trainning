<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Borrows Management</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/img/Kukku-Icon.png">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
</head>
<base href="/BookStore/">
<body>
	<%@ include file="../common/header.jsp"%>
	<div class="box">
		<div class="box body">
			<div class=" d-flex justify-content-between bg-secondary  p-3">
				<h2>Borrow Management</h2>


				<a href="borrow?action=new"
					class="btn btn-success btn-flat d-flex align-items-center"
					title="bổ sung"><i class="fa-solid fa-plus"></i> Add Borrow</a>
			</div>

			<div class="p-3">
				<div class="top-body">
					<form class="row" action="borrow?action=none" method="get">
						<!-- Date Picker -->
						<div class="form-group mb-4 col-sm-3">
							<div class="datepicker date input-group">
								<input type="text" placeholder="Start Day" class="form-control" name="startDate"
									id="fecha1">
								<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar"></i></span>
								</div>
							</div>
						</div>
						<!-- // Date Picker -->
						<!-- Date Picker -->
						<div class="form-group mb-4 col-sm-3">
							<div class="datepicker date input-group">
								<input type="text" placeholder="End Day" class="form-control" name="endDate"
									id="fecha1">
								<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar"></i></span>
								</div>
							</div>
						</div>
						<!-- // Date Picker -->
						<div class="col-sm-6 mb-4 input-group ">
							<input type="text" name="SearchValue" class="form-control"
								placeholder="Nhập tên sách hoặc sinh viên cần tìm"> <span
								class="input-group-btn" autofocus>
								<button type="submit" name="search" id="search-btn"
									class="btn btn-flat btn-info">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form>
				</div>
				<table class=" table table-bordered table-hover table-striped">
					<thead>
						<tr class="bg-white">
							<th>BookID</th>
							<th>Book Name</th>
							<th>BorrowDate</th>
							<th>StutdentID</th>
							<th>Stutdent Name</th>
							<th>Quantity</th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach var="borrow" items="${listBorrow}">
							<tr>
								<td>${borrow.bookID}</td>
								<c:forEach var="book" items="${listBook}">
									<c:if test="${borrow.bookID eq book.bookID }">
										<td>${book.name}</td>
									</c:if>
								</c:forEach>
								<td>${borrow.borrowDate}</td>
								<td>${borrow.studentID}</td>
								<c:forEach var="item" items="${listStu}">
									<c:if test="${borrow.studentID eq item.studentID }">
										<td>${item.name }</td>
									</c:if>
								</c:forEach>
								<td>${borrow.quantity}</td>
								
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/base.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
</body>
</html>