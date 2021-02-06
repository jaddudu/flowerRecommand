package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class OrderDAO {
	
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
		
		public int insert (OrderDTO dto) {
			int cnt = 0;
			conn();
			try {
				String sql = "INSET INTO order_list VALUES(?,?,?,?,sysdate)";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, dto.getId());
				psmt.setString(2, dto.getFlower_id());
				psmt.setString(3, dto.getFlower_name());
				psmt.setString(4, dto.getAddr());
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			
			return cnt;
		}
		
		public ArrayList<OrderDTO> check(String id) {
			ArrayList<OrderDTO> array = new ArrayList<OrderDTO>();
			String flower_id = null;
			String flower_name = null;
			String addr = null;
			String date = null;
			
			conn();
			String sql = "SELECT * FROM order_list WHERE id = ?";
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,id);
				rs = psmt.executeQuery();
				while(rs.next()){
					flower_id = rs.getString(2);
					flower_name = rs.getString(3);
					addr = rs.getString(4);
					date = rs.getString(5);
				}
				OrderDTO dto = new OrderDTO(id, flower_id, flower_name, addr);
				array.add(dto);
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return array;
		}
}
