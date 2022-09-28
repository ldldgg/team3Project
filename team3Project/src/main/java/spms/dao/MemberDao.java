package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import spms.dto.MemberDto;

public class MemberDao {

	private Connection connection = null;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}
	
	public List<MemberDto> selectList() throws Exception{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "";
			sql += "SELECT MNO, ID, EMAIL, PWD, MNAME, CRE_DATE, MOD_DATE, NICKNAME";
			sql += " FROM MEMBERS";
			sql += " ORDER BY MNO ASC";
		
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<MemberDto> memberList = new ArrayList<>();
			
			int mno = 0;
			String id = "";
			String email = "";
			String pwd = "";
			String mname = "";
			String credate = "";
			String moddate = "";
			String nickname = "";
			
			while (rs.next()) {
				mno = rs.getInt("MNO");
				id = rs.getString("ID");
				email = rs.getString("EMAIL");
				pwd = rs.getString("PWD");
				mname = rs.getString("MNAME");
				credate = rs.getString("CRE_DATE");
				moddate = rs.getString("MOD_DATE");
				nickname = rs.getString("NICKNAME");
				
				MemberDto memberDto = new MemberDto(mno, id, email,
						pwd, mname, credate, moddate, nickname);

				memberList.add(memberDto);
			}return memberList;
			
		}catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			
		}
	}
	
	
	public int memberAdd(MemberDto memberDto)
			throws Exception{
		
		PreparedStatement pstmt = null;
		int rs = 0;
		
		try {
			String id = memberDto.getId();
			String email = memberDto.getEmail();
			String pwd = memberDto.getPwd();
			String mname = memberDto.getMname();
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
			pstmt.setString(4, mname);
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
	
	
	
	 public Boolean memberIdCheck(String id) throws Exception{
	  
		 PreparedStatement pstmt = null;
		 ResultSet rs = null;
		 
		 String sql = "";
		 
		 sql += "SELECT ID";
		 sql += " FROM MEMBERS";
		 sql += " WHERE ID = ?";
		 
		 try {
			 pstmt = connection.prepareStatement(sql);
			 
			 pstmt.setString(1, id);
			 
			 rs = pstmt.executeQuery();
			 
			 if(rs.next()) {
				 
				 return true;
			 }else {
				 return false;
			 }
		 }catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		}finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
	 }
	 
	
}//memberDao 끝
