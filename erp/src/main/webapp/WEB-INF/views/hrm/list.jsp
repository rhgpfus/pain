<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){

	var aul = new AjaxUtilList("hrm/list","hrmTable","humanKorName","hrm/insert", "/hrm/excel" , "hrm/update");
	aul.send();
	
})


</script>

<title>인사 리스트</title>
</head>
<body>
<div class="container">
	<h1 class="topName">인사 목록 리스트</h1>
	<table class="tableList" id="hrmTable">
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="checkbox"></th>
				<th class="listTh" data-field="humanNo">사원 번호</th>
				<th class="listTh" data-field="humanKorName">이름</th>
				<th class="listTh" data-field="humanResidentNumber">주민등록번호</th>
				<th class="listTh" data-field="departmentName">부서</th>
				<th class="listTh" data-field="rankName">직급</th>
				<th class="listTh" data-field="humanEnteringDate">입사 일자</th>
				<th class="listTh" data-field="humanAccountNumber">계좌번호</th>
				<th class="listTh" data-field="humanEmail">e-mail 주소</th>
				<th class="listTh" data-field="button">인쇄</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
<!-- 	<input type="hidden" id="humanKorName"> -->
	<p align="center"><input type="text" id="humanKorName" data-url="hrm/list" data-name="hrmTable" onkeypress="if(event.keyCode==13) {searchName(humanKorName.getAttribute('data-url'), humanKorName.getAttribute('data-name'), humanKorName.id); return false;}">
	<button onclick="searchName('hrm/list', 'hrmTable', 'humanKorName')">검색</button></p>
</div>
</body>
</html>