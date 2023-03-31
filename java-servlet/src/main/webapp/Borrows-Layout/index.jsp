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
				<h2>Borrow Management</h2>
				<a href="book?action=new"
					class="btn btn-success btn-flat d-flex align-items-center"
					title="bổ sung"><i class="fa-solid fa-plus"></i> Add Borrow</a>
			</div>
			<div class="p-3">
				<table class=" table table-bordered table-hover table-striped">
					<thead>
						<tr class="bg-white">
							<th>StutdentID</th>
							<th>BookID</th>
							<th>Quantity</th>
							<th>BorrowDate</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>100</td>
							<td>2</td>
							<td>31/03/2023</td>
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