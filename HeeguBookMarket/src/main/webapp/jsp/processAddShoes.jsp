<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="dto.Shoes"
    import="dao.ShoesRepository"
    import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String shoesId=request.getParameter("ShoesId");
String shoesBrand=request.getParameter("ShoesBrand");
String units=request.getParameter("ShoesUnits");
String shoesName=request.getParameter("ShoesName");
String shoesName1=request.getParameter("ShoesName1");
String shoesPrice=request.getParameter("ShoesPrice");
String shoesCondition=request.getParameter("ShoesCondition");
String shoesDate1=request.getParameter("ShoesDate1");
String shoesColor=request.getParameter("ShoesColor");
String shoesImage=request.getParameter("ShoesImage");

long price;

if(shoesPrice.isEmpty())
	price=0;
else
	price=Integer.valueOf(shoesPrice);
long stock;
if(units.isEmpty())
	stock=0;
else
	stock=Long.valueOf(units);

PreparedStatement pstmt = null;
String sql = "INSERT INTO shoes VALUES(?,?,?,?,?,?,?,?,?,?)";

pstmt = conn.prepareStatement(sql);
pstmt.setString(1,shoesId);
pstmt.setString(2,shoesBrand);
pstmt.setString(3,shoesName);
pstmt.setString(4,shoesName1);
pstmt.setLong(5,price);
pstmt.setLong(6,stock);
pstmt.setString(7,shoesDate1);
pstmt.setString(8,shoesColor);
pstmt.setString(9,shoesImage);
pstmt.executeUpdate();

if(pstmt != null)
	pstmt.close();
if(conn != null)
	conn.close();

response.sendRedirect("Shoes.jsp");
%>
</body>
</html>