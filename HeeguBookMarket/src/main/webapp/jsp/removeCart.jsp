<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Shoes" %>
<%@ page import="dao.ShoesRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
if(id == null || id.trim().equals("")){
	response.sendRedirect("shoeses.jsp");
	return;
}

ShoesRepository dao = ShoesRepository.getInstance();

Shoes shoes = dao.getShoesById(id);
if(shoes == null){
	response.sendRedirect("exceptionNoShoesId.jsp");
}

ArrayList<Shoes> cartList = (ArrayList<Shoes>)session.getAttribute("cartlist");
Shoes goodsQnt = new Shoes();
for(int i = 0; i<cartList.size(); i++){
	goodsQnt=cartList.get(i);
	if(goodsQnt.getId().equals(id)){
		cartList.remove(goodsQnt);
	}
}
response.sendRedirect("cart.jsp");
%>
</body>
</html>