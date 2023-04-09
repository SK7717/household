<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>入出金入力</title>
</head>
<body>
    <h1>入出金入力</h1>
<form action="/household/DepositRegister"" method="post">
    <input type="hidden" name="user_id" value="<%= session.getAttribute("user_id") %>">
    <label for="dep_value">登録金額:</label>
    <input type="text" id="dep_value" name="dep_value">
    <br>
    <label for="budget_id">分類ID:</label>
    <input type="text" id="budget_id" name="budget_id">
    <br>
    <label for="assets_id">登録口座番号:</label>
    <input type="text" id="assets_id" name="assets_id">
    <br>
    <label for="date">登録時間:</label>
    <input type="date" id="date" name="date">
    <br>
    <label for="content">内容:</label>
    <input type="text" id="content" name="content">
    <br>
    <input type="submit" value="登録">
</form>
<br>
<h2>登録履歴</h2>

<%@ page import="java.sql.*" %>
<%
    // JDBCドライバの登録
    Class.forName("com.mysql.jdbc.Driver");

    // MySQLに接続
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/household?", "root", "");

    // SQLの作成
    String sql = "SELECT dep_id, dep_value, budget_id, assets_id, date, content FROM deposit";

    // SQLの実行
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(sql);

    // 結果の表示
    while(rs.next()){
        out.print("登録ID : " + rs.getInt("dep_id") + "<br>");
        out.print("金額 : " + rs.getInt("dep_value") + "<br>");
        out.print("分類ID : " + rs.getString("budget_id") + "<br>");
        out.print("登録口座 : " + rs.getString("assets_id") + "<br>");
        out.print("登録日付 : " + rs.getDate("date") + "<br>");
        out.print("内容 : " + rs.getString("content") + "<br><br>");
    }

    // MySQLとの接続を切断
    rs.close();
    stmt.close();
    con.close();
%>

</body>
</html>