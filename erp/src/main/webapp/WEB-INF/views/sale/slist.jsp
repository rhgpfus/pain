<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){
	var aul = new AjaxUtilList("sale/slist","sTable","itemNo","sale/insert","/sale/excel");
	aul.send();
	$('#myModal').on('hidden.bs.modal', function () {
		$("#changeButton").html("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"sale/update"+"\")'>수정</button>");
		$("#changeButton").append("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"sale/delete"+"\")'>삭제</button>");
	});
})
</script>

<title>판매리스트</title>
</head>
<body>
<div class="container">
	<h1 class="topName">판매리스트</h1>
	<table class="tableList" id="sTable"> 
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="saleNo">번호</th>
				<th class="listTh" data-field="saleDate">판매일자</th>
				<th class="listTh" data-field="clientNo">구매처번호</th>
				<th class="listTh" data-field="itemNo">품목번호</th>
				<th class="listTh" data-field="imcNo">품목&회사</th>
				<th class="listTh" data-field="managerNo">담당장</th>
				<th class="listTh" data-field="warehouseNo">출고창고</th>
				<th class="listTh" data-field="projectNo">프로젝트</th>
				<th class="listTh" data-field="receiptStatus">수령여부</th>
				<th class="listTh" data-field="createUser">입력자</th>
				<th class="listTh" data-field="createDate">입력일자</th>
				<th class="listTh" data-field="modifiedUser">수정자</th>
				<th class="listTh" data-field="modifiedData">수정일자</th>
			</tr>
		</thead>
		<tbody/>
	<input type="hidden" id="itemNo">
	</table>
</div>
</body>
</html>
