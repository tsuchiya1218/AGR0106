package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Account;
import model.Login;
import utils.DBUtil;

public class AccountDAO {

	Account account = null;
	Connection con = null;
	ResultSet rs = null;
	PreparedStatement pStmt = null;

	public Account findByLogin(Login login) {
		// データベースへ接続
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String sql = "SELECT USER_ID, PASS, MAIL, NAME FROM ACCOUNT WHERE USER_ID = ? AND PASS = ?";
			pStmt = con.prepareStatement(sql);
			pStmt.setString(1, login.getUserId());
			pStmt.setString(2, login.getPass());

			// SELECTを実行し、結果表を取得
			rs = pStmt.executeQuery();

			// 一致したユーザーが存在した場合
			// そのユーザーを表すAccountインスタンスを生成
			if (rs.next()) {
				// 結果表からデータを取得
				String userId = rs.getString("USER_ID");
				String pass = rs.getString("PASS");
				String mail = rs.getString("MAIL");
				String name = rs.getString("NAME");
				account = new Account(userId, pass, mail, name);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			DBUtil.close(con, pStmt, rs);
		}
		// 見つかったユーザーまたはnullを返す
		return account;
	}
	
	public Account findByName(String name) {
		// データベースへ接続
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String sql = "SELECT USER_ID, PASS, MAIL, NAME, AGE FROM ACCOUNT WHERE NAME = ?";
			PreparedStatement pStmt = con.prepareStatement(sql);
			pStmt.setString(1, name);
			
			// SELECTを実行し、結果表を取得
			rs = pStmt.executeQuery();

			// 一致したユーザーが存在した場合
			// そのユーザーを表すAccountインスタンスを生成
			if (rs.next()) {
				// 結果表からデータを取得
				String userId = rs.getString("USER_ID");
				String pass = rs.getString("PASS");
				String mail = rs.getString("MAIL");
				String username = rs.getString("NAME");
				account = new Account(userId, pass, mail, username);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			DBUtil.close(con, pStmt, rs);
		}
		// 見つかったユーザーまたはnullを返す
		return account;
	}
}