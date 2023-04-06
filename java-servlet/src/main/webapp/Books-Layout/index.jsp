<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="../common/head.jsp"%>
<body>
	<%@ include file="../common/navbar.jsp"%>
	<div class="box">
		<div class="box-body">
			<div class=" d-flex justify-content-between title-page  p-3">
				<h2 class="text-white">Book Management</h2>
				<a href="book?action=new"
					class="btn btn-success btn-flat d-flex align-items-center"
					title="bổ sung"><i class="fa-solid fa-plus"></i> Add New Book</a>
			</div>
			<div class="p-3">
				<table id="tableBook" class=" table table-bordered table-hover table-striped">
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
								<td class="text-center"><a
									href="book?action=edit&id=${book.bookID}"
									class="btn-sm btn-primary" title="Sửa"><i
										class="fa-solid fa-pen-to-square"></i></a> <c:if
										test="${book.isUsedBook() == true }">
										<a id="${book.bookID}" href="book?action=delete&id=${book.bookID}" name="${book.name}"
											class="btn-sm btn-danger deleteBook" title="Xoá"
											><i
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
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
