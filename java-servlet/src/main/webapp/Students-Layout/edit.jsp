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
		<h2>Edit Student</h2>
		<div class="box-body row justify-content-center">
			<form action="" class="col-8">
				<div class="form-group">
					<label>Name</label> <input
						type="text" class="form-control" id="Name" name="Name"
						placeholder="Name" autofocus>
				</div>
				
				<div class="form-group">
					<label>Age</label> <input
						type="text" class="form-control" id="Age" name="Age"
						placeholder="Age" >
				</div>
				
				<div class="form-group">
					<label>Gender</label> <input
						type="text" class="form-control" id="Gender" name="Gender"
						placeholder="Gender" >
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