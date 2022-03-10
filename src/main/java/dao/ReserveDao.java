package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Reserve;
import utils.DBUtil;

public class ReserveDao {
	Connection con = null;
	ResultSet rs = null;
	PreparedStatement stmt = null;

	public int save(Reserve r) {
		int res = 0;
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String sql = "INSERT INTO reserve (rdate,rbegin,uid,pid,payment,pnum,pdate,totalprice) VALUES(?,?,?,?,?,?,?,?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, r.getRdate());
			stmt.setString(2, r.getRbegin());
			stmt.setInt(3, r.getUid());
			stmt.setInt(4, r.getPid());
			stmt.setString(5, r.getPayment());
			stmt.setString(6, r.getPnum());
			stmt.setString(7, r.getPdate());
			stmt.setString(8, r.getTotalprice());
			res = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		return res;
	}

	public ArrayList<Reserve> searchReserve() {
		ArrayList<Reserve> list = new ArrayList<>();
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String sql = "SELECT * FROM RESERVE WHERE PAYMENT = ?";
			// SQLの実行
			stmt = con.prepareStatement(sql);
			stmt.setString(1, "支払待ち");
			rs = stmt.executeQuery();
			// 結果表示
			while (rs.next()) {
				Reserve r = new Reserve();
				r = new Reserve(rs.getInt("rid"), rs.getString("rdate"), rs.getString("rdate"), rs.getInt("UID"),
						rs.getInt("PID"), rs.getString("PAYMENT"), rs.getString("PNUM"), rs.getString("PDATE"),
						rs.getString("TOTALPRICE"));
				list.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		return list;
	}

//予約ID検索
	public Reserve searchReserve(int rid) {
		Reserve r = null;
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String sql = "SELECT RID,RDATE,RBEGIN,UID,PID,PAYMENT,PNUM,PDATE,TOTALPRICE FROM RESERVE WHERE RID = ?";
			// SQLの実行
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, rid);
			rs = stmt.executeQuery();
			// 結果表示
			if (rs.next()) {
				r = new Reserve(rid, rs.getString("rdate"), rs.getString("rdate"), rs.getInt("UID"), rs.getInt("PID"),
						rs.getString("PAYMENT"), rs.getString("PNUM"), rs.getString("PDATE"),
						rs.getString("TOTALPRICE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		return r;
	}

	public int updateReserve(Reserve re) {
		int res = 0;
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String sql = "UPDATE RESERVE SET RDATE = ?,RBEGIN = ?,PID = ?,PAYMENT = ?,PNUM = ?,PDATE = ? ,TOTALPRICE = ? WHERE RID = ?";
			// SQLの実行
			stmt = con.prepareStatement(sql);
			stmt.setString(1, re.getRdate());
			stmt.setString(2, re.getRbegin());
			stmt.setInt(3, re.getPid());
			stmt.setString(4, re.getPayment());
			stmt.setString(5, re.getPnum());
			stmt.setString(6, re.getPdate());
			stmt.setString(7, re.getTotalprice());
			stmt.setInt(8, re.getRid());
			res = stmt.executeUpdate();
			// 結果表示
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(con, stmt, rs);
		}
		return res;
	}
}
