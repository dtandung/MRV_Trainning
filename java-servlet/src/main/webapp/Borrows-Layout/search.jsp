<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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