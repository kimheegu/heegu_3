<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>페이지 오류</title>
</head>
<body>
<div class="container py-4">
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
<div class="container text-center">
<img src="../images/notfound.jpg" class="img-thumbnail" style="width:70%">
<h2 class="mt-3">요청하신 페이지를 찾을 수 없습니다.</h2>
</div>
</div>
<div class="container text-center">
<p><a href="Shoes.jsp" class="btn btn-secondary">신발 목록</a></p>
</div>
<jsp:include page="footer.jsp"/>
</div>
</body>
</html>