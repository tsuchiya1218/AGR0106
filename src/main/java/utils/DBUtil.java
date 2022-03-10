package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * DButils
 */
public class DBUtil {
	private DBUtil() {
	}

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		// home
//		String JDBC_URL = "jdbc:mysql://127.0.0.1:3306/20jy0131?useSSL=false&allowPublicKeyRetrieval=true";
//		String DB_USER = "root";
//		String DB_PASS = "root";

		// school
		 String JDBC_URL = "jdbc:mysql://10.64.144.5:3306/20jy0131"; 
		 String DB_USER = "20jy0131"; 
		 String DB_PASS = "20jy0131";

		Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
		return conn;
	}

	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
