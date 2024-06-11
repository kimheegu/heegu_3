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
 * Servlet implementation class Upload
 */
@WebServlet("/upload.do")
public class Upload extends HttpServlet {
	/**
	 *
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
		
		
		String shoesId=null;
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
			String sql = "INSERT INTO shoes VALUES(?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			while(params.hasNext()) {
				FileItem item = (FileItem) params.next();

				if(item.isFormField()) {
					String name = item.getFieldName();
					String value = item.getString("utf-8");
					System.out.println(value);
					System.out.println(name);
					if("ShoesId".equals(name)) {
						shoesId=value;
						pstmt.setString(1,shoesId);
					}else if("ShoesBrand".equals(name)) {
						shoesBrand=value;
						pstmt.setString(2,shoesBrand);
					}else if("ShoesUnits".equals(name)) {
						units=value;
						if(units.isEmpty()) {
							ShoesUnits=0;
						}else {
							ShoesUnits=Integer.valueOf(units);
							pstmt.setLong(6,ShoesUnits);
						}
					}else if("ShoesName".equals(name)) {
						shoesName=value;
						pstmt.setString(3,shoesName);
					}else if("ShoesName1".equals(name)) {
						shoesName1=value;
						pstmt.setString(4,shoesName1);
					}else if("ShoesPrice".equals(name)) {
						shoesPrice=value;
						if(shoesPrice.isEmpty()) {
							ShoesPrice=0;
						}else {
							ShoesPrice=Long.valueOf(shoesPrice);
							pstmt.setLong(5,ShoesPrice);
						}
					}else if("ShoesCondition".equals(name)) {
						shoesCondition = value;
						pstmt.setString(7, shoesCondition);
					}else if("ShoesDate1".equals(name)) {
						shoesDate1=value;
						pstmt.setString(8,shoesDate1);
					}else if("ShoesColor".equals(name)) {
						shoesColor=value;
						pstmt.setString(9,shoesColor);
					}
					}else {
						fileName = item.getName();
						fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
						File file = new File(fileuploadPath+"/"+fileName);
						pstmt.setString(10,fileName);
						item.write(file);
			}
			
		}

			pstmt.executeUpdate();
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
			
			response.sendRedirect("jsp/Shoes.jsp");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
