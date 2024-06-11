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
if(id==null || id.trim().equals("")){
	response.sendRedirect("Shoes.jsp");
	return;
}

ShoesRepository dao = ShoesRepository.getInstance();
Shoes shoes = dao.getShoesById(id);
if(shoes==null){
	response.sendRedirect("exceptionNoShoesId.jsp");
}

ArrayList<Shoes> goodsList=dao.getAllShoes();
Shoes goods = new Shoes();
for(int i = 0 ; i<goodsList.size(); i++){
	goods=goodsList.get(i);
	if(goods.getId().equals(id)){
		break;
	}
}

ArrayList<Shoes> list = (ArrayList<Shoes>) session.getAttribute("cartlist");
if(list==null){
	list=new ArrayList<Shoes>();
	session.setAttribute("cartlist",list);
	}

int cnt = 0;
Shoes goodsQnt = new Shoes();
for(int i = 0; i<list.size(); i++){
	goodsQnt=list.get(i);
	if(goodsQnt.getId().equals(id)){
		cnt++;
		int orderQuantity = goodsQnt.getQuantity() + 1;
		goodsQnt.setQuantity(orderQuantity);
	}
}

if(cnt==0){
	goods.setQuantity(1);
	list.add(goods);
}

response.sendRedirect("Shoes.jsp?id="+id);
%>
</body>
</html>