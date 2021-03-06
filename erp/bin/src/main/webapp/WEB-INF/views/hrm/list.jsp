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
				<th class="listTh" data-field="humanno">사원 번호</th>
				<th class="listTh" data-field="humankorname">이름</th>
				<th class="listTh" data-field="humanresidentnumber">주민등록번호</th>
				<th class="listTh" data-field="departmentname">부서</th>
				<th class="listTh" data-field="rankname">직급</th>
				<th class="listTh" data-field="humanenteringdate">입사 일자</th>
				<th class="listTh" data-field="humanaccountnumber">계좌번호</th>
				<th class="listTh" data-field="humanemail">e-mail 주소</th>
				<th class="listTh" data-field="button">인쇄</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<input type="hidden" id="humanKorName">
</div>
</body>
</html>