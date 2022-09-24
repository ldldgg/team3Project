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

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		
		try {
//			sql = "SELECT NICKNAME"
//					+ " FROM MEMBERS"
//					+ " WHERE EMAIL=?"
//					+ " AND PWD=?";
//			
//			pstmt = connection.prepareStatement(sql);
//			
//			pstmt.setString(1, email);
//			pstmt.setString(2, pwd);
//			
//			rs = pstmt.executeQuery();
//			
//			if(rs.next()) {
				sql = "INSERT INTO NOTICEBOARD"
						+ "(BNO, EMAIL, SUBJECT, WRITER, CONTENT, CRE_DATE, MOD_DATE, VIEW_COUNT)"
						+ "VALUES(NOTICEBOARD_BNO_SEQ.nextval,?,?,?,?,SYSDATE,SYSDATE,0)";
				
				pstmt = connection.prepareStatement(sql);
				
				pstmt.setString(1, email);
				pstmt.setString(2, boardDto.getSubject());
				pstmt.setString(3, boardDto.getWriter());
				pstmt.setString(4, boardDto.getContent());
				
				return pstmt.executeUpdate();
//			}
		} catch (Exception e) {
			e.printStackTrace();
			
			throw e;
		} finally {
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
		
//		return 0;
		
	}
	
	public BoardDto boardSelectView(int no) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		
		sql = "SELECT WRITER, EMAIL, SUBJECT, CONTENT"
				+ " FROM NOTICEBOARD"
				+ " WHERE BNO=?";
		
		String writer = "";
		String email = "";
		String subject = "";
		String content = "";
		
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			BoardDto boardDto = new BoardDto();
			
			if(rs.next()) {
				writer = rs.getString("WRITER");
				email = rs.getString("EMAIL");
				subject = rs.getString("SUBJECT");
				content = rs.getString("CONTENT");
				
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
			
			if(rs != null) {
				try {
					rs.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		
	}
	
	
	
}
