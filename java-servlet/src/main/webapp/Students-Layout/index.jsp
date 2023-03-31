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
	<div class="box">
		<div class="box body">
			<div class=" d-flex justify-content-between bg-secondary  p-3">
				<h2>Student Management</h2>
				<a href="student?action=new"
					class="btn btn-success btn-flat d-flex align-items-center"
					title="bổ sung"><i class="fa-solid fa-plus"></i> Add New Student</a>
			</div>
			<div class="p-3">
				<table class=" table table-bordered table-hover table-striped">
					<thead>
						<tr class="bg-white">
							<th>Name</th>
							<th>Age</th>
							<th>Gender</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Tan Dung</td>
							<td>22</td>
							<td>Male</td>
							<td class="text-center">
								<a href="#"class="btn-sm btn-primary" title="Sửa"><i class="fa-solid fa-pen-to-square"></i></a> 
								<a href="#" class="btn-sm btn-danger" title="Xoá"><i class="fa-solid fa-trash"></i></a>
							</td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>