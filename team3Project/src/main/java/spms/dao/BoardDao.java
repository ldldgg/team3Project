package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
		
		sql = "SELECT BNO, SUBJECT, WRITER, CONTENT, TO_CHAR(CRE_DATE, 'YYYY/MM/DD') CRE_DATE, VIEW_COUNT"
			+ " FROM NOTICEBOARD"
			+ " ORDER BY BNO ASC";
		
		try {
			
			pstmt = connection.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<BoardDto> boardList = new ArrayList<BoardDto>();
			
			int no = 0;
			String subject = "";
			String writer = "";
			String content = "";
			String cre_date = "";
			int view_count = 0;
			
			while(rs.next()) {
				no = rs.getInt("BNO");
				subject = rs.getString("SUBJECT");
				writer = rs.getString("WRITER");
				content = rs.getString("CONTENT");
				cre_date = rs.getString("CRE_DATE");
				view_count = rs.getInt("VIEW_COUNT");
				
				boardList.add(new BoardDto(no, subject, writer, content, cre_date, view_count));
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
