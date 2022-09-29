package spms.servlet.member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.MemberDao;
import spms.dto.MemberDto;


@WebServlet(value = "/member/update")
public class MemberUpdateServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)	//select one
			throws ServletException, IOException {
		
		Connection conn = null;
		
		RequestDispatcher requestDispatcher = null;
		
		String no = "";
		
		try {
			no = req.getParameter("mno");
			
			int mno = Integer.parseInt(no);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			MemberDto memberDto = memberDao.memberSelectOne(mno);
					
			req.setAttribute("memberDto", memberDto);
			
			requestDispatcher = req.getRequestDispatcher("../member/MemberUpdateForm.jsp");
			
			requestDispatcher.forward(req, res);
			
			
		} catch (Exception e) {

			e.printStackTrace();

			req.setAttribute("error", e);

			requestDispatcher = req.getRequestDispatcher("#");
			requestDispatcher.forward(req, res);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)		//update
			throws ServletException, IOException {
		
		MemberDto memberDto = null;
		
		Connection conn = null;
		
		try {
			String id = req.getParameter("id");
			String email = req.getParameter("email");
			String pwd = req.getParameter("pwd");
			String mname = req.getParameter("mname");
			String nickname = req.getParameter("nickname");
			String no = req.getParameter("mno");
			int mno = Integer.parseInt(no);
			
			memberDto = new MemberDto();
			
			memberDto.setId(id);
			memberDto.setEmail(email);
			memberDto.setPwd(pwd);
			memberDto.setMname(mname);
			memberDto.setNickname(nickname);
			memberDto.setMno(mno);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			int result = memberDao.memberUpdate(memberDto);
			
			if(result == 0) {
				System.out.println("업데이트 오류");
			}
			res.sendRedirect("./list");
		}catch(SQLException e) {
			e.printStackTrace();
			
		}
		
	}
	
	
}	