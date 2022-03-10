package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Anqet;
import utils.DBUtil;

public class AnqetDao {

	Connection con = null;
	ResultSet rs = null;
	// PreparedStatement stmt = null;
	Statement st = null;

	public ArrayList<Anqet> searchAnqet() {
		Anqet a = null;
		ArrayList<Anqet> list = new ArrayList<>();
		try {
			con = DBUtil.getConnection();
			// SELECT文を準備
			String SQL = "SELECT * FROM Anqet";
			// SQLの実行
			st = con.createStatement();
			rs = st.executeQuery(SQL);
			// stmt = con.prepareStatement(sql);
			// rs = stmt.executeQuery();
			// 結果表示
			while (rs.next()) {
				a = new Anqet();
				a.setAid(rs.getInt("aid"));
				a.setAdvice(rs.getString("advice"));
				a.setRid(rs.getInt("rid"));
				a.setSatisfy(rs.getString("satisfy"));
				a.setComplain(rs.getString("complain"));
				a.setImpress(rs.getString("impress"));
				list.add(a);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			DBUtil.close(con, st, rs);
		}
		// 見つかったユーザーまたはnullを返す
		return list;
	}
}
