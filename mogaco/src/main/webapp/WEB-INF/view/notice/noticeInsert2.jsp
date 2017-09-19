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
	$("#join").click(function(){
		alert("jquery");
		$("#frm").submit();
	});
});
</script>


<body>

<div id="wrap">
	
<!-- 인서트 폼 -->
	<div>
		<form action="notice/noticeInsert.do" method="post" id="frm">
			<select>
				<option>말머리</option>
				<option>행사</option>
				<option>안내</option>
				<option>행사</option>
			</select>
			
			<input type="text" name="num" value="" placeholder="num">
			<input type="text" name="date" value="" placeholder="date">
			<input type="text" name="picture" value="" placeholder="picture">
			<input type="text" name="id" value="" placeholder="id">
			
			<input type="text" name="title" value="" placeholder="제목">
			<textarea rows="" cols="" name="contents"> 베베베	</textarea>	
		
			<input type="button" id="join" value="적근">
		</form>
	
	</div>	
	

</div>
</body>

</html>