package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.regex.Pattern;

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
		
		String name = "";
		String email = "";
		String nickname = "";
		
		System.out.println("아이디는 :" +id);
		String pattern2 = "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$";
		
		
		if (Pattern.matches(pattern2, id)) {

			sql += "SELECT * FROM MEMBERS";
			sql += " WHERE EMAIL = ? AND PWD = ?";
		} else {
			
			sql += "SELECT * FROM MEMBERS";
			sql += " WHERE ID = ? AND PWD = ?";
		}
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
			} //finally 끝
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
		
		String pattern2 = "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$";
		
		
		if (Pattern.matches(pattern2, id)) {
			
			sql += "select pwd";
			sql += " from members";
			sql += " where email=?" ;
			
			
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
			} //finally 끝
		}
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
		} //finally 끝
	}
}
