package spms.servlet.member;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;

import spms.dao.MemberDao;
import spms.dto.MemberDto;

@WebServlet(value="/member/list")
public class MemberListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		Connection conn = null;
		
		try {
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			ArrayList<MemberDto> memberList = null;
			
			memberList = (ArrayList<MemberDto>)memberDao.selectList();
			
			req.setAttribute("memberList", memberList);
			
			RequestDispatcher dispatcher = 
					req.getRequestDispatcher("./MemberListView.jsp");
			dispatcher.forward(req, res);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	
}//서블릿끝
