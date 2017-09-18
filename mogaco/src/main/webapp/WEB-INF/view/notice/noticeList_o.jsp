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
	
	
<a href="../notice/noticeInsert.do">공지사항 글쓰기</a> <br><br>
	
<c:forEach items="${noticeList}" var="list">
 	${list.id}
 	<a href="../notice/noticeView.do?num=${list.num}">${list.num}</a> 
 	${list.title}
 	${list.contents} 	    
</c:forEach>		
	

</div>
</body>

</html>