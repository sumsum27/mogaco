<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/common/taglib.jsp" %>


<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="Mobirise v4.2.4, mobirise.com">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<title>Welcome</title>
</head> 

<body>	

<!-- 상단네비 -->
<section class="menu cid-quNPp2vKjN" once="menu" id="menu1-1" data-rv-view="304">

    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm bg-color transparent">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger"> <!-- 모바일크기 -->
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
                    <a class="nav-link link text-white display-4" href="info/info.do">
                       <!--  <span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span> -->
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
                    <a class="nav-link link text-white display-4" href="notice/noticeList.do">
                       
                        NOTICE
                    </a>
                </li>   
                <li class="nav-item" style="margin:0 10px;">
                    <a class="nav-link link text-white display-4" href="qna/qnaList.do">
                       
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


<section class="engine"><a href="http://localhost:8082/mogaco/">web maker</a></section>

<!-- 메인슬라이드 -->
<section class="carousel slide cid-quNQmxeajg" data-interval="false" id="slider1-4" data-rv-view="306">
   <div class="full-screen">
       <div class="mbr-slider slide carousel" data-pause="true" data-keyboard="false" data-ride="carousel" data-interval="4000">
          
          
          <div class="carousel-inner" role="listbox">
           	   <div class="carousel-item slider-fullscreen-image" data-bg-video-slide="false" style="background-image: url(assets/images/maincate-image4-1440x1080.jpg);">
           	       <div class="container container-slide">
           	           <div class="image_wrapper">
           	               <div class="mbr-overlay"></div>
           	               <img src="assets/images/maincate-image4-1440x1080.jpg">
           	               <div class="carousel-caption justify-content-center">
	           	               <div class="col-10 align-left">
	           	                   <h2 class="mbr-fonts-style display-1">MOGACO</h2>
	           	                   <p class="lead mbr-text mbr-fonts-style display-5">Slide with youtube video background and color overlay. Title and text are aligned to the left.</p>
	           	               </div>
           	           	   </div>
           	           </div>
           	       </div>
               </div>
	           <div class="carousel-item slider-fullscreen-image" data-bg-video-slide="false" style="background-image: url(assets/images/maincate-image3-960x720.jpg);">
	               <div class="container container-slide">
	                   <div class="image_wrapper">
	                       <div class="mbr-overlay"></div>
	                       <img src="assets/images/maincate-image3-960x720.jpg">
	                       <div class="carousel-caption justify-content-center">
	                           <div class="col-10 align-center">
	                               <h2 class="mbr-fonts-style display-1">MOGACO</h2>
	                               <p class="lead mbr-text mbr-fonts-style display-5">Slide with youtube video background and color overlay. Title and text are aligned to the left.</p>
	                           </div>
	                       </div>
	                   </div>
	               </div>
	           </div>
	           <div class="carousel-item slider-fullscreen-image active" data-bg-video-slide="false" style="background-image: url(assets/images/maincate-image1-650x488.jpg);">
	               <div class="container container-slide">
	                   <div class="image_wrapper">
	                       <div class="mbr-overlay"></div>
	                       <img src="assets/images/maincate-image1-650x488.jpg">
	                       <div class="carousel-caption justify-content-center">
	                           <div class="col-10 align-right">
	                               <h2 class="mbr-fonts-style display-1">MOGACO</h2>
	                               <p class="lead mbr-text mbr-fonts-style display-5">Choose from the large selection of latest pre-made blocks - jumbotrons, hero images, parallax scrolling, video backgrounds, hamburger menu, sticky header and more.</p>
	                           </div>
	                       </div>
	                   </div>
	               </div>
	           </div>
           </div>       
	       <a data-app-prevent-settings="" class="carousel-control carousel-control-prev" role="button" data-slide="prev" href="#slider1-4">
	           <span aria-hidden="true" class="mbri-left mbr-iconfont"></span>
	           <span class="sr-only">Previous</span>
	       </a>
	       <a data-app-prevent-settings="" class="carousel-control carousel-control-next" role="button" data-slide="next" href="#slider1-4">
	           <span aria-hidden="true" class="mbri-right mbr-iconfont"></span>
	           <span class="sr-only">Next</span>
	       </a>
       
       
   	    </div>
    </div>
</section>

<!-- 컨텐츠1 -->
<section class="mbr-section article content12 cid-quNQXnJFvI" id="content12-7" data-rv-view="318">
    <div class="container">
        <div class="media-container-row">
            <div class="mbr-text counter-container col-12 col-md-8 mbr-fonts-style display-7">
                <ul>
                    <li><strong>MOBILE FRIENDLY</strong> - o special actions required, all sites you make with Mobirise are mobile-friendly. You don't have to create a special mobile version of your site, it will adapt automagically. <a href="https://mobirise.com/">Try it now!</a></li>
                    <li><strong>EASY AND SIMPLE</strong> - cut down the development time with drag-and-drop website builder. Drop the blocks into the page, edit content inline and publish - no technical skills required. <a href="https://mobirise.com/">Try it now!</a></li>
                    <li><strong>UNIQUE STYLES</strong> - choose from the large selection of latest pre-made blocks - full-screen intro, bootstrap carousel, content slider, responsive image gallery with lightbox, parallax scrolling, video backgrounds, hamburger menu, sticky header and more. <a href="https://mobirise.com/">Try it now!</a></li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- 컨텐츠2 -->
<section class="features3 cid-quNR47jI68" id="features17-8" data-rv-view="319">
    
    <div class="container-fluid">
        <div class="media-container-row">
            <div class="card p-3 col-12 col-md-6 col-lg-3">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/header-1334x750.png" alt="Mobirise" title="" media-simple="true">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">
                            No Coding
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            Mobirise is an easy website builder - just drop site elements to your page, add content and style it to look the way you like.
                        </p>
                    </div>
                </div>
            </div>

            <div class="card p-3 col-12 col-md-6 col-lg-3">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/maincate-image1-1-650x488.jpg" alt="Mobirise" title="" media-simple="true">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">
                            Mobile Friendly
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            All sites you make with Mobirise are mobile-friendly. You don't have to create a special mobile version of your site.
                        </p>
                    </div>
                </div>
            </div>

            <div class="card p-3 col-12 col-md-6 col-lg-3">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/03.jpg" alt="Mobirise" media-simple="true">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">
                            Unique Styles
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                            Mobirise offers many site blocks in several themes, and though these blocks are pre-made, they are flexible.
                        </p>
                    </div>
                </div>
            </div>

            <div class="card p-3 col-12 col-md-6 col-lg-3">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="assets/images/04.jpg" alt="Mobirise" media-simple="true">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">
                            Unlimited Sites
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                           Mobirise gives you the freedom to develop as many websites as you like given the fact that it is a desktop app.
                        </p>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    
</section>

<!-- 푸터  -->
<section class="cid-quNRNX9zit" id="footer5-9" data-rv-view="322">

    <div class="container">
        <div class="media-container-row">
            <div class="col-md-3">
                <div class="media-wrap">
                    <a href="https://mobirise.com/">
                       <img src="assets/images/logo-white-249x168.png" alt="Mobirise" title="" media-simple="true">
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

</body>
	

</html>
