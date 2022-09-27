package spms.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import spms.dto.MemberDto;

public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res
			, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest h_req = (HttpServletRequest) req;
		HttpServletResponse h_res = (HttpServletResponse) res;
		
//		String uri = h_req.getRequestURI();
		
		HttpSession h_session = h_req.getSession();
		MemberDto member = (MemberDto) h_session.getAttribute("member");
		
//		if(uri.indexOf("/auth/login") < 0) {
//			System.out.println("[필터: 인증되지 않은 요청이 들어왔습니다");
			if(member == null) {
				System.out.println("[필터 : 로그인 되지 않은 사용자의 요청입니다]");
				h_res.sendRedirect("/team3Project/auth/login");
				return;
			}
			else {
				System.out.println("[필터: " + member.getNickname() + "님의 요청입니다]");
			}
//			
//		}else {
//			System.out.println("[필터: 로그인 요청이 들어왔습니다");
//		}
		
		chain.doFilter(req, res);
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
