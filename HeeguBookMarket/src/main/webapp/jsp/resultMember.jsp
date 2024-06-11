<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
rel="stylesheet">
</head>
<body>
<div class="container py-4">
<%@ include file="menu.jsp" %>
<div class="p-5 mb-4 bg-body-tertiary rounded-3">
<div class="container-fluid py-5">
<h1 class="display-5 fw-bold">가입 완료</h1>
<p class="col-md-8 fs-5">회원가입이 정상적으로 처리되었습니다.</p>
</div>
</div>
<jsp:include page="footer.jsp"/>
</div>
</body>
</html>