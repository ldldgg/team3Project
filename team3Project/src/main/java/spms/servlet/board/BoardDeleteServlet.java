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

import spms.dao.BoardDao;

@WebServlet(value="/board/delete")
public class BoardDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		Connection conn = null;
		int result = 0;

		int no = Integer.parseInt(req.getParameter("no"));
		String pwd = req.getParameter("pwd");
		String email = req.getParameter("email");

		try {
			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");

			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);

			result = boardDao.boardDelete(no, pwd, email);

			if (result != 0) {
				resp.sendRedirect("./list?page=1");
			} else {
				RequestDispatcher rd = req.getRequestDispatcher("./DeleteFailView.jsp");

				rd.forward(req, resp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
