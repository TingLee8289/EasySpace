package ezs.ren_listing_pic.controller;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
@WebServlet("/ren_listing/RenListing_pic_ReaderServlet.do")
public class RenListing_pic_ReaderServlet extends HttpServlet {
	
	Connection con;

	public void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		res.setContentType("image/gif");
		ServletOutputStream out = res.getOutputStream();
		
		try {
			Statement stmt = con.createStatement();
			String LIS_ID = req.getParameter("LIS_ID").trim();
			ResultSet rs = stmt.executeQuery("SELECT `LSP_PIC` FROM `REN_LISTING` s JOIN `REN_LISTING_PIC` s1 on S.LIS_ID=S1.LSP_LIS_ID WHERE s.LIS_ID ="+ LIS_ID);
			// "SELECT IMAGE FROM PICTURES WHERE PID = "+ req.getParameter("PID"));
			if(rs.next()) {
				BufferedInputStream in = new BufferedInputStream(rs.getBinaryStream("LSP_PIC"));
				byte[] buf = new byte[4 * 1024]; // 4K buffer
				int len;
				while ((len = in.read(buf)) != -1) {
					out.write(buf, 0, len);
				}
				in.close();
			} else {
				res.sendError(HttpServletResponse.SC_NOT_FOUND);
//				InputStream in = getServletContext().getResourceAsStream("/NoData/null.jpg");
//														
//				byte[] b = new byte[in.available()];
//				in.read(b);
//				out.write(b);
//				in.close();
				
			}
			rs.close();
			stmt.close();
			
		}catch (Exception e) {
			System.out.println(e);
//			InputStream in = getServletContext().getResourceAsStream("/NoData/null.jpg");
//			
//			byte[] b = new byte[in.available()];
//			in.read(b);
//			out.write(b);
//			in.close();
		}
		
	}

	public void init() throws ServletException {
		try {
			Context ctx = new javax.naming.InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/CFA104G5");
			con = ds.getConnection();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void destroy() {
		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
			System.out.println(e);
		}
	}
}
