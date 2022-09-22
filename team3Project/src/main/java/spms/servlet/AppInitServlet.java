package spms.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class AppInitServlet extends HttpServlet {

	@Override
	public void init(ServletConfig config) throws ServletException {

		super.init(config);

		ServletContext sc = this.getServletContext();

		Connection conn = null;

		String driver = "";
		String url = "";
		String user = "";
		String password = "";

		try {
			driver = sc.getInitParameter("driver");
			url = sc.getInitParameter("url");
			user = sc.getInitParameter("user");
			password = sc.getInitParameter("password");

			Class.forName(driver);

			conn = DriverManager.getConnection(url, user, password);

			sc.setAttribute("conn", conn);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}// init끝

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
		ServletContext sc = this.getServletContext();

		Connection conn = (Connection) sc.getAttribute("conn");

		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// destroy끝

}// 전체
