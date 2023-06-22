<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<title>予算入力</title>
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
    <h2>予算入力</h2>
<form action="/household/DepositRegister"" method="post">
    <input type="hidden" name="user_id" value="<%= session.getAttribute("user_id") %>">
    <label for="dep_value">総予算:</label>
    <input type="text" id="" name="">
    <br>
    <label for="budget_id">食費:</label>
    <input type="text" id="budget_id" name="budget_id">
    <br>
    <label for="budget_id">日用品費:</label>
    <input type="text" id="budget_id" name="budget_id">
    <br>
    <label for="budget_id">美容費:</label>
    <input type="text" id="budget_id" name="budget_id">
    <br>
    <label for="budget_id">交際費:</label>
    <input type="text" id="budget_id" name="budget_id">
    <br>
    <label for="budget_id">娯楽費:</label>
    <input type="text" id="budget_id" name="budget_id">
    <br>
    <label for="budget_id">その他:</label>
    <input type="text" id="budget_id" name="budget_id">
    <br>
    <input type="submit" value="登録" class="button">
</form>
</main>
</div>

</body>
</html>

