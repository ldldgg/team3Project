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
import javax.websocket.Session;

import spms.dao.BoardDao;
import spms.dto.BoardDto;

@WebServlet(value="/board/update")
public class BoardUpdateServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Connection conn = null;
		
		int no = Integer.parseInt(req.getParameter("no"));
		int page = Integer.parseInt(req.getParameter("page"));
		String filter = req.getParameter("filter");
		String selectFil = req.getParameter("selectFil");
		
		try {
			
			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			BoardDto boardDto = boardDao.boardSelectView(no);
			
			if(boardDto != null) {
				boardDao.boardViewCountUp(no);
			}
			
			req.setAttribute("board", boardDto);
			req.setAttribute("page", page);
			req.setAttribute("filter", filter);
			req.setAttribute("selectFil", selectFil);
			
			RequestDispatcher rd =
					req.getRequestDispatcher("./BoardSelectView.jsp");
			
			rd.forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Connection conn = null;
		
		int result = 0;
		
		BoardDto boardDto = new BoardDto();
		
		int no = Integer.parseInt(req.getParameter("no"));
		String email = req.getParameter("email");
		String writer = req.getParameter("writer");
		String subject = req.getParameter("subject");
		String content = req.getParameter("content");
		String pwd = req.getParameter("pwd");
		int page = Integer.parseInt(req.getParameter("page"));
		String filter = req.getParameter("filter");
		String selectFil = req.getParameter("selectFil");
		
		boardDto.setBno(no);
		boardDto.setWriter(writer);
		boardDto.setEmail(email);
		boardDto.setSubject(subject);
		boardDto.setContent(content);
		try {
			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			result = boardDao.boardUpdate(boardDto, pwd);
			
			if(result > 0) {
				resp.sendRedirect("./list?page=1");
			}else{
				req.setAttribute("pwd", pwd);
				req.setAttribute("board", boardDto);
				req.setAttribute("page", page);
				req.setAttribute("filter", filter);
				req.setAttribute("selectFil", selectFil);
				
				RequestDispatcher rd =
						req.getRequestDispatcher("./BoardSelectView.jsp");
				
				rd.forward(req, resp);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
	}
	
}
