package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;
import model.UserLogin;
import utils.DBUtil;

public class UserDao {

	Connection con = null;
	ResultSet rs = null;
	PreparedStatement stmt = null;

	public User findByName(String name) {
		User u = new User();
		// データベースへ接続
		try {
			con = DBUtil.getConnection();

			// SELECT文を準備
			String sql = "SELECT UID,USERNAME,KANA,MAIL,TEL,ADDRESS FROM USER WHERE USERNAME LIKE ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, "%"+name+"%");
			// SELECTを実行し、結果表を取得
			rs = stmt.executeQuery();
			// 一致したユーザーが存在した場合
			// そのユーザーを表すAccountインスタンスを生成
			if (rs.next()) {
				// 結果表からデータを取得
				u.setUserId(rs.getInt("UID"));
				u.setName(rs.getString("USERNAME"));
				u.setKana(rs.getString("KANA"));
				u.setMail(rs.getString("MAIL"));
				u.setTel(rs.getString("TEL"));
				u.setAddress(rs.getString("ADDRESS"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		// 見つかったユーザーまたはnullを返す
		return u;
	}
	public User findByMail(String mail) {
		User u = new User();
		// データベースへ接続
		try {
			con = DBUtil.getConnection();

			// SELECT文を準備
			String sql = "SELECT * FROM USER WHERE mail = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, mail);
			// SELECTを実行し、結果表を取得
			rs = stmt.executeQuery();
			// 一致したユーザーが存在した場合
			// そのユーザーを表すAccountインスタンスを生成
			if (rs.next()) {
				// 結果表からデータを取得
				u.setUserId(rs.getInt("UID"));
				u.setName(rs.getString("USERNAME"));
				u.setKana(rs.getString("KANA"));
				u.setMail(rs.getString("MAIL"));
				u.setTel(rs.getString("TEL"));
				u.setAddress(rs.getString("ADDRESS"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		// 見つかったユーザーまたはnullを返す
		return u;
	}

	public int save(User u) {
		int res = 0;
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String sql = "INSERT INTO USER (username,kana,mail,tel,address,gender,birth,password) VALUES(?,?,?,?,?,?,?,?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, u.getName());
			stmt.setString(2, u.getKana());
			stmt.setString(3, u.getMail());
			stmt.setString(4, u.getTel());
			stmt.setString(5, u.getAddress());
			stmt.setString(6, u.getGender());
			stmt.setString(7, u.getBirth());
			stmt.setString(8, u.getPass());
			res = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		return res;
	}
	//パスワード変更
	public int resetPassword(String pass,String newPass, String mail) {
		int res = 0;
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String sql = "UPDATE USER set password = ? where password = ? AND mail =?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, newPass);
			stmt.setString(2, pass);
			stmt.setString(3, mail);
			res = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		return res;
	}

	// account 社員用login
//	public User findByLogin(UserLogin login) {
//		User user = null;
//		// データベースへ接続
//		try {
//			con = DBUtil.getConnection();
//			// SELECT文を準備
//			String sql = "SELECT MAIL, PASSWORD,USERNAME FROM User WHERE MAIL = ? AND PASSWORD = ?";
//			stmt = con.prepareStatement(sql);
//			stmt.setString(1, login.getUserId());
//			stmt.setString(2, login.getPass());
//
//			// SELECTを実行し、結果表を取得
//			rs = stmt.executeQuery();
//
//			// 一致したユーザーが存在した場合
//			// そのユーザーを表すAccountインスタンスを生成
//			if (rs.next()) {
//				// 結果表からデータを取得
//				String pass = rs.getString("password");
//				String mail = rs.getString("mail");
//				String username = rs.getString("username");
//				user = new User();
//				user.setMail(mail);
//				user.setPass(pass);
//				user.setName(username);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//			return null;
//		} finally {
//			DBUtil.close(con, stmt, rs);
//		}
//		// 見つかったユーザーまたを返す
//		return user;
//	}
	// user login
	public User findByLogin(UserLogin login) {
		User user = null;
		// データベースへ接続
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String sql = "SELECT * FROM USER WHERE MAIL = ? AND PASSWORD = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, login.getMail());
			stmt.setString(2, login.getPass());

			// SELECTを実行し、結果表を取得
			rs = stmt.executeQuery();

			// 一致したユーザーが存在した場合
			// そのユーザーを表すAccountインスタンスを生成
			if (rs.next()) {
				// 結果表からデータを取得
				user = new User(rs.getInt("uid"), rs.getString("username"), rs.getString("kana"),
						rs.getString("mail"), rs.getString("tel"), rs.getString("address"),
						rs.getString("gender"), rs.getString("birth"), rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
//			return null;
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		// 見つかったユーザーまたを返す
		return user;
	}
}
