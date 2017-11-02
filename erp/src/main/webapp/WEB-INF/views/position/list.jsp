<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){

	var aul = new AjaxUtilList("position/list","positionTable","positionNo","", "");
	aul.send();
	
})
function insertPosition(){
	var params = "positionCode,positionName";
	var aui = new AjaxUtil("position/insert",params);
	aui.send();
}
</script>

<title>직책 리스트</title>
</head>
<body>
<div class="container">
	<h1 class="topName">직책 목록 리스트</h1>
	<!-- 버튼 --> 
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal"> 신규</button>
		
	<table class="tableList" id="positionTable">
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="positionNo">직책 번호</th>
				<th class="listTh" data-field="positionCode">직책 코드</th>
				<th class="listTh" data-field="positionName">직책 이름</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<input type="hidden" id="positionNo">
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">직책</h4>
				</div>
				
				<div class="modal-body">
					<table id="table" data-height="460" class="table table-bordered table-hover">
						<tr>
							<td class="listTh">직책 코드</td>
							<td><input type="text" id="positionCode" class="postcodify_extra_info" data-req="직책코드를 입력해주세요" placeholder="직책코드를 입력하세요"/></td>
						</tr>
						<tr>
							<td class="listTh">직책 이름</td>
							<td><input type="text" id="positionName" class="postcodify_extra_info" data-req="직책이름을 입력해주세요" placeholder="직책이름을 입력하세요"/></td>
						</tr>
					</table>
				</div>
				
				<div class="modal-footer"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button> 
					<button type="button" class="btn btn-primary" onclick="insertPosition()">저장</button> 
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