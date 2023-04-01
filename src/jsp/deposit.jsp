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
    <form method="post" action="result.jsp">
        <label for="category">分類:</label>
        <select name="category" id="category">
            <option value="食費">食費</option>
            <option value="交際費">交際費</option>
            <option value="交通費">交通費</option>
            <option value="家賃">家賃</option>
            <option value="光熱費">光熱費</option>
        </select>
        <br>
        <label for="date">日時:</label>
        <input type="date" name="date" id="date" required>
        <br>
        <label for="amount">金額:</label>
        <input type="number" name="amount" id="amount" min="0" required>
        <br>
        <label for="account">口座:</label>
        <input type="text" name="account" id="account" required>
        <br>
        <label for="content">内容:</label>
        <input type="text" name="content" id="content" required>
        <br>
        <input type="submit" value="送信">
    </form>
</body>
</html>