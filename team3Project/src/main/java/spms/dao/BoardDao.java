package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import spms.dto.BoardDto;

public class BoardDao {

	private Connection connection = null;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}

	public ArrayList<BoardDto> boardList() throws Exception{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		
		sql = "SELECT BNO, SUBJECT, WRITER, CONTENT, CRE_DATE, VIEW_COUNT"
			+ " FROM NOTICEBOARD"
			+ " ORDER BY BNO DESC";
		
		try {
			
			pstmt = connection.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<BoardDto> boardList = new ArrayList<BoardDto>();
			
			int no = 0;
			String subject = "";
			String writer = "";
			Date cre_date = null;
			int view_count = 0;
			
			while(rs.next()) {
				no = rs.getInt("BNO");
				subject = rs.getString("SUBJECT");
				writer = rs.getString("WRITER");
				cre_date = rs.getDate("CRE_DATE");
				view_count = rs.getInt("VIEW_COUNT");
				
				boardList.add(new BoardDto(no, subject, writer, cre_date, view_count));
			}
			
			return boardList;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		}finally {
			
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
	}

	public int addBoard(BoardDto boardDto, String email, String pwd) throws Exception{

		PreparedStatement pstmtSel = null;
		PreparedStatement pstmtUp = null;
		ResultSet rs = null;
		
		String sqlSel = "";
		String sqlUp = "";
		
		try {
			sqlSel = "SELECT NICKNAME"
					+ " FROM MEMBERS"
					+ " WHERE EMAIL=?"
					+ " AND PWD=?";
			
			pstmtSel = connection.prepareStatement(sqlSel);
			
			pstmtSel.setString(1, email);
			pstmtSel.setString(2, pwd);
			
			rs = pstmtSel.executeQuery();
			
			if(rs.next()) {
				sqlUp = "INSERT INTO NOTICEBOARD"
						+ "(BNO, EMAIL, SUBJECT, WRITER, CONTENT, CRE_DATE, MOD_DATE, VIEW_COUNT)"
						+ "VALUES(NOTICEBOARD_BNO_SEQ.nextval,?,?,?,?,SYSDATE,SYSDATE,0)";
				
				pstmtUp = connection.prepareStatement(sqlUp);
				
				pstmtUp.setString(1, email);
				pstmtUp.setString(2, boardDto.getSubject());
				pstmtUp.setString(3, boardDto.getWriter());
				pstmtUp.setString(4, boardDto.getContent());
				
				return pstmtUp.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
			
			throw e;
		} finally {
			if(pstmtSel != null) {
				try {
					pstmtSel.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(pstmtUp != null) {
				try {
					pstmtUp.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}
		}
		
		return 0;
		
	}
	
	public BoardDto boardSelectView(int no) throws Exception {
		PreparedStatement pstmt = null;
		PreparedStatement pstmtView = null;
		
		ResultSet rs = null;
		
		String sql = "";
		String sqlView = "";
		
		String writer = "";
		String email = "";
		String subject = "";
		String content = "";
		
		try {
			sql = "SELECT WRITER, EMAIL, SUBJECT, CONTENT"
					+ " FROM NOTICEBOARD"
					+ " WHERE BNO=?";
			
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			sqlView = "UPDATE NOTICEBOARD"
					+ " SET VIEW_COUNT=VIEW_COUNT + 1"
					+ " WHERE BNO=?";
			
			pstmtView = connection.prepareStatement(sqlView);
			pstmtView.setInt(1, no);
			pstmtView.executeUpdate();
			
			BoardDto boardDto = new BoardDto();
			
			if(rs.next()) {
				writer = rs.getString("WRITER");
				email = rs.getString("EMAIL");
				subject = rs.getString("SUBJECT");
				content = rs.getString("CONTENT");
				
				boardDto.setBno(no);
				boardDto.setWriter(writer);
				boardDto.setEmail(email);
				boardDto.setSubject(subject);
				boardDto.setContent(content);
			}
			
			return boardDto;
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(pstmtView != null) {
				try {
					pstmtView.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			if(rs != null) {
				try {
					rs.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		
	}

	public int boardUpdate(BoardDto boardDto, String pwd) throws Exception {
		
		PreparedStatement pstmt = null;
		
		String sql = "";
		
		sql = "UPDATE NOTICEBOARD"
				+ " SET SUBJECT=?,CONTENT=?,MOD_DATE=SYSDATE"
				+ " WHERE BNO=?"
				+ "	AND EMAIL=(SELECT EMAIL"
				+ " FROM MEMBERS"
				+ " WHERE EMAIL=?"
				+ " AND PWD=?)";
		
		try {
			
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, boardDto.getSubject());
			pstmt.setString(2, boardDto.getContent());
			pstmt.setInt(3, boardDto.getBno());
			pstmt.setString(4, boardDto.getEmail());
			pstmt.setString(5, pwd);
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		} finally {
			
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
			
			
		}

	}

	public int boardDelete(int no, String pwd, String email) throws Exception {

		PreparedStatement pstmt = null;
		
		String sql = "";
		
		sql = "DELETE NOTICEBOARD"
				+ " WHERE BNO=?"
				+ "	AND EMAIL=(SELECT EMAIL"
				+ " FROM MEMBERS"
				+ " WHERE EMAIL=?"
				+ " AND PWD=?)";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			pstmt.setString(2, email);
			pstmt.setString(3, pwd);
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
			// TODO: handle exception
		}
		
	}
	
	
	
}
