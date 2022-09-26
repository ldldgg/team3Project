package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import spms.dto.MemberDto;

public class AuthDao {

	private Connection connecion;

	public void setConnection(Connection conn) {
		this.connecion = conn;
	}

	public MemberDto authExist(String id, String pwd) throws Exception {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "";
		int colIndex = 1;

		sql += "SELECT * FROM MEMBERS";
		sql += " WHERE ID = ? AND PWD = ?";

		String name = "";
		String email = "";
		String nickname = "";
		try {

			pstmt = connecion.prepareStatement(sql);

			pstmt.setString(colIndex++, id);
			pstmt.setString(colIndex, pwd);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				id = rs.getString("id");
				name = rs.getString("mname");
				email = rs.getString("email");
				nickname = rs.getString("nickname");
				
				MemberDto memberDto = new MemberDto();

				memberDto.setId(id);
				memberDto.setMname(name);
				memberDto.setEmail(email);
				memberDto.setNickname(nickname);
				// 회원 정보 조회 데이터
				return memberDto;
			}

		} catch (Exception e) {
			// TODO: handle exception
			throw e;
		} finally {
			try {

				if (rs != null) {
					rs.close();
				}

			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}

			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		// 회원 조회가 안된다면
		return null;
	}
	
	public String findId(String email) throws Exception{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String id = "";
		String sql = "";

		sql += "select id";
		sql += " from members";
		sql += " where email=?";

		try {
			
			pstmt = connecion.prepareStatement(sql);
			
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				id = rs.getString("id");
				
			}
			return id;
		}catch (Exception e) {
			// TODO: handle exception
			throw e;
		} finally {
			try {

				if (rs != null) {
					rs.close();
				}

			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}

			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	public String findPassword(String id)throws Exception{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		String pwd = "";
		
			
		
		sql += "select pwd";
		sql += " from members";
		sql += " where id=?" ;

		try {
			
			pstmt = connecion.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				pwd = rs.getString("pwd");
				
			}
			return pwd;
		}catch (Exception e) {
			// TODO: handle exception
			throw e;
		} finally {
			try {

				if (rs != null) {
					rs.close();
				}

			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}

			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
}
