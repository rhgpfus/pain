<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){

	var aul = new AjaxUtilList("rank/list","rankTable","rankNo","", "", "");
	aul.send();
	$('#myModal').on('hidden.bs.modal', function () {
		$("#changeButton").html("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"rank/update"+"\")'>수정</button>");
		$("#changeButton").append("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"rank/delete"+"\")'>삭제</button>");
	});

})

</script>

<title>직급 리스트</title>
</head>
<body>
<div class="container">
	<h1 class="topName">랭크 리스트</h1>
		<!-- 버튼 --> 
		<button type="button" class="btn btn-primary" onclick="modalOpen2('rank/insert')"> 신규</button>
	<table class="tableList" id="rankTable">
		
		<thead>
			<tr class="listTr">
				<th class="listTh" data-field="rankNo">직급 코드</th>
				<th class="listTh" data-field="rankCode">직급 코드</th>
				<th class="listTh" data-field="rankName">직급 이름</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
<!-- 	<input type="hidden" id="rankNo"> -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">직급입력</h4>
				</div>
				
				<div class="modal-body">
					<table id="table" data-height="460" class="table table-bordered table-hover">
						<tr>
							<td class="listTh">직급구분번호</td>
							<td><input type="text" id="rankNo" name="iud0" class="postcodify_extra_info" disabled /></td>
						</tr>
						<tr>
							<td class="listTh">직급 코드</td>
							<td><input type="text" id="rankCode" name="iud1" class="postcodify_extra_info" data-req="직급코드를 입력해주세요" placeholder="직급코드를 입력하세요" /></td>
						</tr>
						<tr>
							<td class="listTh">직급 이름</td>
							<td><input type="text" id="rankName" name="iud2" class="postcodify_extra_info" data-req="직급이름을 입력해주세요" placeholder="직급이름을 입력하세요" /></td>
						</tr>
					</table>
				</div>
				
				<div class="modal-footer"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>  
					<div id="changeButton" style="display: inline"> 
					<button type="button" class="btn btn-primary" onclick="iudAjax('rank/update')">수정</button>
					<button type="button" class="btn btn-primary" onclick="iudAjax('rank/delete')">삭제</button>
					</div>
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