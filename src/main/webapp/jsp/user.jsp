<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー情報</title>
</head>
<body>
ここはユーザーページです。<br>


登録内容の確認。
<p>アドレス：<c:out value="${account.address }"></c:out></p>
<p>パスワード：<c:out value="${account.password }"></c:out></p>
<p><a href="/household/Logout"><button type="button" >ログアウト</button></a></p>

<a href="jsp/admin.jsp">管理者ページへ</a>

<a href="jsp/login.jsp">ログインページへ</a>



</body>
</html>