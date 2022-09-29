package spms.servlet.member;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import spms.dao.BoardDao;
import spms.dao.MemberDao;
import spms.dto.BoardDto;
import spms.dto.MemberDto;

@WebServlet(value="/member/delete")
public class MemberDeleteServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		Connection conn = null;
		
		try {
			
			String no = req.getParameter("mno");
			int mno = Integer.parseInt(no);
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			memberDao.memberDelete(mno);
			
			res.sendRedirect("./list");
			
		}catch (Exception e) {
			
		}
		
		
	}
}