<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<header>
	<div class=" nav-menu container d-flex justify-content-between">
		<div class=" mobile-select d-flex">
			<div class="main-logo">admin</div>
			<div class="nav-menu-select ">
				<div class="d-flex">
					<a class="ml-5 nav-link" href="/home">Home Page</a> <a
						class="nav-link" href="/product">Product</a> <a class="nav-link"
						href="/brand">Brand</a>
				</div>
				<div class="dropdown " >
					<button class="dropbtn text-white nav-link">
						<img class="user-image" alt="User Image"
							src="/images/common/user2-160x160.jpg">
						${pageContext.request.remoteUser}
					</button>
					
					<div class="dropdown-content">
						<a href="/logout">Logout</a>
					</div>
				</div>
			</div>
		</div>
		<div id="icon-menu" class="icon-menu">
			<i class="fa-solid fa-bars" style="color: #ffffff;"></i>
		</div>
	</div>
</header>