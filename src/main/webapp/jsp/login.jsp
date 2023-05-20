<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
	<title>ログイン画面</title>
</head>
<body>
	<header>
		<h1>家計簿アプリ</h1>
	</header>
	<div id="forms">
		<div id="login">
			<form action="/household/AccountSearch" method="post">
			アドレス　  <input type="text" name="address" value="test" required><br>
			パスワード  <input type="password" name="password" value="testtest" required><br>
			<input type="submit" value="ログイン" class="button"><br>
			</form>
		</div>
		<div id="accRegi">
			<p>アカウント登録がお済みでない方はこちらへ↓<br>
			<a href="register.jsp"><button class="button">新規登録</button></a>
			</p>
		</div>
	</div>
</body>
</html>