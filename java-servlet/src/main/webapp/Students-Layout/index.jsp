<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Student Management</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/img/Kukku-Icon.png">
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<div class="box">
		<div class="box body">
			<div class=" d-flex justify-content-between bg-secondary  p-3">
				<h2>Student Management</h2>
				<a href="student?action=new"
					class="btn btn-success btn-flat d-flex align-items-center"
					title="bổ sung"><i class="fa-solid fa-plus"></i> Add New
					Student</a>
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
						<c:forEach var="student" items="${listStudent}">
							<tr>
								<td>${student.name}</td>
								<td>${student.age}</td>
								<c:choose>
									<c:when test="${student.gender == true }">
										<td>Nam</td>
									</c:when>
									<c:otherwise>
										<td>Nữ</td>
									</c:otherwise>
								</c:choose>

								<td class="text-center">
								<a href="student?action=edit&id=${student.studentID}"class="btn-sm btn-primary" title="Sửa"><i class="fa-solid fa-pen-to-square"></i></a>
									
								<c:if test="${student.isUsedStudent() == true }">
									<a href="student?action=delete&id=${student.studentID}" class="btn-sm btn-danger" title="Xoá" onclick="return confirm('Xóa sách này khỏi hệ thống?')"><i class="fa-solid fa-trash"></i></a>
								</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>