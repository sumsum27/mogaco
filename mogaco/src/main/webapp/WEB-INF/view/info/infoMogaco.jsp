<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>


<style>

#info_container .location_bar {
    max-width: 1150px;
    padding: 0 0 0 50px;
    height: 60px;
    background: #fff;
}
#info_container .location_bar ul {
    border-bottom: 1px solid #e6e6e6;
}
#info_container .location_bar ul li {
    display: inline-block;
    color: #888;
    font-size: 13px;
    line-height: 60px;
}
#info_container .location_bar ul li.divider {
    margin: 0 5px;
}

#info_container > .inner {
    max-width: 1200px;
    padding-top: 20px;
    padding-left: 45px;
}
#info_container > .inner .title {
    margin-bottom: 40px;
}

#info_container > .inner .title h2 {
    font-size: 35px;
    font-weight: 600;
    color: #333;
    line-height: 1.2;
    margin-bottom: 15px;
    width: 30px;
}
#info_container > .inner p {
    font-size: 12px;
    color: #888;
    line-height: 1.6;
}

#info_img {
	width: 1000px;
}

#info_container > .inner .content{

    font-size: 22px;
    font-weight: 600px;
    color: #444;
    line-height: 1.2;
    margin-bottom: 20px;

}




</style>

<body>
<div id="wrap">

	<div id="info_container">
	
	    <div class="location_bar">
	   	    <ul>
	            <li>Home</li>
	     	    <li class="divider">-</li>
	     		<li>안내</li>
	     		<li class="divider">-</li>
	    		<li class="current" style="color:#222222;" >모각코 알파팀 소개</li>
	    	</ul>
	    </div>	
	    
	    <div class="inner"> 

		    <div class="title">
		    	 <h2>Welcome</h2>
		    	 <p>여자개발자모임의 모각코 알파팀 소개 입니다.<br />
		 		         반갑습니다.</p>
		    </div>
    
    		<div class="contents">
		    	 <h2>안녕하세요. 모각코 알파팀 입니다.</h2>
		    	 <p style="color:#242424;">저희는 여자개발자모임의 모각코 알파팁 입니다.<br />
		 		         매주 토요일 10시에 만나 각자 코딩을 하는 시간을 갖습니다.<br />
		 		        저희와 뜻을 함께할 분들은 언제든 연락 주십시오</p>
		    </div>
		    
		    <div class="info_img" style="margin-top:30px;">
		    	<img id="info_img" alt="" src="common/image/info.jpg">
		    </div>
	    </div>
    
	</div>

	
	

</div>
</body>

</html>