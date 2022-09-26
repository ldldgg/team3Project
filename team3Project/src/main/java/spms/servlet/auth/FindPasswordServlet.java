package spms.servlet.auth;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.AuthDao;
@WebServlet(value = "/auth/findPassword")
public class FindPasswordServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = req.getRequestDispatcher("./FindPasswordForm.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null;
		
		try {
			String id = req.getParameter("id");
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			AuthDao authDao = new AuthDao();
			authDao.setConnection(conn);
			
			String pwd = authDao.findPassword(id);

			
			if(pwd != "") {
				req.setAttribute("pwd", pwd);
				RequestDispatcher rd = 
						req.getRequestDispatcher("./FindPasswordSucceed.jsp");
				
				
				rd.forward(req, resp);
			}else {
				RequestDispatcher rd = 
						req.getRequestDispatcher("./FindPasswordFail.jsp");
				rd.forward(req, resp);
				
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
