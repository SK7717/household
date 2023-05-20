<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<title>ログイン成功</title>
</head>
<header>
<h1>家計簿アプリ</h1>
</header>
<body>
	<div id="forms">
ログインが成功しました!
<p><a href="/household/AccountCheck"><button type="button" name="aaa" class="button" >ユーザー or 管理者ページへ</button></a></p>
	</div>
</body>
</html>