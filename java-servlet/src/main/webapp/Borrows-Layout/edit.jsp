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
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<div class="box box-primary container-fluid ">
		<h2>Add New Borrow</h2>
		<div class="box-body row justify-content-center">
			<form action="borrow?action=insert" method="post" class="col-8">
				<div class="row">
					<div class="form-group col-sm-6">
						<label>Student ID</label> <select onchange="select()"
							class="selectpicker form-control" data-live-search="true"
							id="StudentID" name="StudentID">
							<option selected>--Chọn Sinh Viên--</option>
							<c:forEach var="item" items="${listStu }">
								<option data-name="${item.name }" value="${item.studentID}">${item.studentID}</option>
							</c:forEach>
						</select>
					</div>


					<div class="form-group col-sm-6 ">
						<label>Student Name</label> <input type="text"
							class="form-control" id="StudentName" name="StudentName"
							placeholder="StudentName" readonly>
					</div>
				</div>

				<div class="form-group">
					<label>Book Name</label> <select class="selectpicker form-control"
						data-live-search="true" id="BookID" name="BookID">
						<option selected>--Chọn Sách--</option>
						<c:forEach var="item" items="${listBook }">
							<option value="${item.bookID}">${item.name }</option>
						</c:forEach>
					</select>
				</div>

				<div class="form-group">
					<label>Quantity</label> <input type="text" class="form-control"
						id="Quantity" name="Quantity" placeholder="Quantity">
				</div>



				<button type="submit" class="btn btn-primary">
					<i class="glyphicon glyphicon-floppy-disk"></i> Lưu Dữ Liệu
				</button>
				<a href="borrow?action=none" class="btn btn-warning"><i
					class="fa fa-ban"></i> Quay Lại</a>
			</form>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/base.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
</body>
</html>