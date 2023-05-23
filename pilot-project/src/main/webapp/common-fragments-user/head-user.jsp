<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<link rel="icon" href="<c:url value='/images/common/favicon.ico'/>"
	type="image/gif" sizes="16x16">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<c:url value='/plugins/bootstrap/css/bootstrap.min.css'/>">
<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="<c:url value='/plugins/ekko-lightbox/ekko-lightbox.min.css'/>">
<link rel="stylesheet" href="<c:url value='/plugins/font-awesome/css/all.min.css'/>">
<!-- <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" /> -->
<link rel="stylesheet" href="<c:url value='/styles/base-user.css'/>">
<link rel="stylesheet" href="<c:url value='/styles/responsive-user-page.css'/>">
<!-- link datepicker boostrap -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
<title>Điện Thoại ${not empty specificPageTitle ? specificPageTitle : title}</title>
