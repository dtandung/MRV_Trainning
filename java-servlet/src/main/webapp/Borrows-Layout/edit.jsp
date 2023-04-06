<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="../common/head.jsp"%>
<body>
	<%@ include file="../common/navbar.jsp"%>
	<div class="box box-primary container-fluid ">
		<h2>Add New Borrow</h2>
		<div class="box-body row justify-content-center">
			<form id="formBorrow" action="borrow?action=insert" method="post"
				class="borrowForm col-8">
				<div class="row">
					<div class="form-group col-sm-6">
						<label>Student ID</label> <select onchange="select()"
							class="selectpicker form-control" data-live-search="true"
							id="StudentID" name="StudentID">
							<option value="" selected>--Select Student--</option>
							<c:forEach var="item" items="${listStu }">
								<option data-name="${item.name }" value="${item.studentID}">${item.studentID}</option>
							</c:forEach>
						</select> <label for="StudentID" generated="true" class="error"></label>
					</div>


					<div class="form-group col-sm-6 ">
						<label>Student Name</label> <input type="text"
							class="form-control" id="StudentName" name="StudentName"
							placeholder="StudentName" readonly>
					</div>
				</div>

				<div class="form-group">
					<label>Book Name</label> <select class="selectpicker form-control"
						data-live-search="true" id="BookID" name="BookID">
						<option value="" selected>--Select Book--</option>
						<c:forEach var="item" items="${listBook }">
							<option value="${item.bookID}">${item.name }</option>
						</c:forEach>
					</select> <label for="BookID" generated="true" class="error"></label>
				</div>

				<div class="form-group">
					<label>Quantity</label> <input type="number" class="form-control"
						id="Quantity" name="Quantity" placeholder="Quantity">
				</div>
				<div class="text-danger" id="ajaxGetUserServletResponse"></div>

				<button type="submit" class="btn btn-primary">
					<i class="glyphicon glyphicon-floppy-disk"></i> Lưu Dữ Liệu
				</button>
				<a href="borrow?action=none" class="btn btn-warning"><i
					class="fa fa-ban"></i> Quay Lại</a>
			</form>
		</div>
	</div>
	<!-- alert action start-->
	<%@ include file="../common/script.jsp"%>
	<c:if test="${sessionScope['error'] != null }">
		<script type="text/javascript">
			/* $('#formBorrow').submit(/* function(e){ */
			/*  	e.preventDefault(); */
			Swal.fire({
				position : 'center',
				icon : 'error',
				title : 'Số lượng vượt quá hiện tại !!!',
				showConfirmButton : true,
			})
			/* }) */
		</script>
		<%
		session.removeAttribute("error");
		%>
	</c:if>
	<!-- alert action end-->
	
</body>
</html>