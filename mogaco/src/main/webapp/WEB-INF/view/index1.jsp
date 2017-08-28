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
	    	<a href="/mogaco/">
	    		<img src="common/image/logo.png" alt="Logo">
	    	</a>
	    </div>
	    
	    <!-- 상단 링크 -->
	    
	    <ul class="topLink">
	    	<li>
				<a href="">메일보내기</a>	    	
	    	</li>
	     	<li>
				<a href="">1:1문의</a>	    	
	    	</li>
	    </ul>
	    
	    <!-- 카테고리 -->
	    <ul id="category">
	    
	    	<li id="info">
	    		<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">모각코 알파팀 소개 </span>
				
				<ul class="submnu" style="opacity: 0.396789; display: none;">
					<li class="current">
						<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">안내 </span>
					</li>
					<li>
						<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">관련링크, 문의처 </span>
					</li>
				</ul>
				
	    	</li>
	    
	    	<li id="before">
	    		<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">이번주 모임 안내 </span>
			</li>
	    	
	    	<li id="after">
	    		<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">모임 후기 </span>
			</li>	    	
	    	

	    	<li id="reveiw">
	    		<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">개인 리뷰 </span>
				
				<ul class="submnu" style="opacity: 0.396789; display: none;">
					<li>
						<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">개인리뷰 </span>
					</li>
					<li>
						<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">목표 </span>
					</li>
				</ul>	
	    	</li>
	    	
	    	<li id="daily">
	    		<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">데일리</span>
				
				<ul class="submnu" style="opacity: 0.396789; display: none;">
					<li>
						<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">안내 </span>
					</li>
					<li>
						<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">관련링크, 문의처 </span>
					</li>
				</ul>	
	    	</li>	
	    	
	        <li id="share">
	    		<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">공유 행사 </span>
				
				<ul class="submnu" style="opacity: 0.396789; display: none;">
					<li>
						<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">공유행사 </span>
					</li>
					<li>
						<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">참여후기 </span>
					</li>
					<li>
						<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">공유자료 </span>
					</li>
				</ul> 	
	    	</li>	
	    	
	    	<li id="free">
	    		<span onClick="javascript:showLoad('<c:url value="info/infoMogaco.do" />');" style="cursor: pointer; cursor: hand;">게시판 </span>
	    	</li>	    	
	    		   		    
	    </ul>
	    
	    <div id="copyright">
	    	<img src="common/image/copyright.png" alt="Logo">
	    </div>
	
		<div id="navbg" style="display: none; opacity: 0.7;"></div>
	</div>

	<!-- 컨텐츠 -->
	<div id="container">
		<img id="team" alt="" src="common/image/team.jpg" style="width:1200px;"> 
		<div id="frame"> </div>
	</div>


	
	<!-- 우측카테고리 -->
	<div id="aside">		
		<div class="item color1" onClick="javascript:showLoad('<c:url value="member/memberJoin.do" />');" style="cursor: pointer; cursor: hand;" >
		</div>
		
		<div class="item color2">
			<a href="">회원가입 </a>
		</div>
		<div class="item color3">
			<a href="">회원가입 </a>
		</div>
		<div class="item color4">
			<a href="">회원가입 </a>
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
