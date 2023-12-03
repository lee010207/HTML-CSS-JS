package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
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
	
	// 회원가입
	public int join(MemberDTO dto) {
		getConnection();
		int cnt = 0;
		try {
			String sql = "INSERT INTO MSMEMBER VALUES(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getPhone());
			psmt.setString(4, dto.getAddr());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	// 로그인
	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		getConnection();

		try {
			String sql = "SELECT * FROM MSMEMBER WHERE EMAIL =? AND PW = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				info = new MemberDTO(rs.getString("EMAIL"), rs.getString("PW"), rs.getString("PHONE"), rs.getString("ADDR"));
			}
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return info;
	}
	
	// 회원정보 수정
		public int update(MemberDTO changeInfo) {
			getConnection();
			int cnt = 0;
			
			try {
				String sql = "UPDATE MSMEMBER SET PHONE=?, ADDR=? WHERE EMAIL=? AND PW=?";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, changeInfo.getPhone());
				psmt.setString(2, changeInfo.getAddr());
				psmt.setString(3, changeInfo.getEmail());
				psmt.setString(4, changeInfo.getPw());
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			return cnt;
		}
	
}
