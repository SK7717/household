<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
<title>入出金入力</title>
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
    <h2>入出金入力</h2>
<form action="/household/DepositRegister"" method="post">
    <input type="hidden" name="user_id" value="<%= session.getAttribute("user_id") %>">
    <label for="dep_value">登録金額:</label>
    <input type="text" id="dep_value" name="dep_value">
    <br>
    <label for="budget_id">分類ID:</label>
    <input type="text" id="budget_id" name="budget_id">
    <br>
    <label for="assets_id">登録口座番号:</label>
    <input type="text" id="assets_id" name="assets_id">
    <br>
    <label for="date">登録時間:</label>
    <input type="date" id="date" name="date">
    <br>
    <label for="content">内容:</label>
    <input type="text" id="content" name="content">
    <br>
    <input type="submit" value="登録" class="button">
</form>
<br>
<h2>登録履歴</h2>
    <table>
        <tr>
            <th>金額</th>
            <th>分類ID</th>
            <th>登録口座</th>
            <th>登録日付</th>
            <th>内容</th>
        </tr>
	<c:forEach items="${temp}" var="name" varStatus="status">
        <tr>
        	<td><c:out value="${name.dep_value}" /></td>
        	<td><c:out value="${name.budget_id}" /></td>
        	<td><c:out value="${name.assets_id}" /></td>
        	<td><c:out value="${name.date}" /></td>
        	<td><c:out value="${name.content}" /></td>
        </tr>

			<input type="hidden" name="dep_sum" value="<c:out value="${name.dep_sum}" />">
			<input type="hidden" name="labels" value="<c:out value="${name.date}" />">

    </c:forEach>
    </table>

<!-- 	<p>合計金額<span id="total"><c:out value="${total}" /></span></p>
	<canvas id="graf" style="height:50%; width:50%;"></canvas> -->
</main>
</div>

</body>

<script>
var ctx = document.getElementById('graf');
var total = document.getElementsByName('dep_sum');
var labels = document.getElementsByName('labels');

// js内の繰り返し処理
var array = new Array();
var dates = new Array();

total.forEach(function(dep){
	array.push(dep.value);
});

labels.forEach(function(Date){
	dates.push(Date.value);
});

//alert(dates[0]);

var myChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: dates,
    datasets: [{
      label: 'Red',
      data: array,
      backgroundColor: '#f88',
    }, {
      label: 'Green',
      data: [20, 10, 30],
      backgroundColor: '#484',
    }, {
      label: 'Blue',
      data: [30, 20, 15],
      backgroundColor: '#48f',
    }],
  },
});
</script>

</html>

