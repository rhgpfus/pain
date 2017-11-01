<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){

	var aul = new AjaxUtilList("erp/hrmList/main","hrmTable","humanKorName","erp/hrmList/new", "erp/hrmList/excel");
	aul.send();
})

</script>

<title>기본 리스트 디자인</title>
</head>
<body>
<div class="container">
	<h1>인사 목록 리스트</h1>
	<table class="tableList" id="hrmTable"> 
		<thead>
			<tr>
				<th data-field="checkbox">체크 박스</th>
				<th data-field="humanNo">사원 번호</th>
				<th data-field="humanKorName">이름</th>
				<th data-field="humanResidentNumber">주민등록번호</th>
				<th data-field="departmentCodeNo">부서</th>
				<th data-field="rankNo">직급</th>
				<th data-field="humanEnteringDate">입사 일자</th>
				<th data-field="humanAccountNumber">계좌번호</th>
				<th data-field="humanEmail">e-mail 주소</th>
				<th data-field="button">인쇄</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<input type="hidden" id="humanKorName">
</div>
</body>
</html>