<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="icon" href="${pageContext.request.contextPath}/img/Kukku-Icon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/productList.css" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<img alt="logo" src="${pageContext.request.contextPath}/img/Kukku-Icon.png">
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="#">Home </a> 
				<a class="nav-item nav-link" href="StudentsController">Students</a> 
				<a class="nav-item nav-link" href="BooksController">Books</a>
				<a class="nav-item nav-link " href="BorrowsController">Borrows</a>
				<a class="nav-item nav-link " href="SearchBorrowsController">Search Borrows</a>
			</div>
		</div>
	</nav>


</body>
</html>