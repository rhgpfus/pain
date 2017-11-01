<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){

	var aul = new AjaxUtilList("bank/list","bankTable","bankName","hrm/insert", "/hrm/excel");
	aul.send();
	
	var humanNo = $("#bankNo").value;
	alert(bankNo);
})

</script>

<title>은행 리스트</title>
</head>
<body>
<div class="container">
	<h1 class="topName">은행 목록 리스트</h1>
	<table class="tableList" id="bankTable">
		<thead>
			<tr class="listTr">		
				<th  class="listTh" data-field="bankNo">사원 번호</th>
				<th  class="listTh" data-field="bankCode">은행 코드</th>
				<th  class="listTh" data-field="bankName">은행 이름</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<input type="hidden" id="bankName">
</div>
</body>
</html>