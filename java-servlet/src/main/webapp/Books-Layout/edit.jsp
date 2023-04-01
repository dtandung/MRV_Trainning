<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Book Management</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/img/Kukku-Icon.png">
</head>

<body>
	<%@ include file="../common/header.jsp"%>
	<div class="box box-primary container-fluid ">
		<c:choose>
			<c:when test="${book != null }">
				<h2>Edit Book</h2>
			</c:when>
			<c:otherwise>
				<h2>Add New Book</h2>
			</c:otherwise>
		</c:choose>
		<div class="box-body w-100 row justify-content-center">
		  	<c:if test="${book != null}">
				<form action="book?action=update" method="post" class="col-8">
	        </c:if>
	        <c:if test="${book == null}">
				<form action="book?action=insert" method="post" class="col-8">
	        </c:if>
	        <c:if test="${book != null}">
       			<input type="hidden" name="id" class="input-field" value="<c:out value='${book.bookID}'/>"/> 
        	</c:if>

				<div class="form-group" >
					<label>Name</label> <input
						type="text" class="form-control" id="Name" name="Name" value="${book.name}"
						placeholder="Name" autofocus>
				</div>
				
				<div class="form-group">
					<label>TotalPage</label> <input
						type="text" class="form-control" id="TotalPage" name="TotalPage" value="${book.totalPage }"
						placeholder="TotalPage" >
				</div>
				
				<div class="form-group">
					<label>Type</label> <input
						type="text" class="form-control" id="Type" name="Type" value="${book.type }"
						placeholder="Type" >
				</div>
				
				<div class="form-group">
					<label>Quantity</label> <input
						type="number" min="1" class="form-control" id="Quantity" name="Quantity" value="${book.quantity }"
						placeholder="Quantity" >
				</div>

				<button type="submit" class="btn btn-primary">
					<i class="glyphicon glyphicon-floppy-disk"></i> Lưu Dữ Liệu
				</button>
				<a href="book?action=none" class="btn btn-warning"><i
					class="fa fa-ban"></i> Quay Lại</a>
			</form>
		</div>
	</div>
</body>
</html>