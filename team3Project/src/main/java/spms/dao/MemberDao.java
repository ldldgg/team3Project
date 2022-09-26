package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import spms.dto.MemberDto;

public class MemberDao {

	private Connection connection = null;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}
	
	public int memberAdd(MemberDto memberDto)
			throws Exception{
		
		PreparedStatement pstmt = null;
		int rs = 0;
		
		try {
			String id = memberDto.getId();
			String email = memberDto.getEmail();
			String pwd = memberDto.getPwd();
			String name = memberDto.getMname();
			String nickname = memberDto.getNickname();
			
			String sql = "";
			
			sql += "INSERT INTO MEMBERS";
			sql += " VALUE(MNO, ID, EMAIL, PWD, MNAME, NICKNAME, CRE_DATE, MOD_DATE)";
			sql += " VALUES(MEMBERS_MNO_SEQ.NEXTVAL, ?"; 
			sql += " , ?, ?, ?, ?, SYSDATE, SYSDATE)";
		
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			pstmt.setString(3, pwd);
			pstmt.setString(4, name);
			pstmt.setString(5, nickname);
			
			rs = pstmt.executeUpdate();
		}catch (Exception e) {
			throw e;
		}finally {
			
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}//finally 끝
		
		return rs;
	}//memberInsert 끝
	
	
	
	
}//memberDao 끝
