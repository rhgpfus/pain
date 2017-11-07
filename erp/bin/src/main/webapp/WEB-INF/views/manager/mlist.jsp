<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){

	var aul = new AjaxUtilList("manager/mlist","mTable","managerName","manager/insert", "/manager/excel");
	aul.send();
})

</script>

<title>사원리스트</title>
</head>
<body>
<div class="container">
	<h1 class="topName">사원리스트</h1>
	<table class="tableList" id="mTable"> 
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="managerNo">번호</th>
				<th class="listTh" data-field="managerCode">사원(담당)코드</th>
				<th class="listTh" data-field="managerName">사원(담당)명</th>
				<th class="listTh" data-field="codeMenu">직무처구분</th>
				<th class="listTh" data-field="etc">기타</th>
			</tr>
		</thead>
		<tbody/>
	<input type="hidden" id="managerName">
	</table>
</div>
</body>
</html>



