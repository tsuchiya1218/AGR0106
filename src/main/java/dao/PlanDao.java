package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Plan;
import utils.DBUtil;

public class PlanDao {

	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	PreparedStatement stmt = null;

//	public ArrayList<Plan> searchPlan() {
//		ArrayList<Plan> list = new ArrayList<>();
//		try {
//			con = DBUtil.getConnection();
//			// SELECT文を準備
//			String SQL = "SELECT * FROM plan";
//			// SQLの実行
//			st = con.createStatement();
//			rs = st.executeQuery(SQL);
//			// 結果表示
//			while (rs.next()) {
//				Plan p = new Plan(rs.getString("pname"), rs.getInt("pid"), rs.getInt("tid"), rs.getInt("hid"),
//						rs.getInt("cid"), rs.getString("picture"), rs.getString("pdate"), rs.getString("detail"),
//						rs.getString("area"), rs.getString("price"));
//				list.add(p);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			DBUtil.close(con, st, rs);
//		}
//		return list;
//	}

	public Plan searchPlanId(int id) {
		Plan p = new Plan();
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String SQL = "SELECT * FROM plan WHERE pid = ?";
			// SQLの実行
			stmt = con.prepareStatement(SQL);
			stmt.setInt(1, id);
			// SELECTを実行し、結果表を取得
			rs = stmt.executeQuery();
			if (rs.next()) {
				p = new Plan(rs.getString("pname"), rs.getInt("pid"), rs.getInt("tid"), rs.getInt("hid"),
						rs.getInt("cid"), rs.getString("picture"), rs.getString("pdate"), rs.getString("detail"),
						rs.getString("area"), rs.getString("price"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		return p;
	}
	
	public ArrayList<Plan> searchPlan(String keyword) {
		ArrayList<Plan> list = new ArrayList<>();
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String SQL = "SELECT * FROM plan WHERE pname like ?";
			// SQLの実行
			stmt = con.prepareStatement(SQL);
			stmt.setString(1, "%"+keyword+"%");
			// SELECTを実行し、結果表を取得
			rs = stmt.executeQuery();
			while (rs.next()) {
				Plan p = new Plan(rs.getString("pname"), rs.getInt("pid"), rs.getInt("tid"), rs.getInt("hid"),
						rs.getInt("cid"), rs.getString("picture"), rs.getString("pdate"), rs.getString("detail"),
						rs.getString("area"), rs.getString("price"));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		return list;
	}
	
	public ArrayList<Plan> searchPlan(int cid) {
		ArrayList<Plan> list = new ArrayList<>();
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String SQL = "SELECT * FROM plan WHERE cid = ?";
			// SQLの実行
			stmt = con.prepareStatement(SQL);
			stmt.setInt(1, cid);
			// SELECTを実行し、結果表を取得
			rs = stmt.executeQuery();
			while (rs.next()) {
				Plan p = new Plan(rs.getString("pname"), rs.getInt("pid"), rs.getInt("tid"), rs.getInt("hid"),
						rs.getInt("cid"), rs.getString("picture"), rs.getString("pdate"), rs.getString("detail"),
						rs.getString("area"), rs.getString("price"));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		return list;
	}
}
