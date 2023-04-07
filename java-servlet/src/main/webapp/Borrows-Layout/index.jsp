<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="../common/head.jsp"%>
<body>
	<%@ include file="../common/navbar.jsp"%>
	<div class="box">
		<div class="box-body">
			<div class=" d-flex justify-content-between p-3 title-page">
				<h2 class="text-white">Borrow Management</h2>
				<a href="borrow?action=new"
					class="btn btn-success btn-flat d-flex align-items-center"
					title="bổ sung"><i class="fa-solid fa-plus"></i> Add Borrow</a>
			</div>

			<div class="p-3">
				<div class="top-body">
					<form id="formSearchBorrow" class="row"
						action="borrow?action=search" method="get">
						<!-- Date Picker -->
						<div class="form-group mb-4 col-sm-3">
							<div class="datepicker date input-group">
								<input type="text" placeholder="Start Day"
									class=" form-control date-start cursor-pointer"
									name="startDate" id="dt1" value="${startDate}">
								<div class="input-group-append">
									<span class="input-group-text"><i
										class="fa fa-calendar cursor-pointer"></i></span>
								</div>
							</div>
						</div>
						<!-- // Date Picker -->
						<!-- Date Picker -->
						<div class="form-group mb-4 col-sm-3 ">
							<div class="datepicker date input-group">
								<input type="text" placeholder="End Day"
									class="form-control date-end cursor-pointer" name="endDate"
									id="dt2" value="${endDate }">
								<div class="input-group-append">
									<span class="input-group-text"><i
										class="fa fa-calendar cursor-pointer"></i></span>
								</div>
							</div>
						</div>
						<!-- // Date Picker -->
						<div class="col-sm-6 mb-4 input-group ">
							<input type="text" name="SearchValue" class="form-control"
								placeholder="Nhập tên sách hoặc sinh viên cần tìm"
								value="${searchValue }"> <span class="input-group-btn"
								autofocus>
								<button type="submit" name="search" id="search-btn"
									class="btn btn-flat btn-info">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form>
				</div>

				<div id="searchResult">
					<table class=" table table-bordered table-hover table-striped">
						<thead>
							<tr class="bg-white">
								<th>BookID</th>
								<th>Book Name</th>
								<th>BorrowDate</th>
								<th>StutdentID</th>
								<th>Stutdent Name</th>
								<th>Quantity</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="borrow" items="${listBorrow}">
								<tr>
									<td>${borrow.bookID}</td>
									<c:forEach var="book" items="${listBook}">
										<c:if test="${borrow.bookID eq book.bookID }">
											<td>${book.name}</td>
										</c:if>
									</c:forEach>
									<td>${borrow.borrowDate}</td>
									<td>${borrow.studentID}</td>
									<c:forEach var="item" items="${listStu}">
										<c:if test="${borrow.studentID eq item.studentID }">
											<td>${item.name }</td>
										</c:if>
									</c:forEach>
									<td>${borrow.quantity}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../common/script.jsp"%>
</body>
</html>