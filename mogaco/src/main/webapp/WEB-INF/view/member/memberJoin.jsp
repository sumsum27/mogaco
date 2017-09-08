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

		$("#com_formmail").submit();
	});
	
});

</script>
<style>

.inquiry table img {display:inline-block !important; width:auto !important}
.formmail_txt {color:#666}
.formmail_border {width:90%; height:30px; color:#666;  border:none}
input[name^=phone], input[name^=mobile] {width:70px}
.formmail_title_bgcolor {background:#eeeeee;}
.formmail_cell_bgcolor {background:#fff}
.formmail_textarea_style {width:88%; padding-left:10px; color:#666; border:none}
.tbl_contact { margin-bottom:30px}
.tbl_contact .contact_line {height:3px; background:#555}
.tbl_contact tbody tr td {padding:10px 15px; border-bottom:1px solid #dedede}
.tbl_contact tbody tr td.no-padding {padding:0 !important; border-bottom:none !important}
@media screen and (max-width:640px) {
 .tbl_contact tbody tr td {padding:10px !important}
 .tbl_contact tbody tr td, .tbl_contact tbody tr td font, .tbl_contact tbody tr td span {font-size:12px !important}
 .tbl_contact input, .tbl_contact textarea {font-size:12px !important}
}

</style>

<body>
<div id="wrap">

	<div id="main_container">
	
	    <div class="location_bar">
	   	    <ul>
	            <li>Home</li>
	     	    <li class="divider">-</li>
	     		<li>JOIN</li>
	     		<li class="divider">-</li>
	    		<li class="current" style="color:#222222;" >Member Join</li>
	    	</ul>
	    </div>	
	    
	    <div class="inner"> 

		    <div class="title1">
		    	 <h2>Welcome</h2>
		    	 <p>반갑습니다<br />
		 		         회원이 되시면 더 다양한 혜택을 누릴 수 있습니다</p>
		    </div>
    
    		<div class="title2">
		    	 <h2>안녕하세요. 모각코 알파팀 입니다.</h2>
		    	 <p style="color:#242424;">저희는 여자개발자모임의 모각코 알파팁 입니다.<br />
		 		         매주 토요일 10시에 만나 각자 코딩을 하는 시간을 갖습니다.<br />
		 		        저희와 뜻을 함께할 분들은 언제든 연락 주십시오.호호호호홍 홍홍</p>
		    </div>
		    
		    <!-- 가입 폼 -->
		    <div style="margin-top:30px;">
				<form id='com_formmail' name='com_formmail' method="post" action='member/memberJoin.do' >
					<table border='0' cellspacing='0' cellpadding='0' width='100%' bgcolor='#f2f2f2' >
					    <tr style="background-color:#fafafa;">
							<td>
								 <table cellpadding="0" cellspacing="0" class="tbl_contact">
				 				    <tr>
				   				        <td colspan="2" class="no-padding">
				     					       <div class="contact_line"></div>
				   						</td>
				  					</tr>
				  		            <tr height='30'>
				      					<td width='20%' align='center' class='formmail_title_bgcolor'>
											<font style='color:#000000;font-size:13px;'>성 함</font>
										</td>
										<td width='80%' style='padding-left:10' class='formmail_cell_bgcolor'>
											<input type='text' class='formmail_border' name='id' maxlength='100' size='50' value="">
												&nbsp;&nbsp;
										</td>
									</tr>
									<tr height='30'>
										<td width='20%' align='center' class='formmail_title_bgcolor'>
											<font style='color:#000000;font-size:13px;'>연락처</font>
										</td>
										<td width='80%' style='padding-left:10' class='formmail_cell_bgcolor'>
											<input type='text' class='formmail_border' name='pw' size='4' maxlength='5' value="" style='width:10%'> - <input type='text' class='formmail_border' name='name' size='5' maxlength='5' value="" style='width:10%'> - <input type='text' class='formmail_border' size='5' maxlength='5' value="" style='width:10%'> 
										</td>
									</tr>
									<tr height='30'>
										<td width='20%' align='center' class='formmail_title_bgcolor'>
											<font style='color:#000000;font-size:13px;'>이메일</font>
										</td>
										<td width='80%' style='padding-left:10' class='formmail_cell_bgcolor'>
											<input type='text' class='formmail_border' name='email' size='70' value=""><br>
										 </td>
									</tr>
									<tr height='30'>
										<td width='20%' align='center' class='formmail_title_bgcolor'>
											<font style='color:#000000;font-size:13px;'>생년월일</font>
										</td>
										<td width='80%' style='padding-left:10' class='formmail_cell_bgcolor'>
											<input type='text' class='formmail_border' name='address' maxlength='100' size='70' value=''>
												&nbsp;&nbsp;
										</td>
									</tr>
							        <tr height='30'>
										<td width='20%' align='center' class='formmail_title_bgcolor'>
											<font style='color:#000000;font-size:13px;'>자기소개</font>
										</td>
										<td width='80%' style='padding-left:10' class='formmail_cell_bgcolor'>
											<textarea class='formmail_textarea_style' cols='52' name='gender' style='height:300px;'></textarea><br>
										</td>
									</tr> 
									<tr>
				   				        <td colspan="2" class="no-padding">
				     					       <div class="contact_line"></div>
				   						</td>
				  					</tr>
									
								</table>
								
							    <div align='center'>
							    	 <input type="button" name="join" id="join" value="회원가입">
							    	 <button>취소</button>
							         <!-- <a href="#none;" onclick="com_formmail_formCheck(); return false;"><img src='/cimg/ecshop/confirm.gif' border='0' vspace='7'></a>
							         <a href='javascript: document.com_formmail.reset();'><img src='/cimg/ecshop/cancel.gif' vspace='7' border='0'></a> -->
							    </div>
								     
								     
							</td>
						</tr>
				    </table>
				</form>
			    
	    
		    </div>
	    </div> <!-- inner -->
	</div> <!-- main_container -->
</div> <!-- wrap -->

</body>

</html>