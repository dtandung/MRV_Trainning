<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="../common/header.jsp"%>
<body>
	<%@ include file="../common/navbar.jsp"%>
	<div class="box">
		<div class="box-body">
			<div class=" d-flex justify-content-between title-page  p-3">
				<h2 class="text-white">Student Management</h2>
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

								<td class="text-center"><a
									href="student?action=edit&id=${student.studentID}"
									class="btn-sm btn-primary" title="Sửa"><i
										class="fa-solid fa-pen-to-square"></i></a> <c:if
										test="${student.isUsedStudent() == true }">
										<a href="student?action=delete&id=${student.studentID}"
											class="btn-sm btn-danger" title="Xoá"
											onclick="return confirm('Xóa sinh viên này khỏi hệ thống?')"><i
											class="fa-solid fa-trash"></i></a>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="../common/script.jsp"%>
	<!-- alert action start-->
	<c:if test="${sessionScope['success'] != null }">
		<script type="text/javascript">
			Swal.fire({
				position : 'center',
				icon : 'success',
				title : 'Thành công !!!',
				showConfirmButton : false,
				timer : 2000
			})
		</script>
		<%
		session.removeAttribute("success");
		%>
	</c:if>
	<!-- alert action end-->
</body>
</html>