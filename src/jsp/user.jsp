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
<c:choose>
<c:when test="${account.role == 2 }">
登録内容の確認。
<p>アドレス：<c:out value="${account.address }"></c:out></p>
<p>パスワード：<c:out value="${account.password }"></c:out></p>
<p><a href="/login/Logout"><button type="button" >ログアウト</button></a></p>
<a href="admin.jsp"><button type="button" >管理者ページへ</button></a>
</c:when>
<c:when test="${account.role == 1 }">
<a href="admin.jsp">管理者ページへ</a>
</c:when>
<c:otherwise>
<a href="login.jsp">ログインページへ</a>
</c:otherwise>
</c:choose>

</body>
</html>