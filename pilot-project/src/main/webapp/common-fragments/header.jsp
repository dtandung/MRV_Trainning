<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<header>
	<div class=" nav-menu container d-flex justify-content-between">
		<div class=" mobile-select d-flex">
			<div class="main-logo">admin</div>
			<div id="icon-menu" class="icon-menu">
				<input type="checkbox" /> <i class="fa-solid fa-bars"
					style="color: #ffffff;"></i>
				<div class="nav-menu-select " id="menu">
					<ul class="d-flex nav-item">
						<li><a class="ml-5 nav-link" href="/home"><i class="fa-solid fa-house" style="color: #ffffff;"></i>&nbsp;Home Page</a></li>
						<li><a class="nav-link" href="/product"><i class="fa-solid fa-mobile-screen" style="color: #ffffff;"></i>&nbsp;Product</a></li>
						<li><a class="nav-link" href="/brand"><i class="fa-solid fa-layer-group" style="color: #ffffff;"></i>&nbsp;Brand</a></li>
					</ul>
					<div class="dropdown ">
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
		</div>
		
	</div>
</header>