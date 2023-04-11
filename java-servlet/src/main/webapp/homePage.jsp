<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home Page</title>
<%@ include file="../common/head.jsp"%>
</head>
<style>
.bg { 
    /* The image used */
    background-image: url("${pageContext.request.contextPath}/img/book.jpg");
    object-fit:cover;


    /* Center and scale the image nicely */
  /*   background-position: center; */
    background-repeat: no-repeat;
    background-size: cover;
    height: 100vh;
    overflow:hidden;
}
</style>
<body>
	<%@ include file="./common/navbar.jsp"%>
	<main>
		<div class="bg">
		</div>
	</main>
</body>
</html>