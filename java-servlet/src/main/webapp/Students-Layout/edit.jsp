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
	<div class="box box-primary container-fluid ">
		<c:choose>
			<c:when test="${student != null }">
				<h2>Edit Student</h2>
			</c:when>
			<c:otherwise>
				<h2>Student</h2>
			</c:otherwise>
		</c:choose>
		<div class="box-body row justify-content-center">
			<c:if test="${student != null}">
				<form action="student?action=update" method="post"
					class="studentForm col-8">
			</c:if>
			<c:if test="${student == null}">
				<form action="student?action=insert" method="post"
					class="studentForm col-8">
			</c:if>
			<c:if test="${student != null}">
				<input type="hidden" name="id" class="input-field"
					value="<c:out value='${student.studentID}'/>" />
			</c:if>
			<div class="form-group">
				<label>Name</label> <input type="text" class="form-control"
					id="Name" name="Name" value="${student.name }" placeholder="Name"
					autofocus>
			</div>
			<c:out value="${valiName}"></c:out>

			<div class="form-group">
				<label>Age</label> <input type="text" class="form-control" id="Age"
					name="Age" value="${student.age }" placeholder="Age">
			</div>

			<c:if test="${student == null}">
				<div class="form-group">
					<label>Gender</label> <select class="form-select form-control "
						aria-label="Default select example " name="Gender">
						<option value="" selected>Chọn Giới Tính</option>
						<option value="1">Nam</option>
						<option value="0">Nữ</option>
					</select>
				</div>
			</c:if>

			<c:if test="${student != null}">
				<div class="form-group">
					<label>Gender</label>
					<c:choose>
						<c:when test="${student.gender == true }">
							<select class="form-select form-control "
								aria-label="Default select example " name="Gender">
								<option value="1" selected>Nam</option>
								<option value="0">Nữ</option>
							</select>
						</c:when>
						<c:otherwise>
							<select class="form-select form-control "
								aria-label="Default select example " name="Gender">
								<option value="1">Nam</option>
								<option value="0" selected>Nữ</option>
							</select>
						</c:otherwise>
					</c:choose>

				</div>
			</c:if>


			<button type="submit" class="btn btn-primary">
				<i class="glyphicon glyphicon-floppy-disk"></i> Lưu Dữ Liệu
			</button>
			<a href="student?action=none" class="btn btn-warning"><i
				class="fa fa-ban"></i> Quay Lại</a>
			</form>
		</div>
	</div>
	<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/base.js"></script> --%>
	
</body>
</html>