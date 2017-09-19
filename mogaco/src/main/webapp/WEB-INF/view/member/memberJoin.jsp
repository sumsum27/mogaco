<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>

<head>
   <meta charset="utf-8">
   <title>Insert title here</title>
   <%@ include file="/WEB-INF/common/taglib.jsp" %>
</head>
<script type="text/javascript">

$(document).ready(function(){
  
   $("#join").click(function(){
      $("#frm").submit();
   });
   
});

</script>
<style>
.colorgraph {
    height: 5px;
     border-top: 0;
     background: #c4e17f;
     border-radius: 5px;
     background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
     background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
     background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
     background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}

</style>

<body>

<!-- 상단 네비 -->
<section class="menu cid-quZODD7qhs" once="menu" id="menu1-20" data-rv-view="159">

    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm bg-color transparent">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-2" href="https://mobirise.com">
                        MOGACO</a></span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item">
                    <a class="nav-link link text-white display-4" href="https://mobirise.com">
                        <span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>
                        Services
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-white display-4" href="https://mobirise.com">
                        <span class="mbri-search mbr-iconfont mbr-iconfont-btn"></span>
                        About Us
                    </a>
                </li></ul>
            <div class="navbar-buttons mbr-section-btn">
                <a class="btn btn-sm btn-primary display-4" href="https://mobirise.com">
                    <span class="mbri-save mbr-iconfont mbr-iconfont-btn "></span>
                    Try It Now!
                </a>
            </div>
        </div>
    </nav>
</section>

<section class="engine"><a href="https://mobirise.co/i">build your own website</a></section><section class="mbr-section content5 cid-quZOJE8yVO mbr-parallax-background" id="content5-21" data-rv-view="161">

    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">
                <h2 class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-1">
                    ARTICLE HEADER
                </h2>
                <h3 class="mbr-section-subtitle align-center mbr-light mbr-white pb-3 mbr-fonts-style display-5">
                    Article header with background image and parallax effect
                </h3>
            </div>
        </div>
    </div>
    
</section>


<!-- 회원가입 컨텐츠  -->

<div class="container">

    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3" style="margin:0 auto;">
         
	        <form role="form" id='frm' action='member/memberJoin.do' method="post">
	          
	            <h2>Please Sign Up <small>It's free and always will be.</small></h2>
	            
	            <hr class="colorgraph">
	            
	            <div class="form-group">
	               <input type="text" name="id" id="id" class="form-control input-lg" placeholder="아이디" tabindex="3">
	            </div>
	            
	            <div class="row">
	               <div class="col-xs-6 col-sm-6 col-md-6">
	                  <div class="form-group">
	                      <input type="text" name="name" id="name" class="form-control input-lg" placeholder="이름" tabindex="1">
	                  </div>
	               </div>
	               <div class="col-xs-6 col-sm-6 col-md-6">
	                  <div class="form-group">
	                     <input type="text" name="nickname" id="nickname" class="form-control input-lg" placeholder="닉네임" tabindex="2">
	                  </div>
	               </div>
	            </div>

	            <div class="form-group">
	               <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address" tabindex="4">
	            </div>
	           
	            <div class="row">
	               <div class="col-xs-6 col-sm-6 col-md-6">
	                  <div class="form-group">
	                     <input type="password" name="pw" id="password" class="form-control input-lg" placeholder="password" tabindex="5">
	                  </div>
	               </div>
	               <div class="col-xs-6 col-sm-6 col-md-6">
	                  <div class="form-group">
	                     <input type="password" id="password_confirmation" class="form-control input-lg" placeholder="password 2" tabindex="6">
	                  </div>
	               </div>
	            </div>
	            
	            <input type="hidden" name="phone" id="phone" class="form-control input-lg" tabindex="5" value="null">
	            <input type="hidden" name="intro" id="intro" class="form-control input-lg" tabindex="5" value="null">
	            <input type="hidden" name="pick" id="pick" class="form-control input-lg" tabindex="5" value="null">
	            
	            <hr class="colorgraph">
	           
	            <div class="row">
	               <div class="col-xs-6 col-md-6"><input type="submit" id="join" value="sign up" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
	               <div class="col-xs-6 col-md-6"><a href="#" class="btn btn-success btn-block btn-lg">Sign In</a></div>
	            </div>
	            
	        </form>
        </div>
    </div>
</div>

<section class="cid-quZOQI6B2W" id="footer5-22" data-rv-view="164">

    <div class="container">
        <div class="media-container-row">
            <div class="col-md-3">
                <div class="media-wrap">
                    <a href="https://mobirise.com/">
                       <img src="assets/images/logo-white-249x1683.png" alt="Mobirise" title="" media-simple="true">
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