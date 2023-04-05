<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
	<img alt="logo"
		src="${pageContext.request.contextPath}/img/Kukku-Icon.png">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNav" aria-controls="navbarNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class=" nav navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="homepage">Home
			</a></li>
			<li class="nav-item"><a class="nav-link" href="student">Students</a></li>
			<li class="nav-item"><a class="nav-link" href="book">Books</a></li>
			<li class="nav-item"><a class="nav-link" href="borrow">Borrows</a></li>
		</ul>
	</div>
</nav>