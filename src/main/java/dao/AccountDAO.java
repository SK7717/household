package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.AccountBeans;

public class AccountDAO {
	// データベース接続に使用する情報
	final String jdbcId = "root";
	final String jdbcPass = "";
	final String jdbcUrl = "jdbc:mysql://localhost:3306/household?";


// ログインアカウントを探す
public AccountBeans findAccount(AccountBeans ab) {
	
	// 戻り値の用意
	AccountBeans returnAb = new AccountBeans();
	
	// データベースへ接続
	try (Connection con = DriverManager.getConnection(jdbcUrl, jdbcId, jdbcPass)) {
		
		String sql = "select user_id,address,password from user_data where address = ? and password = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, ab.getAddress());
		ps.setString(2, ab.getPassword());
		
		ResultSet rs = ps.executeQuery();
				
		if (rs.next()) {
			// 見つかったアカウント情報を戻り値にセット
			returnAb.setUserId(rs.getInt("user_id"));
			returnAb.setAddress(rs.getString("address"));
			returnAb.setPassword(rs.getString("password"));
		} else {
			// アカウントがなければnullを返す
			return null;
		}
	}		catch (SQLException e) {
		e.printStackTrace();
		return null;
	}
	return returnAb;
}
}