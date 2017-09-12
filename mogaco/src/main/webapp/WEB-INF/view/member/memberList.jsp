<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/common/taglib.jsp" %>
<html>

<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>



<body>
<div id="wrap">
	
 	
 	<c:forEach items="${memberList}" var="list">
 	
 		<a href="../member/memberView.do?id=${list.id}">${list.id}</a> <br>
	 	${list.name}<br>
	 	${list.email}<br>
	 	${list.gender}<br>
	 	
 	</c:forEach>		
	

</div>
</body>

</html>