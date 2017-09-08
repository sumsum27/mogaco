<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/common/taglib.jsp" %>


<html>

<head>
	<meta charset="utf-8">
	<title>Welcome</title>
</head> 

<style>
/* 네비공통 ***/
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
	/* font-family: 'Nanum Gothic' , sans-serif !important; */
	/* font-family: 'Nanum Gothic Coding', monospace; */
}

#logo{
	font-size:40px;
	font-weight: bold;
	margin-right: 300px;
	display:inline;
	text-decoration: none;
	font-family :'Hanna', sans-serif;	
}

/* 네비공통 ***/

#slider{
	width: 100%;
	position: absolute;
	top:0px;
	left: 0px;
}
#slider_image1{
	position: absolute;
    left: 0px;
    top: 0px;
	z-index: -1;
	width: 100%;
}

#mainUp{
	width:1200px;
	position: absolute;
	margin-top:930px;
}

#mainUp_title{
	margin-left :150px;
	font-family: 'Nanum Gothic' , sans-serif !important;
}
#mainCete{
	left:0px;
	right:0px;
	margin-top:1200px;
}
.mainCate_image{
	left:0px;
	right:0px;
	float:left;
	width: 375px;
	height: 360px;
}
</style>

<body>	
<div id="wrap">

 	<!-- 네비 -->
	<div id="navi">
		<ul id="navi_ul">
			<li id="logo">MOGACO</li>  <!-- 글씨체 바꾸기  --> <!-- 클릭효과 없애기 -->
			
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
				<a href="notice/noticeList.do">NOTICE</a>  <!-- http://localhost:8082/mogaco/notice/noticeList.do -->
			</li>
			
		</ul>
	</div>
	
	<!-- 슬라이더  -->
    <div id="slider">
		<img id="slider_image1" alt="" src="common/image/main1.PNG" > 
    </div>
    
    <!-- 메인  -->
	<div id="mainUp">
		<div id="mainUp_title">
			<div style="font-size:50px; line-height: 90px;">OUR ACTIVITIES</div>
			<div style="font-size:30px;">모각코 회원님들의 다양한 활동들</div>
		</div>
		<img style="width:1500px;" id="mainUp_image" alt="" src="common/image/mainUp.PNG" > 
	</div>
	
	<div id="mainCete"> <!-- 양쪽 여백 제거하기 -->
		 <div style="display:block;">
		 	<img class="mainCate_image" alt="" src="common/image/mainCate_image1.jpg">
		 </div>
		 <div style="display:block;">
		 	<img class="mainCate_image" alt="" src="common/image/mainCate_image2.jpg">
		 </div>
		 <div style="display:block;">
		 	<img class="mainCate_image" alt="" src="common/image/mainCate_image3.jpg">
		 </div>
		 <div style="display:block;">
		 	<img class="mainCate_image" alt="" src="common/image/mainCate_image4.jpg">
		 </div>
	</div>
	<!-- 메인  -->
	
	<!-- 푸터 -->
	<div style="margin-top:1500px;">
		 <br><br><br><br><br><br><br><br><br><br>
	</div>
	<!-- 푸터 -->
</div>
</body>
	

</html>
