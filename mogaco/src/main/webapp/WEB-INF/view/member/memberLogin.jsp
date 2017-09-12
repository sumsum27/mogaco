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
	
	$("#login").click(function(){
		$("#frm").submit();
	});
	
});

</script>

<body>
	
	회원로그인 
	<div>
		<form action="../member/memberLogin.do" method="post" id="frm">
			<input type="text" name="id" value="" placeholder="id">
			<input type="text" name="pw" value="" placeholder="pw">
			<input type="button" id="login" value="로그인">
		</form>
	</div>	

	<br>
	<a href="../member/memberJoin.do">회원가입</a>
	
</body>

</html>