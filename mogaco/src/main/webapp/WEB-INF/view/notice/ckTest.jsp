<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/common/taglib.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<script>
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

<body>

		<!-- ck에디터 -->
       <form class="form-horizontal" role="form" id="editorForm" method="post" action="/">
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
					

</body>
</html>