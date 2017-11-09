<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>

<script> 

$(document).ready(function(){
	var aul = new AjaxUtilList("warehouse/whlist","wmTable","warehouseName","warehouse/insert","/warehouse/excel");
	aul.send();
	
})

var userNo = "<%= user.getHumanKorName()%>";
</script>

<title>창고목록</title>
</head>
<body>
<div class="container">
	<h1 class="topName">창고목록</h1>
	<table class="tableList" id="wmTable"> 
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="warehouseNo">창고번호</th>
				<th class="listTh" data-field="warehouseCode">창고코드</th>
				<th class="listTh" data-field="warehouseName">창고이름</th>
				<th class="listTh" data-field="division">구분</th>
				<th class="listTh" data-field="warehouseAddress">창고주소</th>
				<th class="listTh" data-field="createUser">입력자</th>
				<th class="listTh" data-field="createDate">입력일자</th>
				<th class="listTh" data-field="modifiedUser">수정자</th>
				<th class="listTh" data-field="modifiedData">수정일자</th>

			</tr>
		</thead>
		<tbody/>
	<input type="hidden" id="warehouseName">
	</table>
</div>
</body>
</html>