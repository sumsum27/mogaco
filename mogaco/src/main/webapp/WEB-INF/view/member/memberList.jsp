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
 	
	 	<br>${list.num}
	 	<br>${list.group}
		<br><a href="../member/memberView.do?id=${list.id}">${list.id} </a> 
		<br>${list.pw}
		<br>${list.name}
		<br>${list.nickname}
		<br>${list.email}
		<br>${list.phone}
		<br>${list.intro}
		<br>${list.pic}

 	</c:forEach>		
	

</div>
</body>

</html>