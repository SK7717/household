<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
	<title>新規登録</title>
</head>
<body>
	<header>
		<h1>家計簿アプリ</h1>
	</header>
	<div id="forms">
	<form action="/household/AccountRegister" method="post">
<p>すべて入力してください</p>
<p>
<!-- <input type="radio" name="role" value="1">管理者で登録する
<input type="radio" name="role" value="2" checked>ユーザーで登録する -->
</p>
アドレス　　<input type="text" name="address" required><br>
パスワード　<input type="password" name="password" required><br>
<input type="submit" value="登録" class="button"><br>
</form>
</div>
</body>
</html>