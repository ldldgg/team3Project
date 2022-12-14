package spms.servlet.board;

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

import spms.dao.BoardDao;
import spms.dto.BoardDto;

@WebServlet(value="/board/list")
public class BoardListServlet extends HttpServlet{
	
	private static final long serialVersionUid = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		
		int boardAllNum = 0;
		
		int page = Integer.parseInt(req.getParameter("page"));
		String filter = req.getParameter("filter");
		String selectFil = req.getParameter("selectFil");
		
		try {
			
			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			ArrayList<BoardDto> boardList = null;
			
			boardAllNum = boardDao.boardAllNum(filter, selectFil);
			boardList = (ArrayList<BoardDto>)boardDao.boardList(page, filter, selectFil);
			
			req.setAttribute("filter", filter);
			req.setAttribute("page", page);
			req.setAttribute("selectFil", selectFil);
			req.setAttribute("boardAllNum", boardAllNum);
			req.setAttribute("boardList", boardList);
			
			RequestDispatcher rd =
					req.getRequestDispatcher("../board/BoardListView.jsp");
			
			rd.forward(req, resp);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	
}
