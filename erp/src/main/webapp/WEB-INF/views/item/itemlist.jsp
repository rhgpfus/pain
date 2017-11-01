<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){

	var aul = new AjaxUtilList("item/itemlist","itemTable","itemName","item/insert", "/item/excel");
	aul.send();
})

</script>

<title>품목리스트</title>
</head>
<body>
<div class="container">
	<h1 class = "topName">품목리스트</h1>
	<table class="tableList" id="itemTable"> 
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="itemNo">번호</th>
				<th class="listTh" data-field="img">이미지</th>
				<th class="listTh" data-field="itemCode">품목코드</th>
				<th class="listTh" data-field="itemName">품목명</th>
				<th class="listTh" data-field="warehousingCost">입고단가</th>
				<th class="listTh" data-field="unstoringCost">출고단가</th>
				<th class="listTh" data-field="itemDivision">품목구분</th>
				<th class="listTh" data-field="createUser">입력자</th>
				<th class="listTh" data-field="createDate">입력일자</th>
				<th class="listTh" data-field="modifiedUser">수정자</th>
				<th class="listTh" data-field="modifiedData">수정일자</th>
			</tr>
		</thead>
		<tbody/>
	<input type="hidden" id="itemName">
	</table>
</div>
</body>
</html>



