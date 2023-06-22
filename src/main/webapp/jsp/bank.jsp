<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<title>総資産</title>
</head>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.2.0/chart.min.js"
  integrity="sha512-VMsZqo0ar06BMtg0tPsdgRADvl0kDHpTbugCBBrL55KmucH6hP9zWdLIWY//OTfMnzz6xWQRxQqsUFefwHuHyg=="
  crossorigin="anonymous"></script>
<body class="deposit">
<header>
<h1>家計簿アプリ</h1>
</header>
	<div class="wrap">
<main>
    <h2>総資産</h2>
    <p>\9,999,999</p>
<form action="/household/BankRegister" method="post">
    <input type="hidden" name="user_id" value="<%= session.getAttribute("user_id") %>">
    <label for="dep_value">銀行名:</label>
    <input type="text" id="" name="">
    <br>
    <label for="budget_id">口座番号:</label>
    <input type="text" id="" name="">
    <br>
    <label for="assets_id">残高:</label>
    <input type="text" id="" name="">
</form>
</main>
</div>

</body>
</html>

