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

<script type="text/javascript">

$(document).ready(function(){
	
	$("#update").click(function(){
		$("#frm").submit();
	});
	
});

</script>

<body>
<div id="wrap">

	
	<div>
		<form action="../member/memberUpdate.do" method="post" id="frm">			
			<input type="text" name="id" value="${memberView.id}" placeholder="id">
			<input type="text" name="gender" value="${memberView.gender}" placeholder="gender">
			<input type="text" name="name" value="${memberView.name}" placeholder="name">
			<input type="text" name="email" value="${memberView.email}" placeholder="email">
			<input type="text" name="address" value="${memberView.address}" placeholder="address">
			<input type="button" id="update" value="수정">
		</form>
	
	</div>	
	

</div>
</body>

</html>