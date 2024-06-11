package dao;

import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dto.Shoes;

/**
 * Servlet implementation class Update
 */
@WebServlet("/update.do")
public class Update extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String encoding="utf-8";
		File fileuploadPath = new File("C:\\web\\HeeguBookMarket\\src\\main\\webapp\\images");
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(fileuploadPath);
		factory.setSizeThreshold(8192);
		ServletFileUpload upload = new ServletFileUpload(factory);

		String shoesId= null;
		String shoesBrand=null;
		String units=null;
		String shoesName="";
		String shoesName1=null;
		String shoesPrice=null;
		String shoesCondition=null;
		String shoesDate1=null;
		String shoesColor=null;
		String fileName=null;
		Integer ShoesUnits=0;
		long ShoesPrice=0;
		Connection conn = null;
	
		
		try {
			String url="jdbc:mysql://localhost:3306/ShoesMarketDB";
			String user = "root";
			String password="1234";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,password);
			List items = upload.parseRequest(request);
			Iterator params = items.iterator();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			while(params.hasNext()) {
				FileItem item = (FileItem) params.next();

				if(item.isFormField()) {
					String name = item.getFieldName();
					String value = item.getString("utf-8");
					if("shoesId".equals(name)) {
						shoesId=value;
					}else if("brand".equals(name)) {
						shoesBrand=value;
					}else if("units".equals(name)) {
						units=value;
						if(units.isEmpty()) {
							ShoesUnits=0;
						}else {
							ShoesUnits=Integer.valueOf(units);
						}
					}else if("name".equals(name)) {
						shoesName=value;
					}else if("name1".equals(name)) {
						shoesName1=value;
					}else if("price".equals(name)) {
						shoesPrice=value;
						if(shoesPrice.isEmpty()) {
							ShoesPrice=0;
						}else {
							ShoesPrice=Long.valueOf(shoesPrice);
						}
					}else if("condition".equals(name)) {
						shoesCondition = value;
					}else if("date1".equals(name)) {
						shoesDate1=value;
					}else if("color".equals(name)) {
						shoesColor=value;
					}
					}else {
						fileName = item.getName();
						fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
						File file = new File(fileuploadPath+"/"+fileName);
						item.write(file);
			}
				
		}
			System.out.println(shoesId);
			System.out.println(shoesBrand);
			System.out.println(shoesName);
			System.out.println(shoesName1);
			System.out.println(fileName);
			String sql="SELECT * FROM shoes WHERE s_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, shoesId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				sql = "UPDATE shoes SET s_brand=?, s_name=?, s_name1=?, s_price=?, s_units=?, s_condition=?,s_date1=?, s_color=?, s_filename=? WHERE s_id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,shoesBrand);
				pstmt.setString(2, shoesName);
				pstmt.setString(3, shoesName1);
				pstmt.setLong(4, ShoesPrice);
				pstmt.setLong(5, ShoesUnits);
				pstmt.setString(6,shoesCondition);
				pstmt.setString(7,shoesDate1);
				pstmt.setString(8, shoesColor);
				pstmt.setString(9, fileName);
				pstmt.setString(10, shoesId);
				pstmt.executeUpdate();
				
			}
			
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
			
			response.sendRedirect("jsp/editShoes.jsp?edit=update");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
