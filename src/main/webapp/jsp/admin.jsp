<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者ページ</title>
</head>
<body>
ここは管理者用のページです。<br>

登録内容の確認。
<p>アドレス：<c:out value="${account.address }"></c:out></p>
<p>パスワード：<c:out value="${account.password }"></c:out></p>
<p><a href="/household/Logout"><button type="button" >ログアウト</button></a></p>
<a href="user.jsp"><button type="button" >ユーザーページへ</button></a>


<a href="user.jsp">ユーザーページへ</a>

<a href="login.jsp">ログインページへ</a>


</body>
</html>