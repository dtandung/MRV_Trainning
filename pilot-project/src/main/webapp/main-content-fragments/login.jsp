<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="form-login card-body">
	<h1 class="title-login text-center">Login</h1>
	<form id="loginForm" action="/loginAction" method="POST">
		<c:if test="${not empty error }">
			<!-- <div class="error-message-invalid text-danger">Tài khoản hoặc Mật khẩu không đúng</div> -->
			<div id="" class="error-message-invalid text-center">Incorrect Account or Password !</div>
		</c:if>
		<!-- UserName input -->
		<div class="form-outline mb-4">
			<label class="form-label" for="username">User Name</label> <input
				type="text" id="username" class="form-control" name="username" />
		</div>

		<!-- Password input -->
		<div class="form-outline mb-4">
			<label class="form-label" for="password">Password</label> <input
				type="password" id="password" class="form-control" name="password" />
		</div>

		<!-- Submit button -->
		<button type="submit" class="btn btn-primary btn-block mb-4"
			id="submitLogin">Sign in</button>
	</form>
</div>