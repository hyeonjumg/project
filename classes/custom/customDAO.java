package custom;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CustomDAO {
	
	private Connection conn;
	private ResultSet rs;
	
	public CustomDAO() {
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
		String SQL = "SELECT customID FROM CUSTOM ORDER BY customID DESC";
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
	public int write(String customTitle, String userID, String customContent) {
		String SQL = "INSERT INTO CUSTOM VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, customTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, customContent);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	public ArrayList<Custom> getList(int pageNumber) {
		String SQL = "SELECT * FROM CUSTOM WHERE customID < ? AND customAvailable = 1 ORDER BY customID DESC LIMIT 10";
		ArrayList<Custom> list = new ArrayList<Custom>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Custom custom = new Custom();
				custom.setCustomID(rs.getInt(1));
				custom.setCustomTitle(rs.getString(2));
				custom.setUserID(rs.getString(3));
				custom.setCustomDate(rs.getString(4));
				custom.setCustomContent(rs.getString(5));
				custom.setCustomAvailable(rs.getInt(6));
				list.add(custom);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM CUSTOM WHERE customID < ? AND customAvailable = 1 ORDER BY customID DESC LIMIT 10";
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
	public Custom getCustom(int customID) {
		String SQL = "SELECT * FROM CUSTOM WHERE customID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, customID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Custom custom = new Custom();
				custom.setCustomID(rs.getInt(1));
				custom.setCustomTitle(rs.getString(2));
				custom.setUserID(rs.getString(3));
				custom.setCustomDate(rs.getString(4));
				custom.setCustomContent(rs.getString(5));
				custom.setCustomAvailable(rs.getInt(6));
				return custom;
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public int update(int customID, String customTitle, String customContent) {
		String SQL = "UPDATE CUSTOM SET customTitle = ?, customContent = ? WHERE customID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, customTitle);
			pstmt.setString(2, customContent);
			pstmt.setInt(3, customID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	public int delete(int customID) {
		String SQL = "UPDATE CUSTOM SET customAVAILABLE = 0 WHERE customID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, customID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
}

