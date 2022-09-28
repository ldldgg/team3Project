package spms.servlet.member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletSecurityElement;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javafx.scene.web.WebHistory;
import spms.dao.MemberDao;
import spms.dto.MemberDto;

@WebServlet(value="/member/idcheck")
public class IdCheckServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		 Connection conn = null;
		 
		 try {
			 String id = req.getParameter("id");
			 String email = req.getParameter("email");
			 
			 ServletContext sc = this.getServletContext();
			 
			 conn = (Connection)sc.getAttribute("conn");
			 
			 MemberDao memberDao = new MemberDao();
			 memberDao.setConnection(conn);
			 
			 Boolean IdCheck = memberDao.memberIdCheck(id);
			 
			 if(IdCheck == false) {	//중복값 없음
				req.setAttribute("email", email);
				req.setAttribute("id", id);
				req.setAttribute("notice", "사용가능한 아이디입니다");
				req.setAttribute("idCk", false);
				
				RequestDispatcher rd 
				= req.getRequestDispatcher("./MemberForm.jsp");
			
				rd.forward(req, res);
				
			 }else { //중복값 있음
				req.setAttribute("email", email);
				req.setAttribute("id", id);
				req.setAttribute("notice", "이미 사용중인 아이디입니다");
				req.setAttribute("idCk", true);
				
				RequestDispatcher rd 
				= req.getRequestDispatcher("./MemberForm.jsp");
			
				rd.forward(req, res);
			 }
			 
			 
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}//get끝
	
	
	
}//서블릿끝
