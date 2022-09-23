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
import javax.websocket.Session;

import spms.dao.BoardDao;
import spms.dto.BoardDto;

@WebServlet(value="/board/update")
public class BoardUpdateServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Connection conn = null;
		
		try {
			
			
			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			
			
			
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
	}
	
}
