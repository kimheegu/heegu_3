<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Shoes" %>
<%@ page import="dao.ShoesRepository" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
<%
String cartId = session.getId();
%>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
<div class="container py-4">
<%@ include file = "menu.jsp" %>

<div class="p-5 mb-4 bg-body-tertiary rounded-3">
<div class="container-fluid py-5">
<h1 class="display-5 fw-bold">장바구니</h1>
<p class="col-md-8 fs-4">Cart</p>
</div>
</div>

<div class="row align-items-md-stretch">
<div class="row">
<table width="100%">
<tr>
<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId %>" class="btn btn-danger">삭제하기</a>
</td>
<td align="right"><a href="./shippingInfo.jsp?cartId=<%=cartId %>" class="btn btn-success">주문하기</a></td>
</tr>
</table>
</div>
<div style="padding-top:50px">
<table class="table table-hover">
<tr>
<th>신발</th>
<th>가격</th>
<th>수량</th>
<th>소계</th>
<th>비고</th>
</tr>
<%
long sum=0;
ArrayList<Shoes> cartList = (ArrayList<Shoes>) session.getAttribute("cartlist");
if(cartList==null){
	cartList=new ArrayList<Shoes>();
}
for(int i =0;i<cartList.size();i++){
	Shoes shoes = cartList.get(i);
	long total = shoes.getPrice() * shoes.getQuantity();
	sum=sum+total;

%>
<tr>
<td><%=shoes.getId() %>-<%=shoes.getName() %></td>
<td><%=shoes.getPrice() %></td>
<td><%=shoes.getQuantity() %></td>
<td><%=total %></td>
<td><a href="./removeCart.jsp?id=<%=shoes.getId() %>" class="badge text-bg-danger">삭제</a></td>
</tr>
<%
}
%>
<tr>
<th></th>
<th></th>
<th>총액</th>
<th><%=sum %></th>
<th></th>
</tr>
</table>
<a href="./Shoes.jsp" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
</div>
</div>
<jsp:include page="footer.jsp"/>
</div>
</body>
</html>