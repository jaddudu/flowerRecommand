package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class SentenceDAO {
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
		
		public void insert(String id, String sentence) {
	         int cnt = 0;
	         conn();
	         try {
	            String sql = "INSERT INTO sentence_list VALUES(?,?,sysdate)";
	            psmt = conn.prepareStatement(sql);
	            System.out.println(id);
	            System.out.println(sentence);

	            psmt.setString(1, id);
	            psmt.setString(2, sentence);
	            cnt = psmt.executeUpdate();
	            if(cnt > 0)
	               System.out.println("sentence 입력 성공");
	         } catch (SQLException e) {
	            e.printStackTrace();
	         } finally {
	            close();
	         }         
	      }
		
		public ArrayList<SentenceDTO> check(String id) {
			ArrayList<SentenceDTO> array = new ArrayList<SentenceDTO>();
			String sentence = null;
			String date = null;
			conn();
			try {
				String sql = "SELECT * FROM sentence_list WHERE id = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, id);
				rs = psmt.executeQuery();
				while(rs.next()) {
					sentence = rs.getString(2);
					date = rs.getString(3);
				}
				SentenceDTO dto = new SentenceDTO(id, sentence, date);
				array.add(dto);
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return array;
		}
}
