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

.style select {
 width: 150px;
    height: 30px;
    padding-left: 5px;
    font-size: 15px;
    color:#ddd;
    border: 1px solid red;
    border-radius: 3px;
 }

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