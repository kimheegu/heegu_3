<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
	String name = (String) request.getAttribute("name");
	
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/style.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkForm() {
		if (!document.newWrite.name.value) {
			alert("성명을 입력하세요.");
			return false;
		}
		if (!document.newWrite.subject.value) {
			alert("제목을 입력하세요.");
			return false;
		}
		if (!document.newWrite.content.value) {
			alert("내용을 입력하세요.");
			return false;
		}	
	}
		 function goBack() {
	            window.history.back();
	        }
	
</script>
<body>
<div class="container py-4">
    <%@ include file="../jsp/menu.jsp"%>  
    <div class="p-5 mb-4 bg-body-tertiary rounded-3">
        <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">게시판</h1>
            <p class="col-md-8 fs-4">Board</p>      
        </div>
    </div>

    <div class="row align-items-md-stretch text-center">     

        <form name="newWrite" action="./BoardWriteAction.do" method="post" onsubmit="return checkForm()">
            <input name="id" type="hidden" class="form-control" value="<%=sessionId%>">
            <div class="mb-3 row">
                <label class="col-sm-2 control-label">성명</label>
                <div class="col-sm-3">
                    <input name="name" type="text" class="form-control" value="<%=name %>" placeholder="name">
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 control-label">제목</label>
                <div class="col-sm-5">
                    <input name="subject" type="text" class="form-control" placeholder="subject">
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2 control-label">내용</label>
                <div class="col-sm-8">
                    <textarea name="content" cols="50" rows="5" class="form-control" placeholder="content"></textarea>
                </div>
            </div>
            <div class="mb-3 row">
                <div class="col-sm-offset-2 col-sm-10 d-flex justify-content-end">
                    <input type="submit" class="btn btn-primary me-1" value="등록">
                    <input type="reset" class="btn btn-primary me-1" value="초기화">
                    <button type="button" class="btn btn-secondary" onclick="goBack()">이전페이지로</button>
                </div>
            </div>
        </form>
    </div>
    <%@ include file="../jsp/footer.jsp"%> 
</div>
</body>
</html>