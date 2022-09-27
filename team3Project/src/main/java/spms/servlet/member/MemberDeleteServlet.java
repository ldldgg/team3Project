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
import javax.websocket.Session;

import spms.dao.BoardDao;
import spms.dto.BoardDto;

@WebServlet(value="/member/delete")
public class MemberDeleteServlet extends HttpServlet{
}