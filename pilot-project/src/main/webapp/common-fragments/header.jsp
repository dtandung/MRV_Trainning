<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<header>
	<div class="container">
		<div class="nav-menu d-flex justify-content-between">
			<div class="d-flex">
				<div class="main-logo">admin</div>
				<a class="ml-5 nav-link" href="/home">Home Page</a> <a
					class="nav-link" href="/product">Product</a> <a class="nav-link"
					href="/brand">Brand</a>
			</div>

			<div class="dropdown">
				<button class="dropbtn text-white ">
					<img class="user-image" alt="User Image"
						src="/images/common/user2-160x160.jpg">
					${pageContext.request.remoteUser}
				</button>
				<div class="dropdown-content">
					<a href="/logout">Logout</a> 
				</div>
			</div>
			<!-- <a class="nav-link text-white bg-warning" href="/logout">Logout</a> -->
		</div>
	</div>
</header>