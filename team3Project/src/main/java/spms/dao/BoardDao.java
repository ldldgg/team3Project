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

	public ArrayList<BoardDto> selectList() throws Exception{
		
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
	
	
	
}
