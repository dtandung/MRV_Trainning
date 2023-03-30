<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="icon" href="${pageContext.request.contextPath}/img/Kukku-Icon.png">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<style>
.bg { 
    /* The image used */
    background-image: url("${pageContext.request.contextPath}/img/book.jpg");


    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    height: calc(100vh - 56px);
}
</style>
<body>
	<%@ include file="./common/header.jsp"%>
	<main>
		<div class="bg"></div>
	</main>

</body>
</html>