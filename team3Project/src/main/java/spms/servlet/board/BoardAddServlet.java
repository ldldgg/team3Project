package spms.servlet.board;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		String writer = req.getParameter("writer");
		String subject = req.getParameter("subject");
		String email = req.getParameter("email");
		String content = req.getParameter("content");
		String pwd = req.getParameter("pwd");
		
		try {
			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");
			
			BoardDto boardDto = new BoardDto();
			
			boardDto.setWriter(writer);
			boardDto.setSubject(subject);
			boardDto.setContent(content);
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
