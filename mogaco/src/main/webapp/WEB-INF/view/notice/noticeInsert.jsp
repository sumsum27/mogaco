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

	/* 기존 폼 넘기기 */
	$("#write").click(function(){
		alert("jquery");
		$("#frm").submit();
	});
	
	
});

/* ck 에디터로 넘기기 */ 
$(function(){
    
    CKEDITOR.replace( 'ckeditor', {//해당 이름으로 된 textarea에 에디터를 적용
        width:'100%',
        height:'400px',
        filebrowserImageUploadUrl: 'notice/community/imageUpload' //여기 경로로 파일을 전달하여 업로드 시킨다.
    });
     
     
    CKEDITOR.on('dialogDefinition', function( ev ){
        var dialogName = ev.data.name;
        var dialogDefinition = ev.data.definition;
      
        switch (dialogName) {
            case 'image': //Image Properties dialog
                //dialogDefinition.removeContents('info');
                dialogDefinition.removeContents('Link');
                dialogDefinition.removeContents('advanced');
                break;
        }
    });
     
});

</script>




<style>
.view-btn {
    display: inline-block;
    width: 175px;
    border-radius: 15px;
    border: solid 1px #1c5192;
    font-size: 16px;
    font-weight: 400;
    text-align: center;
    color: #1c5192;
    padding: 8px 0;
    margin-top: 10px;
}

.view-btn:hover {
    color: #fff;
    background-color: #1c5192;
}
</style>

<body>
<div id="wrap">

<!-- 상단네비 -->
<section class="menu cid-quNPp2vKjN" once="menu" id="menu1-1" data-rv-view="304">
    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm bg-color transparent">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span>이 메뉴는 뭐지??</span>
                <span>이 메뉴는 뭐지??</span>
                <span>이 메뉴는 뭐지??</span>
                <span>이 메뉴는 뭐지??</span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-caption-wrap">
                   <a class="navbar-caption text-white display-2" href="/mogaco/">MOGACO</a>
                </span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
            
            	<li class="nav-item" style="margin-left:10px;">
                    <a class="nav-link link text-white display-4" href="info/info.do"> <!--  <span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span> -->
                    
                        ABOUT US
                    </a>
                </li>
                <li class="nav-item" style="margin-left:10px;">
                    <a class="nav-link link text-white display-4" href="goal/goal.do">
                        
                        GOAL
                    </a>
                </li>
                <li class="nav-item" style="margin-left:10px;">
                    <a class="nav-link link text-white display-4" href="meetup/meetup.do">
                       
                        MEETUP
                    </a>
                </li>                
                <li class="nav-item" style="margin-left:10px;">
                    <a class="nav-link link text-white display-4" href="reveiw/review.do">
                        
                        REVIEW
                    </a>
                </li>                
                <li class="nav-item" style="margin-left:10px;">
                    <a class="nav-link link text-white display-4" href="report/report.do">
                        
                        REPORT
                    </a>
                </li>                
                <li class="nav-item" style="margin-left:10px;">
                    <a class="nav-link link text-white display-4" href="../notice/noticeList.do">
                       
                        NOTICE
                    </a>
                </li>   
                <li class="nav-item" style="margin:0 10px;">
                    <a class="nav-link link text-white display-4" href="../qna/qnaList.do">
                       
                        BOARD
                    </a>
                </li>                            
                
            </ul>
            <div class="navbar-buttons mbr-section-btn">
                <a class="btn btn-sm btn-primary display-4" href="member/memberLogin.do">
                    <!-- <span class="mbri-save mbr-iconfont mbr-iconfont-btn "></span> -->
                    LOGIN
                </a>
            </div>
        </div>
    </nav>
</section>
   
      
<section class="engine"><a href="https://mobirise.co/i">build your own website</a></section>

<section class="mbr-section content5 cid-quZOJE8yVO mbr-parallax-background" id="content5-21" data-rv-view="161">
    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">
                <h2 class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-1">
                    	NEWS & INFO
                </h2>
                <h3 class="mbr-section-subtitle align-center mbr-light mbr-white pb-3 mbr-fonts-style display-5">
                    Article header with background image and parallax effect
                </h3>
            </div>
        </div>
    </div>
