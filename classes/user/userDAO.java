package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class UserDAO {
	
	
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/web01?serverTimezone=UTC";
			
			String dbID = "1234";
			String dbPassword = "1234";
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("드라이버 연결성공");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			System.out.println("데이터베이스 연결성공");
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; //로그인성공
				}
				else
					return 0; //비밀번호 불일치
			}
			return -1; //아이디없음
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return -2;
	}
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}

	
	

}
