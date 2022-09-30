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
	
	public int boardAllNum(String filter, String selectFil) throws Exception{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Boolean filterOn = false;
		
		int boardAllNum = 0;
		String sql = "";
		
		sql = "SELECT COUNT(*) NUM"
			+ " FROM BOARD";
		
		if(filter != null && !filter.isEmpty()) {
			filterOn = true;
			filter = "%" + filter + "%";
			
			if(selectFil.equals("subject")) {
				
				sql += " WHERE SUBJECT LIKE ?";
				
			}else if(selectFil.equals("writer")) {
				
				sql += " WHERE WRITER LIKE ?";
				
			}else if(selectFil.equals("content")) {
				
				sql += " WHERE CONTENT LIKE ?";
				
			}
		}
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			if(filterOn) {
				pstmt.setString(1, filter);
			}
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				boardAllNum = rs.getInt("NUM");
			}
			
			return boardAllNum;
		} catch (Exception e) {
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

	public ArrayList<BoardDto> boardList(int page, String filter, String selectFil) throws Exception{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Boolean filterOn = false;
		int pageStart = (page-1)*10 + 1;
		int pageEnd = page*10;
		
		String sql = "SELECT *"
				+ " FROM (SELECT ROWNUM RNUM, BNO, SUBJECT, WRITER, CONTENT, CRE_DATE, VIEW_COUNT"
				+ " FROM BOARD";
		
		if(filter != null && !filter.isEmpty()) {
			filterOn = true;
			filter = "%" + filter + "%";
			
			if(selectFil.equals("subject")) {
				
				sql += " WHERE SUBJECT LIKE ?";
				
			}else if(selectFil.equals("writer")) {
				
				sql += " WHERE WRITER LIKE ?";
				
			}else if(selectFil.equals("content")) {
				
				sql += " WHERE CONTENT LIKE ?";
				
			}
		}
		
		sql += " ORDER BY BNO DESC)"
				+ " WHERE RNUM >= ?"
				+ " AND RNUM <= ?";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			int colIndex = 1;
			
			if(filterOn){
				pstmt.setString(colIndex++, filter);
			}
				pstmt.setInt(colIndex++, pageStart);
				pstmt.setInt(colIndex, pageEnd);
			
			
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

	public int addBoard(BoardDto boardDto, String email) throws Exception{

		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = "";
		
		try {
				sql = "INSERT INTO BOARD"
						+ "(BNO, EMAIL, SUBJECT, WRITER, CONTENT, CRE_DATE, MOD_DATE)"
						+ "VALUES(BOARD_BNO_SEQ.nextval,?,?,?,?,SYSDATE,SYSDATE)";
				
				pstmt = connection.prepareStatement(sql);
				
				pstmt.setString(1, email);
				pstmt.setString(2, boardDto.getSubject());
				pstmt.setString(3, boardDto.getWriter());
				pstmt.setString(4, boardDto.getContent());
				
				result = pstmt.executeUpdate();
				
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
		}
		
		return result;
	}
	
	public void boardViewCountUp(int no) throws Exception {
		
		PreparedStatement pstmt = null;
		
		String sql = "";
		
		try {
			
			sql = "UPDATE BOARD"
					+ " SET VIEW_COUNT=VIEW_COUNT + 1"
					+ " WHERE BNO=?";
			
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			throw e;
		}finally {
			
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
		}
		
	}
	
	public BoardDto boardSelectView(int no) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		
		
		String writer = "";
		String email = "";
		String subject = "";
		String content = "";
		
		try {
			sql = "SELECT WRITER, EMAIL, SUBJECT, CONTENT"
					+ " FROM BOARD"
					+ " WHERE BNO=?";
			
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
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
				
				return boardDto;
			}
			
			
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
		
		return null;
	}

	public int boardUpdate(BoardDto boardDto, String pwd) throws Exception {
		
		PreparedStatement pstmt = null;
		
		String sql = "";
		
		sql = "UPDATE BOARD"
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
		
		sql = "DELETE BOARD"
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
