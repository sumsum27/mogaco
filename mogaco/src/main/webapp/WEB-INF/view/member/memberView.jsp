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

<br>${memberView.group}
<br>${memberView.id}
<br>${memberView.pw}
<br>${memberView.name}
<br>${memberView.nickname}
<br>${memberView.email}
<br>${memberView.phone}
<br>${memberView.intro}
<br>${memberView.pic}
	
<a href="../member/memberUpdate.do?id=${memberView.id}">수정</a>	
<a href="../member/memberDelete.do?id=${memberView.id}">삭제</a>

group, id, pw, name, nickname, email, phone , intro, pic

</div>
</body>

</html>