<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
<link rel="stylesheet" href="<c:url value="/resources/css/tableList.css?version=${pVar}"/>"/>

<script>
$(document).ready(function(){
	var aul = new AjaxUtilList("client/clist","cmTable","clientNo","client/insert","/client/excel","client/update");
	aul.send();
})
</script>

<title>협력회사목록</title>
</head>
<body>
<div class="container">
	<h1 class="topName">협력회사목록</h1>
	<table class="tableList" id="cmTable"> 
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="clientNo">회사번호</th>
				<th class="listTh" data-field="clientCode">거래처</th>
				<th class="listTh" data-field="homePage">거래처홈페이지</th>
				<th class="listTh" data-field="bank">거래은행</th>
				<th class="listTh" data-field="clientName">거래처명</th>
				<th class="listTh" data-field="representAtives">대표자명</th>
				<th class="listTh" data-field="sectors">종목</th>
				<th class="listTh" data-field="phoneNumber">회사전화번호</th>
				<th class="listTh" data-field="cellphoneNumber">담당자HP</th>
				<th class="listTh" data-field="address">주소</th>
				<th class="listTh" data-field="managerNo">담당자</th>
				<th class="listTh" data-field="email">email</th>
				<th class="listTh" data-field="createUser">입력자</th>
				<th class="listTh" data-field="createDate">입력일자</th>
				<th class="listTh" data-field="modifiedUser">수정자</th>
				<th class="listTh" data-field="modifiedData">수정일자</th>
			</tr>
		</thead>
		<tbody/>
	<input type="hidden" id="clientNo">
	</table>
</div>
</body>
</html>
