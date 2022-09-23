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

		try {

			pstmt = connecion.prepareStatement(sql);

			pstmt.setString(colIndex++, id);
			pstmt.setString(colIndex, pwd);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				id = rs.getString("id");
				name = rs.getString("mname");

				MemberDto memberDto = new MemberDto();

				memberDto.setId(id);
				memberDto.setMname(name);

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
}
