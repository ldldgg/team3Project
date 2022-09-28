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

import spms.dao.MemberDao;
import spms.dto.MemberDto;

@WebServlet(value="/member/add")
public class MemberAddServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		req.setAttribute("id", "");
		req.setAttribute("notice", "");
		req.setAttribute("idCk", false);
		req.setAttribute("email", "");
		
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("../member/MemberForm.jsp");
		dispatcher.forward(req, res);
				
	}//doget끝
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		Connection conn = null;
		
		MemberDto memberDto = new MemberDto();
		
		int rs = 0;
		
		try {
			String id = req.getParameter("id");
			String email = req.getParameter("email");
			String pwd = req.getParameter("pwd");
			String mname = req.getParameter("mname");
			String nickname = req.getParameter("nickname");
			
			memberDto.setId(id);
			memberDto.setEmail(email);
			memberDto.setPwd(pwd);
			memberDto.setMname(mname);
			memberDto.setNickname(nickname);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			rs = memberDao.memberAdd(memberDto);
			
			if(rs == 0) {
				System.out.println("회원가입에 실패했습니다");
			}
			
			
			res.sendRedirect("../auth/login");
			
		} catch (Exception e) {
			
		}
		
	}//dopost끝
	
	
}//memberAddServlet 끝
