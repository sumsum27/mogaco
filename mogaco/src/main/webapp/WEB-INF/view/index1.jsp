<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>

<head>
	<meta charset="utf-8">
	<title>Welcome</title>
	<%@ include file="/WEB-INF/common/taglib.jsp" %>	
</head> 

<script type="text/javascript">	

	function showLoad(url) {
		$('#frame').load(url, function( response, status){
			if(status == 'error') {
				$('#frame').html(response);
			}
		})
	}
		
</script>	
	
<body>	
<div id="wrap">

	<!-- 좌측카테고리  -->
	<div id="header">
	
	    <!-- 상단 로고 -->
	    <div id=logo>
	    	<img alt="" src="">
	    </div>
	    
	    <!-- 카테고리 -->
	    <div id=category>
	    	
			<div id="info">
			
				<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;"> 안내 </span>
				
				<a href="">관련링크,문의처</a>
			</div>
			
			<div id="before">
				<a href="">이번주 모임안내 </a>
		
			</div>
			
			<div id="after">
				<a href="">모임 후기 </a>
			</div>
			
			<div id="reveiw">
				<a href="">개인 리뷰 </a>
			</div>
			
			<div id="daily">
				<a href="">데일리 목표 </a>
			</div>
		
			<div id="share">
				<a href="">공유행사 </a>
				<a href="">참여후기 </a>
				<a href="">공유자료 </a>
			</div>
			
			<div id="free">
				<a href="">게시판 </a>
			</div>
		
	    </div>
	
	</div>

	<!-- 컨텐츠 -->
	<div id="container">
		<div id="frame"> </div>
	</div>

	<!-- 우측카테고리 -->
	<div id="aside">
	
		<div id="member">
			<a href="member/memberJoin.html">회원가입 </a>
			<a href="">로그인 </a>
			<a href="">로그아웃 </a>
		</div>

	</div>
	
	<!-- 헤더 밑 푸터 -->
	<div id="footer">
	
	</div>
	
	<!-- 상단스크롤 -->
	<div id="scrollTop">
	
	</div>


</div>
</body>
	
<!--  

<c:url value="/showMessage.html" var="messageUrl" />
<a href="${messageUrl}">Click to enter</a>
	
+ 목표공유 추가하기 	
	
1. 모각코안내(Info)
  모각코란 aboutMogaco 
  인원구성 PeopleMogaco > 메세지 & 채팅 
  관련링크 Link Mogaco (페북,까페) 
  문의처 	 ContactMogaco
2. 이번주모임(Meeting this week) > 한페이지 , 지도 
  모임장소 Meeting place
  참석인원 Presence 
  봉사인원,간식메뉴  Service,
  에프터모임 After
3. 모임후기(report) > 한페이지 파일업로드,엑셀인쇄,사진이미지,댓글 
  참석인원,예산
  사진 
  후기글 
4.개인리뷰(review) 
5.날마다(daily) 엑셀화 분석해줌 
6.공유행사, 자료, 기타행사참여후기 
7.Board건의 및 자유게시판

-->
	
</html>
