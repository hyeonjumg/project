package custom2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Custom2DAO {
	
	private Connection conn;
	private ResultSet rs;
	
	public Custom2DAO() {
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
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; //데이터베이스 오류
	}
	
	public int getNext() {
		String SQL = "SELECT custom2ID FROM CUSTOM2 ORDER BY custom2ID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; //첫번째 게시물
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	public int write(String custom2Title, String userID, String custom2Content) {
		String SQL = "INSERT INTO CUSTOM2 VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, custom2Title);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, custom2Content);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	public ArrayList<Custom2> getList(int pageNumber) {
		String SQL = "SELECT * FROM CUSTOM2 WHERE custom2ID < ? AND custom2Available = 1 ORDER BY custom2ID DESC LIMIT 10";
		ArrayList<Custom2> list = new ArrayList<Custom2>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Custom2 custom2 = new Custom2();
				custom2.setCustom2ID(rs.getInt(1));
				custom2.setCustom2Title(rs.getString(2));
				custom2.setUserID(rs.getString(3));
				custom2.setCustom2Date(rs.getString(4));
				custom2.setCustom2Content(rs.getString(5));
				custom2.setCustom2Available(rs.getInt(6));
				list.add(custom2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM CUSTOM2 WHERE custom2ID < ? AND custom2Available = 1 ORDER BY custom2ID DESC LIMIT 10";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public Custom2 getCustom2(int custom2ID) {
		String SQL = "SELECT * FROM CUSTOM2 WHERE custom2ID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, custom2ID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Custom2 custom2 = new Custom2();
				custom2.setCustom2ID(rs.getInt(1));
				custom2.setCustom2Title(rs.getString(2));
				custom2.setUserID(rs.getString(3));
				custom2.setCustom2Date(rs.getString(4));
				custom2.setCustom2Content(rs.getString(5));
				custom2.setCustom2Available(rs.getInt(6));
				return custom2;
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public int update(int custom2ID, String custom2Title, String custom2Content) {
		String SQL = "UPDATE CUSTOM2 SET custom2Title = ?, custom2Content = ? WHERE custom2ID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, custom2Title);
			pstmt.setString(2, custom2Content);
			pstmt.setInt(3, custom2ID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	public int delete(int custom2ID) {
		String SQL = "UPDATE CUSTOM2 SET custom2AVAILABLE = 0 WHERE custom2ID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, custom2ID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
}

