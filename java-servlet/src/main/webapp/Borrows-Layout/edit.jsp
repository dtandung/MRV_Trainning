<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<div class="box box-primary container-fluid ">
		<h2>Edit Borrow</h2>
		<div class="box-body row justify-content-center">
			<form action="" class="col-8" >
				<div class="form-group">
					<label>StudentID</label> <input
						type="text" class="form-control" id="StudentID" name="StudentID"
						placeholder="StudentID" autofocus>
				</div>
				
				<div class="form-group">
					<label>BookID</label> <input
						type="text" class="form-control" id="BookID" name="BookID"
						placeholder="BookID" >
				</div>
				
				<div class="form-group">
					<label>Quantity</label> <input
						type="text" class="form-control" id="Quantity" name="Quantity"
						placeholder="Quantity" >
				</div>
				
				<div class="form-group">
					<label>BorrowDate</label> <input
						type="text" class="form-control" id="BorrowDate" name="BorrowDate"
						placeholder="BorrowDate" >
				</div>

				<button type="submit" class="btn btn-primary">
					<i class="glyphicon glyphicon-floppy-disk"></i> Lưu Dữ Liệu
				</button>
				<a href="#" class="btn btn-warning"><i
					class="fa fa-ban"></i> Quay Lại</a>
			</form>
		</div>
	</div>
</body>
</html>