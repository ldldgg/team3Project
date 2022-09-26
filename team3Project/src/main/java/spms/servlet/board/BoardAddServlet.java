package spms.servlet.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import spms.dao.BoardDao;
import spms.dto.BoardDto;


@WebServlet(value="/board/add")
public class BoardAddServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		RequestDispatcher rd =
				req.getRequestDispatcher("./BoardAddForm.jsp");
		
		rd.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		Connection conn = null;
		
		String subject = req.getParameter("subject");
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		
		try {
			
			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");
			
			BoardDto boardDto = new BoardDto();
			
			boardDto.setSubject(subject);
			boardDto.setWriter(writer);
			boardDto.setContent(content);
			
			BoardDao boardDao = new BoardDao();
			
			boardDao.setConnection(conn);
			int result = boardDao.addBoard(boardDto, email, pwd);
			
			if(result > 0) {
				resp.sendRedirect("./list?page=1");
			}else{
				RequestDispatcher rd =
						req.getRequestDispatcher("./PwdCheckView.jsp");
				
				rd.forward(req, resp);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
