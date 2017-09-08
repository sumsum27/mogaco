
$(document).ready(function(){
    $("#category > li").mouseover(function(){
        $(this).css("background-color", "#222222");
    });
    
    $("#category").mouseout(function(){
        $("#category > li").css("background-color", "#343434");
    });
    
    /* 화면전환시 가운데 메인 사진 없애기 > 다른방법 없나 */
    $("#category > li").click(function(){
    	$("#main_slider").css("display","none");
    	$(".submnu").css("display","none");
    	$("#main_frame").css("position","relative");
    });
    

});




/* 안쓰는거 정리하기 */

$(function(){
	var winWidth = $(window).width(); // 창 크기 조절시 GNB 메뉴 on 클래스 초기화 

	$(window).resize(function() { 
		var winWidth = $(this).width(); if(winWidth <= 1024) { 
			$("#category > li").removeClass('on'); 
		} 
	}); 
	
	// GNB 마우스오버 및 클릭 이벤트 
	$("#category > li > span").bind('mouseenter click', function(e) {

		var winWidth = $(window).width(); 
		
		if(e.type === 'mouseenter') { 
			if(winWidth > 1024) { 
				$("#navbg").stop(true,false).fadeIn(300); 
				$("#category > li > ul.submnu").css('display','none'); 
				$(this).siblings('ul.submnu').stop(true,false).fadeIn(300); 
				$("#category > li").removeClass('on'); 
				$(this).parent('li').addClass('on'); 
			} 
			
		} else if(e.type === 'click') { 
			if(winWidth <= 1024) { 
				if($(this).siblings('ul.submnu').length > 0) { 
					e.preventDefault(); 
					if(!$(this).parent('li').hasClass('open')) { 
						$("#category > li").removeClass('open'); 
						$(this).parent('li').addClass('open'); 
						$("#category > li > ul.submnu").stop(true,false).slideUp(300); 
						$(this).siblings('ul.submnu').stop(true,false).slideDown(300); 
					} else { 
						$(this).parent('li').removeClass('open'); 
						$(this).siblings('ul.submnu').stop(true,false).slideUp(300); 
					} 
				} 
			} 
		} 
	}); 
	
			
			
	// GNB 서브메뉴 마우스 오버 이벤트 
	$("#category > li > ul.submnu > li").bind('mouseenter', function(e) { 
		var winWidth = $(window).width(); 
		if(winWidth > 1024) { 
			$("#category > li > ul.submnu > li").removeClass('on'); 
			$(this).addClass('on'); 
		} 
	}); 
	
	// 헤더 마우스 아웃 이벤트
	$("#header").bind('mouseleave', function(e) { 
		var winWidth = $(window).width(); 
		if(winWidth > 1024) {
			$("#navbg").stop(true,false).fadeOut(300); 
			$("#category > li > ul.submnu").stop(true,false).fadeOut(300); 
			$("#category > li").removeClass('on'); 
			$("#category > li > ul.submnu > li").removeClass('on'); 
		} 
	}); 


	// 모바일 메뉴 열기 
	$("#gnbOpen").click(function() { 
		$("#gnbMask").stop(true,false).fadeIn(300); 
		$("#gnbWrap").stop(true,false).animate({left:'0'}, 300, 'easeOutCubic'); 
	}); 
	
	// 모바일 메뉴 닫기
	$("#gnbClose, #gnbMask").click(function() { 
		$("#gnbMask").stop(true,false).fadeOut(300); 
		$("#gnbWrap").stop(true,false).animate({left:'-290px'}, 300, 'easeOutCubic'); 
	}); 
	
	// 버튼 클릭시 화면 상단으로 스크롤
	$("#scrollTop a").click(function(e) { 
		e.preventDefault(); 
		$("html, body").stop(true,false).animate({scrollTop:0}, 400, 'easeOutCubic'); 
	}); 
	
	// 마우스 이벤트 처리 
	$("#scrollTop a").mouseenter(function() { 
		if(!$(this).hasClass('on')) { 
			$(this).addClass('on'); 
		} 
	}).mouseleave(function() { 
		$(this).removeClass('on'); 
	}); 
			
	// 메뉴 활성화 
	function gnbActive() { 
		var majorIndex = $("#container").data('menu') - 1; 
		var minorIndex = $("#container").data('sub') - 1; 
		var majorMenu = $("#gnb > li").eq(majorIndex); 
		var minorMenu = $("#gnb > li").eq(majorIndex).find('ul.submnu > li').eq(minorIndex); 
		majorMenu.addClass('current'); minorMenu.addClass('current'); 
	} 
	
	// 윈도우 스크롤시 스크롤 버튼 보이기/
	$(window).scroll(function() { 
		
		var wTop = $(this).scrollTop(); 
		
		// 스크롤 활성화 처리 함수
		function scrollActive() { 
			if(!$("#header").hasClass('scroll')) { 
				$("#header").addClass('scroll'); 
				$("#scrollTop").stop(true,false).fadeIn(300); 
			}
		} 
		
		// 스크롤 비활성화 처리 함수 
		function scrollInactive() {
			$("#header").removeClass('scroll'); 
			$("#scrollTop").stop(true,false).fadeOut(300); 
		} if(wTop >= 80) { 
			scrollActive(); 
		} else { 
			scrollInactive(); 
		} 
	
	}); 
	
	// 페이지 로드시 메뉴 동기화
	$(window).load(function() {
		gnbActive(); 
	}); 	
	
});