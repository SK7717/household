<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
</head>
<body>
<form action="/login/AccountSearch" method="post">
アドレス：<input type="text" name="address" required><br>
パスワード：<input type="password" name="password" required><br>
<input type="submit" value="ログイン"><br>
</form>
<p>
アカウント登録がお済みでない方はこちらへ↓<br>
<a href="register.jsp"><button>新規登録</button></a>
</p>
</body>
</html>