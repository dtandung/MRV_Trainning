<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<h1>Đây là trang Books</h1>
	
	<h2>${book.getName()}</h2>
</body>
</html>