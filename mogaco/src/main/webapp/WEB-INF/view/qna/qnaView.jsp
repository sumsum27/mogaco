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

<br>${qnaView.num}
<br>${qnaView.id}
<br>${qnaView.title}
<br>${qnaView.contents}
<br>${qnaView.date}
<br>${qnaView.picture}
	
<a href="../qna/qnaUpdate.do?num=${qnaView.num}">수정</a>	
<a href="../qna/qnaDelete.do?num=${qnaView.num}">삭제</a>

</body>

</html>