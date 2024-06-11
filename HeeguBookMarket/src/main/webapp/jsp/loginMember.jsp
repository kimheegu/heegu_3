<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
rel="stylesheet">
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<div class="container py-4">
<%@ include file = "menu.jsp" %>

<div class="p-5 mb-4 bg-body-tertiary rounded-3">
<div class="container-fluid py-5">
<h1 class="display-5 fw-bold">로그인</h1>
<p class="col-md-8 fs-4">Login</p>
</div>
</div>
<div class="row align-items-md-stretch text-center">
<div class="row justify-content-center align-items-center">
<div class="h-100 p-5 col-md-6">
<h3>Please sign in</h3>
<form class="forn-signin" action="loginMember_process.jsp" method="post">
<div class="form-floating mb-3 row">
<input type="text" class="form-control" name="Id" required autofocus>
<label for="floatingInput">ID</label>
</div>
<div class="form-floating mb-3 row">
<input type="password" class="form-control" name="Pwd">
<label for="floatingInput">Password</label>
</div>
<button class="btn btn-lg btn-success" type="submit">로그인</button>
</form>
</div>
</div>
</div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>