package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MessageDAO {
		private Connection conn;
		private PreparedStatement psmt;
		private ResultSet rs;
			
		// 데이터베이스 연결메소드
		public void getConnection() {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
				String db_id = "shopping";
				String db_pw = "12345";

				conn = DriverManager.getConnection(db_url, db_id, db_pw);
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.err.println("ojdbc6.jar 또는 경로를 체크하세요!");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.err.println("DB연결에 필요한 정보가 맞는지 체크하세요!");
			}

			
		}
		
		// 데이터베이스 종료메소드
		public void close() {
			try {
				if(rs != null) {
					rs.close();
				}
				if(psmt != null) {
					psmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
			
		}


		
		// 메세지 전송
		public int insert(MessageDTO dto) {
			// TODO Auto-generated method stub
			int cnt = 0;
			getConnection();
				try {
					String sql = "INSERT INTO MESSAGE VALUES(MSG_NUM.NEXTVAL,?,?,?,SYSDATE)";
					psmt = conn.prepareStatement(sql);
					
					psmt.setString(1, dto.getSend_name());
					psmt.setString(2, dto.getReceive_email());
					psmt.setString(3, dto.getContent());
					
					cnt = psmt.executeUpdate();
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					close();
				}
				return cnt;
			}
		
		// 메세지 조회
		public ArrayList<MessageDTO> select(String email){
			
			ArrayList<MessageDTO> list = new ArrayList<>();
			
			getConnection();
			
			String sql = "SELECT * FROM MESSAGE WHERE RECEIVE_EMAIL = ? ORDER BY SEND_DATE";
			
			try {
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, email);
				
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					int num = rs.getInt("num");
					String send_name = rs.getString("send_name");
					String receive_email = rs.getString("receive_email");
					String content = rs.getString("content");
					String send_date = rs.getString("send_date");
					
					MessageDTO dto = new MessageDTO(num, send_name, receive_email, content, send_date);
					
					list.add(dto);
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
				
			return list;
		}


		
		// 메세지 삭제
		public int deleteAll(String email) {
			int cnt = 0;
			getConnection();
			try {
				String sql = "DELETE FROM MESSAGE WHERE RECEIVE_EMAIL = ?";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, email);
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
			
			return cnt;
		}
		
		
		// 메세지 개별 삭제
		public void delete(int ch_num) {
				
			getConnection();
			
			String sql = "DELETE FROM MESSAGE WHERE NUM =?";
			
		
				try {
					psmt = conn.prepareStatement(sql);
					
					psmt.setInt(1, ch_num);
					
					psmt.executeUpdate();
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					close();
				}
		}
		
		
		
		
}
