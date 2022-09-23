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
import javax.servlet.http.HttpSession;

import spms.dao.AuthDao;
import spms.dto.MemberDto;

@WebServlet(value="/auth/login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = req.getRequestDispatcher("./LoginForm.jsp");
		rd.forward(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null;
		
		try {
			
			String id = req.getParameter("id");
			String pwd = req.getParameter("password");
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection) sc.getAttribute("conn");
			
			AuthDao authDao = new AuthDao();
			authDao.setConnection(conn);
			
			
			MemberDto memberDto =
					authDao.authExist(id, pwd);

			//회원이 없다면 로그인 실패 페이지로 이동
			if(memberDto == null) {
				RequestDispatcher rd = 
						req.getRequestDispatcher("./LoginFail.jsp");
				rd.forward(req, res);
			}else {
				//회원이 존재한다면 세션에 담고
				//회원 전체 조회 페이지로 이동
				HttpSession session = req.getSession();
				session.setAttribute("member", memberDto);
				
				res.sendRedirect("../board/list?page=1");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new ServletException(e);
		} 
		
		
	}
}
