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
		$('#main_frame').load(url, function( response, status){
			if(status == 'error') {
				$('#main_frame').html(response);
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
	    <ul id="category" class="nanum">
	    
	    	<li id="info">
	    		<span onClick="javascript:showLoad('<c:url value="info/info.do"/>');" style="cursor: pointer; cursor: hand;">모각코 알파팀 소개 </span>
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
	<!-- 좌측카테고리 -->


	<!-- 메인 슬라이드 -->
    <div id="main_slider">
		<img id="main_image" alt="" src="common/image/mainImage.jpg" style="width:1320px;"> 
    </div>
	<!-- 메인 슬라이드 -->
	
	
	<!-- 중앙 프레임 -->
	<div id="main_frame"></div>
	<!-- 중앙 컨텐츠 -->










</div>
</body>
	

</html>
