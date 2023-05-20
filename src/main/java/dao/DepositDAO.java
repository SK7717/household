package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.AccountBeans;
import model.DepositBeans;

public class DepositDAO {
	// データベース接続に使用する情報
	final String jdbcId = "root";
	final String jdbcPass = "";
	final String jdbcUrl = "jdbc:mysql://localhost:3306/household?";


// ログインアカウントを探す
public List<DepositBeans> findDeposit(AccountBeans ab) {

	int total=0;
	List<DepositBeans> list = new ArrayList<>();
	
	// 戻り値の用意
//	DepositBeans returnAb = new DepositBeans();
	
	// データベースへ接続
	try (Connection con = DriverManager.getConnection(jdbcUrl, jdbcId, jdbcPass)) {
	
		
    // SQLの作成
    String sql = "SELECT dep_id, dep_value, budget_id, assets_id, date, content FROM deposit";

    PreparedStatement ps = con.prepareStatement(sql);
//	ps.setString(1, ab.getUserId());
    
    // SQLの実行
    ResultSet rs = ps.executeQuery(sql);

    // 結果の表示
    while(rs.next()){
		// register.jspから受け取った値をビーンズにセット
		DepositBeans db = new DepositBeans();
		db.setDep_id(rs.getInt("dep_id"));
		db.setDep_value(rs.getInt("dep_value"));
		db.setBudget_id(rs.getString("budget_id"));
		db.setAssets_id(rs.getString("assets_id"));
		db.setDate(rs.getString("date"));
		db.setContent(rs.getString("content"));

		total += rs.getInt("dep_value");
		db.setDep_sum(total);
		list.add(db);
    }



	}		catch (SQLException e) {
		e.printStackTrace();
		return null;
	}
	return list;
}
}