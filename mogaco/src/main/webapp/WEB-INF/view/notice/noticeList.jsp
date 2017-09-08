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

<style>
/* 네비공통 */
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
@import url(//fonts.googleapis.com/earlyaccess/nanumgothiccoding.css);
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

#navi{
	width: 100%;
	height: 50px;
	color : white;
}
#navi_ul{
	float: right;
	margin-right: 200px;
}
.navi_li{
	display:inline;
	text-decoration: none;
	margin-right: 45px;
	font-size: 18px;
	font-family :'Hanna', sans-serif;
}

#logo{
	font-size:40px;
	font-weight: bold;
	margin-right: 300px;
	display:inline;
	text-decoration: none;
	font-family :'Hanna', sans-serif;	
}

/* 네비공통 */
</style>

<body>
<div id="wrap">

<!-- 네비 -->
	<div id="navi">
		<ul id="navi_ul">
			<li id="logo">MOGACO</li>  <!-- 글씨체 바꾸기  -->
			
			<li class="navi_li">
				<a href="../info/info.do">ABOUT US</a>
			</li>
			<li class="navi_li">
				<a href="goal/goal.do">GOAL</a>
			</li>
			<li class="navi_li">
				<a href="meetup/meetup.do">MEEPUP</a>
			</li>
			<li class="navi_li">
				<a href="reveiw/review.do">REVIEW</a>
			</li>
			<li class="navi_li">
				<a href="report/report.do">REPORT</a>
			</li>
			<li class="navi_li">
				<a href="../notice/noticeList.do">NOTICE</a>
			</li>
			
		</ul>
	</div>
	
	
	공지사항 리스트 페이지 입니당 <br>
	
	<a href="../notice/noticeInsert.do">공지사항 인서트1</a>
	
 	<c:forEach items="${noticeList}" var="list">
 	
 	${list.id}
 	${list.num}
 	${list.title}
 	${list.contents}
	 
<%--    	<tr>
   		<td class="pd">${list.reg_date}</td>
   		<td class="pd">${list.sender}</td>
   		<td class="title pd" id="${list.num}" style="color:grey; cursor: pointer; ">${list.title} </td>
   		<td id="date" class="pd">
    		<c:choose>
	    		<c:when test="${list.checked eq null}">
	    			읽지않음
	    		</c:when>
	    		<c:otherwise>
	    			읽음 (${list.checked})
	    		</c:otherwise>
	    	</c:choose>	
   		</td>
   	</tr>  --%>

 </c:forEach>		
	

</div>
</body>

</html>