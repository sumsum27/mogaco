<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>

<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>

<style>
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

#infoTitle{
	width: 100%;
	position: absolute;
	top:0px;
	left: 0px;
}
#infoTitle_image{
	position: absolute;
    left: 0px;
    top: 0px;
	z-index: -1;
	width: 100%;
}
#infoDay{
	margin-top: 800px;
}
</style>

<body>
<div id="wrap">
 	<!-- 네비 -->
	<div id="navi">
		<ul id="navi_ul">
			<li id="logo">MOGACO</li>  <!-- 글씨체 바꾸기  -->
			
			<li class="navi_li">
				<a href="info/info.do">ABOUT US</a>
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
				<a href="notice/notice.do">NOTICE</a>
			</li>
			
		</ul>
	</div>
 	
    <div id="infoTitle">
		<img id="infoTitle_image" alt="" src="../common/image/infoImage3.PNG" > 
    </div>
 	
 	<!-- 모임 일정 -->
	<div id="infoDay">
		<div id="infoDay_title">
			<div style="font-size:50px; line-height: 90px;">DAY</div>
			<div style="font-size:30px;">모각코는 이렇게 진행 됩니다</div>
		</div>
	</div>
	
	<!-- 몇시몇분 -->
	<div>
		
	</div>
 	
 	<!-- 연락주세요 -->
	<div>
		
	</div>

	
	

</div>
</body>

</html>