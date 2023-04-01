package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.AccountBeans;

public class DepositRegisterDAO {
	// データベース接続に使用する情報
	final String jdbcId = "root";
	final String jdbcPass = "";
	final String jdbcUrl = "jdbc:mysql://localhost:3306/household?";

	public DepositRegisterDAO(AccountBeans ab) {
	
		//データベースへ接続
		try (Connection con = DriverManager.getConnection(jdbcUrl, jdbcId, jdbcPass)) {
			
			String sql = "insert into user_data (user_id, address, password) values (?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, ab.getCategory());
			ps.setString(2, ab.getDate());
			ps.setString(3, ab.getAmount());
			ps.setString(3, ab.getAccount());
			ps.setString(3, ab.getContent());
			
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