<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){	
	var auh = new AjaxUtilHeaderItemList("purchase/pmuview","pmuTableHeader,pmuTable","purchaseNo");
	auh.send();
});

$(document).ready(function(){
	
})



</script>

<title>구매 수정</title>
</head>
<body>
<div id="testDiv"></div>
<div class="container">
	<h1>구매 수정</h1>
    <table class="tableHeaderUpdateList" id="pmuTableHeader"> 
		<thead  data-th-infos="orderDate,clientNo,managerNo,warehouseNo"
			  data-th-views="구매일자,거래처,담당자,입고창고"
			  data-th-count="2">
	      </thead>
     </table>
     <input type="hidden" id="clientNo">
	<table class="tableUpdateList" id="pmuTable"> 
		<thead>
			<tr>
				<th class="listTh" data-field="checkbox"></th>
				<th class="listTh" data-field="purchaseNo">NO</th>
				<th class="listTh" data-field="itemNo">품목번호</th>
				<th class="listTh" data-field="itemName">품목명</th>
				<th class="listTh" data-field="warehouSingCost">단가</th>
				<th class="listTh" data-field="quantity">수량</th>
				<th class="listTh" data-field="amount">총액</th>
				<th class="listTh" data-field="deliveryDate">입고일자</th>
				<th class="listTh" data-field="createUser">입력자</th>
				<th class="listTh" data-field="createDate">입력일자</th>
				<th class="listTh" data-field="modifiedUser">수정자</th>
				<th class="listTh" data-field="modifiedData">수정일자</th>
				
			</tr>
		</thead>
		<tbody/>
	</table>
	<input type="hidden" id="purchaseNo" value="${purchaseNo}"/>
</div>
</body>
</html>



