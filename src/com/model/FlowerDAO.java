package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

public class FlowerDAO {
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

		} catch (Exception e) {
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
	
	public FlowerDTO select(String flower_id) {
		// ArrayList<FlowerDTO> array = new ArrayList<FlowerDTO>();
		String flower_name = null;
		String flower_img = null;
		FlowerDTO floDto = null;
		conn();
		try {
			String sql = "SELECT * FROM flower_dic where flower_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, flower_id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				flower_name = rs.getString(2);
				flower_img = rs.getString(4);
			}
			floDto = new FlowerDTO(flower_name, flower_img);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return floDto;
	}
	
	public int insert_flower1(String id, String flower_id) {
		
		int cnt = 0;
		conn();
		
		try {
			
			String sql = "insert into result_flower_1 values(?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, flower_id);
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close();
		}
		return cnt;

	}
	
	

	public int insert_flower2(String id, String flower_id) {
		int cnt = 0;
		conn();

		try {

			String sql = "insert into result_flower_2 values(?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, flower_id);

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();
		}
		return cnt;

	}



	public int insert_flower3(String id, String flower_id) {
		int cnt = 0;
		conn();

		try {

			String sql = "insert into result_flower_3 values(?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, flower_id);

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();
		}
		return cnt;

	}



	public int insert_flower4(String id, String flower_id) {
		int cnt = 0;
		conn();

		try {

			String sql = "insert into result_flower_4 values(?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, flower_id);

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();
		}
		return cnt;

	}



	public int insert_flower5(String id, String flower_id) {
		int cnt = 0;
		conn();

		try {

			String sql = "insert into result_flower_5 values(?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, flower_id);

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();
		}
		return cnt;

	}
	
	public int order_list(String id, String flower_id, String flower_name, String address) {
		
		int cnt = 0;
		FlowerDTO dto = null;
		conn();

		try {

			String sql = "insert into order_list values(?, ?, ?, ?, sysdate)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, flower_id);
			psmt.setString(3, flower_name);
			psmt.setString(4, address);

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();
		}
		return cnt;

	}

}
	
