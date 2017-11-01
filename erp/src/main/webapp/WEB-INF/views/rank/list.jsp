<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){

	var aul = new AjaxUtilList("rank/list","rankTable","rankName","", "");
	aul.send();
	

})

</script>

<title>직급 리스트</title>
</head>
<body>
<div class="container">
	<h1 class="topName">랭크 리스트</h1>
	<table class="tableList" id="rankTable">
		<!-- 버튼 --> 
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal"> 신규</button>
		
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="checkbox"></th>
				<th class="listTh" data-field="rankCode">직급 코드</th>
				<th class="listTh" data-field="rankName">직급 이름</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<input type="hidden" id="rankName">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">직급</h4>
				</div>
				
				<div class="modal-body">
					<table id="table" data-height="460" class="table table-bordered table-hover">
						<tr>
							<td class="listTh">직급 코드</td>
							<td><input type="text" id="rankCode" class="postcodify_extra_info"/></td>
						</tr>
						<tr>
							<td class="listTh">직급 이름</td>
							<td><input type="text" id="rankName" class="postcodify_extra_info"/></td>
						</tr>
					</table>
				</div>
				
				<div class="modal-footer"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>  
					<button type="button" class="btn btn-primary">저장</button> 
				</div>


			</div>
		</div>
	</div>
<style>

.modal-backdrop {
	z-index: -1;
}
/*모달 팝업창 클릭 시 안닫히게 하는 것.*/
</style>
	
</div>
</body>
</html>