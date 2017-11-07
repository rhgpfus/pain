<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){

	var aul = new AjaxUtilList("purchase/pmlist","pmTable","clientNo","puchase/insert", "/puchase/excel","purchase/pmupdate");
	aul.send();
})

</script>

<title>구매 리스트</title>
</head>
<body>
<div class="container">
	<h1>구매 리스트</h1>
	<table class="tableList" id="pmTable"> 
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="checkbox"></th>
				<th class="listTh" data-field="purchaseNo">구매번호</th>
				<th class="listTh" data-field="orderDate">발주요청일자</th>
				<th class="listTh" data-field="clientNo">거래처명</th>
				<th class="listTh" data-field="itemNo">품목</th>
				<th class="listTh" data-field="imcNo">금액</th>
				<th class="listTh" data-field="warehouseNo">입고진행창고</th>
				<th class="listTh" data-field="purchaseStatus">종결여부</th>
				<th class="listTh" data-field="button">인쇄</th>
			</tr>
		</thead>
		<tbody/>
	<input type="hidden" id="purchaseNo">
	</table>
</div>
</body>
</html>



