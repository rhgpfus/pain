<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/topmenu.jsp"%>
<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>


<script>
$(document).ready(function(){
	
	var aul = new AjaxUtilList("bank/list","bankTable","bankNo",null, null, "");
	aul.send();
	$('#myModal').on('hidden.bs.modal', function () {
		$("#changeButton").html("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"bank/update"+"\", \""+"bank"+"\")'>수정</button>");
		$("#changeButton").append("<button type='button' class='btn btn-primary' onclick='iudAjax(\""+"bank/delete"+"\", \""+"bank"+"\")'>삭제</button>");
	});
})


</script>

<title>은행 리스트</title>
</head>
<body>
<div class="container">
	<h1 class="topName">은행 목록 리스트</h1>
	<!-- 버튼 --> 
		<button type="button" class="btn btn-primary" onclick="modalOpen2('bank/insert', 'bank')"> 신규</button>
	<table class="tableList" id="bankTable">
	
		<thead>
			<tr class="listTr">	
				<th  class="listTh" data-field="bankNo">은행 번호</th>
				<th  class="listTh" data-field="bankCode">은행 코드</th>
				<th  class="listTh" data-field="bankName">은행 이름</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
<!-- 	<input type="hidden" id="bankNo"> -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		<div class="modal-dialog">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">은행입력</h4>
				</div>
				
				<div class="modal-body">
					<table data-height="460" class="table table-bordered table-hover">
						<tr>
							<td class="listTh">은행구분번호</td>
							<td><input type="text" id="bankNo" name="bankNo" class="postcodify_extra_info" disabled /></td>
						</tr>
						<tr>
							<td class="listTh">은행 코드</td>
							<td><input type="text"  id="bankCode" name="bankCode" class="postcodify_extra_info" data-req="은행코드를 입력해주세요" placeholder="은행코드를 입력하세요" /></td>
						</tr>
						<tr>
							<td class="listTh">은행 이름</td>
							<td><input type="text"  id="bankName" name="bankName"  class="postcodify_extra_info" data-req="은행이름을 입력해주세요" placeholder="은행이름을 입력하세요" /></td>
						</tr>
					</table>
<!-- 					<input type="hidden" id="bankCode"> -->
				</div>
				
				<div class="modal-footer"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button> 
					<div id="changeButton" style="display: inline"> 
					<button type="button" class="btn btn-primary" onclick="iudAjax('bank/update', 'bank')">수정</button>
					<button type="button" class="btn btn-primary" onclick="iudAjax('bank/delete', 'bank')">삭제</button>
					</div>
					
				</div>


			</div>
		</div>
	</div>
</div>
</body>
</html>

<style>

.modal-backdrop {
	z-index: -1;
}
/*모달 팝업창 클릭 시 안닫히게 하는 것.*/
</style>
	