</section>


<!-- Page Content -->
<div class="container" style="max-width: 1050px; margin-top:100px;">


    <!-- Project One -->
    <div class="row" style="margin: 0 auto;">
        
        <div class="col-md-5" style="min-width:900px;">
        
        	<!-- <form action="notice/noticeInsert.do" method="post" id="frm">  -->
	            <h2><input type="text" name="title" value="" placeholder="제목" style="min-width:900px;"></h2>
	            <hr style="margin-top:10px; margin-bottom:17px;">
	            <br>
	            <div id="noticeView_contents" style="min-height:400px;">
		           <textarea rows="" cols="" name="contents"> 베베베	</textarea>	  
		           
		           <!-- 임시 -->
		           <input type="text" name="num" value="" placeholder="num">
				   <input type="text" name="date" value="" placeholder="date">
				   <input type="text" name="picture" value="" placeholder="picture">
				   <input type="text" name="id" value="" placeholder="id">
			       
			       <!-- ck에디터 -->
			       <form class="form-horizontal" role="form" id="editorForm" method="post" action="notice/community/imageUpload.do">
					    <div class="form-group">
					        <div class="form-group">
					            <div class="col-lg-12">
					                <textarea name="ckeditor" id="ckeditor"></textarea>
					            </div>
					        </div>
					        <div class="form-group">
					            <div class="col-lg-12" align="right">
					                <button type="submit" class="btn btn-default">저장</button>
					            </div>
					        </div>
					    </div>
					</form>


	            </div>
				<input type="button" id="write" value="등록">
				<input type="button" id="join" value="목록으로"> <!-- 링크넣기 -->
			<!-- </form> -->
        </div>
        
        
    </div>
    <!-- /.row -->


	
    <!-- Pagination -->
    <ul class="pagination justify-content-center">
        <li class="page-item">
        	<a class="page-link" href="#" aria-label="Previous">
          		<span aria-hidden="true">&laquo;</span>
          		<span class="sr-only">Previous</span>
        	</a>
        </li>
        <li class="page-item">
        	<a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
       		<a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
        	<a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
        	<a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
        	</a>
        </li>
    </ul>

</div>
<!-- /.container -->










<section class="cid-quZOQI6B2W" id="footer5-22" data-rv-view="164">
    <div class="container">
        <div class="media-container-row">
            <div class="col-md-3">
                <div class="media-wrap">
                    <a href="https://mobirise.com/">
                       <img src="${pageContext.request.contextPath}/assets/images/logo-white-249x1683.png" alt="Mobirise" title="" media-simple="true">
                    </a>
                </div>
            </div>
            <div class="col-md-9">
                <p class="mbr-text align-right links mbr-fonts-style display-7">
                    <a href="#" class="text-black">ABOUT</a> &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#" class="text-black">TERMS</a> &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#" class="text-black">CAREERS</a> &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#" class="text-black">CONTACT</a>
                </p>
            </div>
        </div>
        <div class="footer-lower">
            <div class="media-container-row">
                <div class="col-md-12">
                    <hr>
                </div>
            </div>
            <div class="media-container-row mbr-white">
                <div class="col-md-6 copyright">
                    <p class="mbr-text mbr-fonts-style display-7">
                        © Copyright 2017 Mobirise - All Rights Reserved
                    </p>
                </div>
                <div class="col-md-6">
                    <div class="social-list align-right">
                        <div class="soc-item">
                            <a href="https://twitter.com/mobirise" target="_blank">
                                <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.facebook.com/pages/Mobirise/1616226671953247" target="_blank">
                                <span class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.youtube.com/c/mobirise" target="_blank">
                                <span class="socicon-youtube socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://instagram.com/mobirise" target="_blank">
                                <span class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://plus.google.com/u/0/+Mobirise" target="_blank">
                                <span class="socicon-googleplus socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.behance.net/Mobirise" target="_blank">
                                <span class="socicon-behance socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
   
   
   

</div>
</body>

</html>