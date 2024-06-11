<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신발 모델번호 오류</title>
</head>
<body>
<div class="container py-4">
<%@ include file="menu.jsp" %>
<h1 class="text-center">해당 신발 모델이 존재하지 않습니다.</h1>
<img src="../images/shoes.PNG" class="img-thumbnail img-fluid mx-auto d-block" style="width:60%">
<div class="row align-items-md-stretch">
<div class="col-md-12">
<div class="h-100 p-5 text-center">
<p><a href="Shoes.jsp" class="btn btn-secondary">신발 목록</a></p>
</div>
</div>
<%@ include file = "footer.jsp" %>
</div>
</div>
</body>
</html>