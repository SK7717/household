<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
	<title>トップ画面</title>
</head>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.2.0/chart.min.js"
  integrity="sha512-VMsZqo0ar06BMtg0tPsdgRADvl0kDHpTbugCBBrL55KmucH6hP9zWdLIWY//OTfMnzz6xWQRxQqsUFefwHuHyg=="
  crossorigin="anonymous"></script>

<body>
	<header>
		<h1>家計簿アプリ</h1>
	</header>
	<div class="wrap">
	<main>
		<div class="top_info">
			<div class="left">
				<div class="container">
					<h2>総資産</h2>
				<div><a href="jsp/bank.jsp"><button class="button">編集</button></a></div>
					<p><span class="total_assets">\9,999,999</span></p>
					<p>xxxxxx銀行 \9,999,999</p>
					<p>現金　　\9,999,999</p>
				</div>
				<div class="container">
					<h2>今月の家計簿</h2>
					<div><a href="jsp/deposit.jsp"><button class="button">家計簿登録</button></a></div>
					<p>収入</p>
					<p>支出 <c:out value="${total}" /></p>
					<p>収支 <c:out value="${total}" /></p>
				</div>
			</div>
			<div class="container">
				<h2>今月の予算</h2>
				<div><a href="jsp/budget.jsp"><button class="button">予算入力</button></a></div>
				<p style="color: red;">入力済</p>
				<p>ダミー：\99,999</p>
				<p>ダミー：\99,999</p>
				<p>ダミー：\99,999</p>
				<p>ダミー：\99,999</p>
				<p>ダミー：\99,999</p>
				<p>ダミー：\99,999</p>
			</div>
		</div>
		<h2>登録履歴</h2>
	    <table border="1">
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
   	<p>合計金額<span id="total"><c:out value="${total}" /></span></p>
	<canvas id="graf" style="height:50%; width:50%;"></canvas>
	</main>	
    </div>
    
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
    

</body>
</html>