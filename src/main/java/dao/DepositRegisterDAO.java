package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.DepositBeans;

public class DepositRegisterDAO {
	// データベース接続に使用する情報
	final String jdbcId = "root";
	final String jdbcPass = "";
	final String jdbcUrl = "jdbc:mysql://localhost:3306/household?";

	public DepositRegisterDAO(DepositBeans db) {
		
		//データベースへ接続
		try (Connection con = DriverManager.getConnection(jdbcUrl, jdbcId, jdbcPass)) {
			
			String sql = "insert into deposit (user_id, dep_value, budget_id, assets_id, date, content) VALUES (?, ?, ?, ?, NOW(), ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setInt(1, db.getUserId());
			ps.setInt(2, db.getDep_value());
			ps.setString(3, db.getBudget_id());
			ps.setString(4, db.getAssets_id());
			ps.setString(5, db.getContent());
			
			int r = ps.executeUpdate();
			
			if(r != 0) {
				System.out.println("新規登録成功！");
			} else {
				System.out.println("新規登録失敗");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}