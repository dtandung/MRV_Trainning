<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<h2>Book Management</h2>
				<a href="book?action=new"
					class="btn btn-success btn-flat d-flex align-items-center"
					title="bổ sung"><i class="fa-solid fa-plus"></i> Add New Book</a>
			</div>
			<div class="p-3">
				<table class=" table table-bordered table-hover table-striped">
					<thead>
						<tr class="bg-white">
							<th>Name</th>
							<th>TotalPage</th>
							<th>Type</th>
							<th>Quantity</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="book" items="${listBook}">
						<tr>
							<td>${book.name}</td>
							<td>${book.totalPage }</td>
							<td>${book.type }</td>
							<td>${book.quantity }</td>
							<td class="text-center">
								<a href="book?action=edit&id=${book.bookID}"class="btn-sm btn-primary" title="Sửa"><i class="fa-solid fa-pen-to-square"></i></a>
								
								<c:if test="${book.isUsedBook() == true }">
									<a href="book?action=delete&id=${book.bookID}" class="btn-sm btn-danger" title="Xoá"><i class="fa-solid fa-trash"></i></a>
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
<script type="${pageContext.request.contextPath}/js/base.js"></script>
</html>
