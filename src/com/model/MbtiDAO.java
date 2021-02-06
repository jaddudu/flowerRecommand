package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MbtiDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	// DB 연결 코드
		public void conn() {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");

				String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
				String db_id = "hr";
				String db_pw = "hr";

				conn = DriverManager.getConnection(db_url, db_id, db_pw);

			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}

		// DB 나가는 코드
		public void close() {

			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		
		public int insert(MbtiDTO dto) {
			int cnt = 0;
			conn();
			try {
				String sql = "INSERT INTO member_MBTI VALUES(?,?,sysdate)";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, dto.getId());
				psmt.setString(2, dto.getMbti_result());
				cnt = psmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			
			return cnt;
		}
		
		public ArrayList<MbtiDTO> check(String id) {
			ArrayList<MbtiDTO> array = new ArrayList<MbtiDTO>();
			MbtiDTO dto = null;
			String mbti_result = null;
			String date = null;
			String img = null;
			conn();
			try {
				String sql = "SELECT mbti_result, test_date, type_img FROM member_mbti h, mbti m WHERE m.type = h.mbti_result AND h.id = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, id);
				rs = psmt.executeQuery();
				while(rs.next()) {
					mbti_result = rs.getString(1);
					date = rs.getString(2);
					img = rs.getString(3);
					dto = new MbtiDTO(mbti_result,date,img);
					array.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return array;
		}
		public String[] fbtiREsult(String fbti) {
//			String result = null;
//			String type_desc = null;
//			String worst = null;
//			String best = null;
			
			String[] mbti_list = new String[5];
			conn();
			try {
				String sql = "SELECT * FROM MBTI WHERE type = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, fbti);
				rs = psmt.executeQuery();
				while(rs.next()) {
					mbti_list[0] = rs.getString(1);
					mbti_list[1] = rs.getString(2);
					mbti_list[2] = rs.getString(3);
					mbti_list[3] = rs.getString(4);
					mbti_list[4] = rs.getString(5);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(); 
			}
			return mbti_list;
		}
		public String fbtiBest(String[] mbti_list) {
			String bestImg = null;
			conn();
			try {
				String sql = "SELECT type_img FROM mbti WHERE type = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, mbti_list[2]);
				rs = psmt.executeQuery();
				if(rs.next()) {
					bestImg = rs.getString(1);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			
			return bestImg;
		}
		
		public String fbtiWorst(String[] mbti_list) {
			String worstImg = null;
			conn();
			try {
				String sql = "SELECT type_img FROM mbti WHERE type = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, mbti_list[3]);
				rs = psmt.executeQuery();
				if(rs.next()) {
					worstImg = rs.getString(1);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			
			return worstImg;
		}
		
}
